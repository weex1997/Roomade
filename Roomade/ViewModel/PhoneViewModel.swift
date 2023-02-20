//
//  PhoneViewModel.swift
//  Roomade
//
//  Created by Wedad Almehmadi on 15/02/2023.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore

class PhoneViewModel: ObservableObject {
    @Published var verificationId: String?
    private let auth = Auth.auth()
    
    func createUserWithPhoneNumber(phoneNumber: String, completion: @escaping ( (Bool) -> Void )) {
        print("DEBUG: 1 - preparing to request SMS Code")
        PhoneAuthProvider.provider().verifyPhoneNumber("+966" + phoneNumber, uiDelegate: nil) { [weak self] verificationId, error in
            print("DEBUG: 2 - Sending Request")
            if let error = error {
                print("DEBUG: error while getting verificationId \(error)")
            }
            guard let verificationId = verificationId else {
                completion(false)
                return
            }
            print("DEBUG: 3 - Successfully requested SMS Code")
            self?.verificationId = verificationId
            completion(true)
        }
    }
    
    func verifySMSCode(verificationCode: String, phoneNumber: String, name: String,Birthdate: String,Gender: Int, completion: @escaping ( (Bool) -> Void )) {
        print("DEBUG: 4 - Verifying SMS Code")
        guard let verificationId = verificationId else {
            completion(false)
            return
        }
        
        let credential = PhoneAuthProvider.provider().credential(withVerificationID: verificationId,
                                                                 verificationCode: verificationCode)
        print("DEBUG: 5 - Create Credential")
        auth.signIn(with: credential) { authResult, error in
            if let error = error {
                print("DEBUG: error while verifying smsCode \(error)")
            }
            print("DEBUG: 6 - Successfully Uploaded user info to firebase with saved phone number")
            guard let authResult = authResult else {return}
            let userId = authResult.user.uid
            let userData = [
                "id": userId,
                "phoneNumber": phoneNumber,
                "name": name,
                "Birthdate": Birthdate,
                "Profession": Gender
            ]
            
            Firestore.firestore().collection("users").document(userId).setData(userData)
            completion(true)
        }
    }
    
    func requestOtp() {
            let phNo = "Your phone number"
            PhoneAuthProvider.provider().verifyPhoneNumber(phNo, uiDelegate: nil) { (verificationID, error) in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                // Sign in using the verificationID and the code sent to the user
                // ...
                UserDefaults.standard.set(verificationID, forKey: "authVerificationID")
            }
    }
}
