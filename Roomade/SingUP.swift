//
//  SingUP.swift
//  Roomade
//
//  Created by Wedad Almehmadi on 13/02/2023.
//

import SwiftUI
import FirebaseAuth
import AuthenticationServices
import FirebaseFirestore

struct SingUP: View {
    
    @StateObject var phoneViewModel = PhoneViewModel()
    
    @State var SaveData = false
    
    @State var phoneNumber = ""
    @State var name = ""
    @State private var Birthdate = Date.now
    @State private var Gender = 1
    let uid = UserDefaults.standard.string(forKey: "uid") ?? "nil"
    let email = UserDefaults.standard.string(forKey: "email") ?? "nil"

    var body: some View {
//        ScrollView{
        NavigationView {
            
            VStack{
                NavigationLink(destination: Verification(),isActive: $SaveData) {
                }
                HStack(){
                    Text("Name")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17,weight: .medium))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                HStack{
                    TextField("Enter your name", text: $name)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 358,height: 43)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                }.padding(.bottom,20)
                HStack(){
                    Text("Phone Number")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17,weight: .medium))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                HStack{
                    TextField("Add your phone number", text: $phoneNumber)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 358,height: 43)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                }.padding(.bottom,20)
                HStack(){
                    Text("Birth date")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17,weight: .medium))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                HStack{
                    
                    
                    DatePicker(selection: $Birthdate, in: ...Date.now, displayedComponents: .date) {
                        Text("Select a date")
                    }.padding(14)
                        .font(.system(size: 16))
                        .frame(width: 358,height: 43)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                    
                }.padding(.bottom,20)
                HStack(){
                    Text("Gender")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17,weight: .medium))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                HStack{
                    Picker("Gender", selection: $Gender) {
                        Text("Male").tag(0)
                        Text("Famel").tag(1)
                    }
                    .padding(.leading,-175)
                    .font(.system(size: 16))
                    .frame(width: 358,height: 43)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color("LightBlueColor"), lineWidth: 1))
                }.padding(.bottom,55)
                
                HStack{
                    Button {
                        
                        UserDefaults.standard.set(phoneNumber, forKey: "phoneNumber")
                        UserDefaults.standard.set(name, forKey: "name")
                        UserDefaults.standard.set(Birthdate, forKey: "Birthdate")
                        UserDefaults.standard.set(Gender, forKey: "Gender")
                        
//                        print(phoneNumber)
//
//                        phoneViewModel.createUserWithPhoneNumber(phoneNumber: phoneNumber) { isSuccess in
//                            print("DEBUG: phone \(isSuccess)")
//
//                            if (isSuccess == true)
//                            {
//                                SaveData = true
//                            }
//                        }
                        let userData = [
                            "id": uid,
                            "email": email,
                            "phoneNumber": phoneNumber,
                            "name": name,
                            "Birthdate": Birthdate,
                            "Gender": Gender
                        ] as [String : Any]
                        
                        Firestore.firestore().collection("users").document(uid).setData(userData)
                        
                    } label: {
                        Text("Next")
                            .foregroundColor(Color.white)
                            .font(.system(size: 18,weight: .semibold))
                            .frame(width: 285,height: 54)
                            .background(Color("BlueColor"))
                            .cornerRadius(10)
                    }
                    
                }
                
            }
      
        }
      //  }//scroll
    }
}

struct SingUP_Previews: PreviewProvider {
    static var previews: some View {
        SingUP()
    }
}
