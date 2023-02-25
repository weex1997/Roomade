//
//  SwiftUIView.swift
//  Roomade
//
//  Created by Wedad Almehmadi on 09/02/2023.
//

import SwiftUI
import CryptoKit
import FirebaseAuth
import AuthenticationServices
import FirebaseFirestore

struct LogIn: View {
    
    @State var currentNonce:String?
    
    //Hashing function using CryptoKit
    func sha256(_ input: String) -> String {
        let inputData = Data(input.utf8)
        let hashedData = SHA256.hash(data: inputData)
        let hashString = hashedData.compactMap {
            return String(format: "%02x", $0)
        }.joined()
        
        return hashString
    }
    
    // from https://firebase.google.com/docs/auth/ios/apple
    private func randomNonceString(length: Int = 32) -> String {
        precondition(length > 0)
        let charset: Array<Character> =
        Array("0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._")
        var result = ""
        var remainingLength = length
        
        while remainingLength > 0 {
            let randoms: [UInt8] = (0 ..< 16).map { _ in
                var random: UInt8 = 0
                let errorCode = SecRandomCopyBytes(kSecRandomDefault, 1, &random)
                if errorCode != errSecSuccess {
                    fatalError("Unable to generate nonce. SecRandomCopyBytes failed with OSStatus \(errorCode)")
                }
                return random
            }
            
            randoms.forEach { random in
                if remainingLength == 0 {
                    return
                }
                
                if random < charset.count {
                    result.append(charset[Int(random)])
                    remainingLength -= 1
                }
            }
        }
        
        return result
    }
    
    @StateObject var phoneViewModel = PhoneViewModel()
    
    @State var PhoneNumber = ""
    @State var isActive = false
    @State var SaveData = false
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: SingUP().navigationBarBackButtonHidden(true), isActive: $isActive){}
                NavigationLink(destination: HomeCard().navigationBarBackButtonHidden(true), isActive: $SaveData){}
                //                HStack(){
                //                    Text("Phone Number")
                //                        .foregroundColor(Color("DarkGaryColor"))
                //                        .frame(maxWidth: .infinity, alignment: .leading)
                //                        .font(.system(size: 17))
                //                }
                //                .padding(.bottom,30)
                //                .padding(.leading,16)
                //                HStack{
                //                    Text("🇸🇦")
                //                        .font(.system(size: 27))
                //                        .padding(.leading, 20.0)
                //                    Divider()
                //                        .frame(width:1.5)
                //                        .overlay(Color("DividerColor"))
                //                        .padding(.horizontal,10)
                //                        .padding(.vertical,12)
                //                    TextField("5xxxxxxxx", text: $PhoneNumber)
                //                        .font(.system(size: 16))
                //                }
                //                .frame(width: 358,height: 63)
                //                .background(Color("GrayColor"))
                //                .cornerRadius(6)
                //                .padding(.bottom,55)
                //                HStack{
                //                    Button("Login") {
                //                        phoneViewModel.createUserWithPhoneNumber(phoneNumber: PhoneNumber) { isSuccess in
                //                            print("DEBUG: phone \(isSuccess)")
                //
                //                            if (isSuccess == true)
                //                            {
                //                                SaveData = true
                //                            }
                //                        }
                //                    }
                //                    .foregroundColor(Color.white)
                //                    .font(.system(size: 18,weight: .semibold))
                //                    .frame(width: 285,height: 54)
                //                    .background(Color("BlueColor"))
                //                    .cornerRadius(10)
                //                }
                //                HStack{
                //                    ZStack{
                //                        Divider()
                //                            .frame(width:150, height: 2)
                //                            .overlay(Color("DividerColor"))
                //                    }
                //                    Text("Or")
                //                        .font(.system(size: 16,weight: .medium))
                //                        .padding(.horizontal,4)
                //                    ZStack{
                //                        Divider()
                //                            .frame(width:150, height: 2)
                //                            .overlay(Color("DividerColor"))
                //                    }
                //                }
                //                .padding(.top,46)
                //                .padding(.bottom,54)
                //                HStack{
                //                    Image("Google")
                //                    Button("Continue with Google") {
                //                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                //                    }
                //                    .foregroundColor(Color("BlackColor"))
                //                    .font(.system(size: 18,weight: .regular))
                //                }
                //                .frame(width: 285,height: 54)
                //                .overlay(
                //                    RoundedRectangle(cornerRadius: 10)
                //                        .stroke(Color("LightBlueColor"), lineWidth: 1)
                //                )
                //                .padding(.bottom,20)
                HStack{
                    SignInWithAppleButton(
                        onRequest: { request in
                            let nonce = randomNonceString()
                            currentNonce = nonce
                            request.requestedScopes = [.fullName, .email]
                            request.nonce = sha256(nonce)
                        },
                        onCompletion: { result in
                            switch result {
                            case .success(let authResults):
                                switch authResults.credential {
                                case let appleIDCredential as ASAuthorizationAppleIDCredential:
                                    
                                    guard let nonce = currentNonce else {
                                        fatalError("Invalid state: A login callback was received, but no login request was sent.")
                                    }
                                    guard let appleIDToken = appleIDCredential.identityToken else {
                                        fatalError("Invalid state: A login callback was received, but no login request was sent.")
                                    }
                                    guard let idTokenString = String(data: appleIDToken, encoding: .utf8) else {
                                        print("Unable to serialize token string from data: \(appleIDToken.debugDescription)")
                                        return
                                    }
                                    
                                    let credential = OAuthProvider.credential(withProviderID: "apple.com",idToken: idTokenString,rawNonce: nonce)
                                    Auth.auth().signIn(with: credential) { (authResult, error) in
                                        if (error != nil) {
                                            // Error. If error.code == .MissingOrInvalidNonce, make sure
                                            // you're sending the SHA256-hashed nonce as a hex string with
                                            // your request to Apple.
                                            print(error?.localizedDescription as Any)
                                            return
                                        }
                                        print("signed in")
                                        
                                      
                                        

                                        guard let user = authResult?.user else { return }
                                        let email = user.email ?? ""
                                        //let displayName = user.displayName ?? ""
                                        guard let uid = Auth.auth().currentUser?.uid else { return }
                                        
                                        let userData = [
                                            "id": uid,
                                            "email": email,
                                        ] as [String : Any]
                                        
                                        Firestore.firestore().collection("users").document(uid).setData(userData, merge: true)
                                        
                                        
                                        
                                        UserDefaults.standard.set(uid, forKey: "uid")
                                        UserDefaults.standard.set(email, forKey: "email")
                                        print(uid)
                                        fetchUser()

                                    }
                                    
                                    print("\(String(describing: Auth.auth().currentUser?.uid))")
                                default:
                                    break
                                    
                                }
                            default:
                                break
                            }
                        }
                    ).frame(width: 280, height: 45, alignment: .center)
                    
                }
                //                HStack{
                //                    Button {
                //
                //                        isActive = true
                //
                //                    }label: {
                //                        Text("Sing up")
                //                            .underline()
                
                //                            .foregroundColor(Color("PinkColor"))
                //                            .font(.system(size: 20,weight: .regular))
                //                    }
                //
                //                }
                .navigationBarTitle(Text("SING UP"))
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            }
            
            
        }
    }
    
    func signOut() {
        do{
            try Auth.auth().signOut();
        } catch let logoutError {
            print(logoutError)
        }
        
        let user1 = Auth.auth().currentUser;
        
        if ((user1) != nil) {
            // User is signed in.
            print("User is signed in.")
        } else {
            // No user is signed in.
            print("No user is signed in.")
            let domain = Bundle.main.bundleIdentifier!
            UserDefaults.standard.removePersistentDomain(forName: domain)
            UserDefaults.standard.synchronize()
            print(Array(UserDefaults.standard.dictionaryRepresentation().keys).count)
        }
        
    }
    
    func fetchUser() {
        let userUID = Auth.auth().currentUser?.uid
        
        Firestore.firestore().collection("users").document(userUID!).getDocument { snapshot, error in
            if error != nil {
                // ERROR
            }
            else {
                print("get data")
                let name = snapshot?.get("name")
                let phoneNumber = snapshot?.get("phoneNumber")
                let Birthdate = snapshot?.get("Birthdate")
                let Gender = snapshot?.get("Gender")
                
                if (phoneNumber == nil){
                    isActive = true

                }
                else{
                    UserDefaults.standard.set(phoneNumber, forKey: "phoneNumber")
                    UserDefaults.standard.set(name, forKey: "name")
                    UserDefaults.standard.set(Birthdate, forKey: "Birthdate")
                    UserDefaults.standard.set(Gender, forKey: "Gender")
                    
                    SaveData = true
                    
                }
               
            }
        }
    }
    
    
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
