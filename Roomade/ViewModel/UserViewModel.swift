//
//  UserViewModel.swift
//  Roomade
//
//  Created by Khulood Alhamed on 23/02/2023.
//

import Foundation
import FirebaseFirestore

class userViewModel: ObservableObject{
    
    @Published var users = [User]()
    @Published var isLogged = false
    private var db = Firestore.firestore()
//    let userUid = UserDefaults.standard.string(forKey: "uid")

    func fetchData() {
        db.collection("users").whereField("showProfile", isEqualTo: true).getDocuments { doucments, error in

            if let error = error {
                print("error!:\(error.localizedDescription)")
            } else {
                guard let documents = doucments?.documents else {
                    print("No documents")
                    return
                }
                for document in documents {
                    let name = document.data()["name"] as? String
                    let budget = document.data()["budget"] as? String
                    let available = document.data()["available"] as? String
                    let city = document.data()["city"] as? String
                    let Gender = document.data()["Gender"] as? String
                    let phoneNumber = document.data()["phoneNumber"] as? String
                    let about  = document.data()["about"] as? String
                    let interest  = document.data()["interest"] as? String
                    let disrticts  = document.data()["disrticts"] as? String
                    let PeriodOfStay  = document.data()["PeriodOfStay"] as? String
                    let RoomType  = document.data()["RoomType"] as? String
                    let Conditions  = document.data()["Conditions"] as? String
                    let showProfile  = document.data()["showProfile"] as? Bool
                    let Birthdate  = document.data()["Birthdate"] as? Date

                   
                    let user = User(name: name ?? "", city: city ?? "", budget: budget ?? "", available: available ?? "", Gender: Gender ?? "", phoneNumber: phoneNumber ?? "", about: about ?? "" , interest: interest ?? "", disrticts: disrticts ?? "", PeriodOfStay: PeriodOfStay ?? "", RoomType: RoomType ?? "", Conditions: Conditions ?? "", showProfile: showProfile ?? false ,  Birthdate : Birthdate ?? Date()) 
                    self.users.append(user)
                    print("SSSS:\(self.users.description)")
                    print("Hello")

                
                }
                
            }
            
        }
}
}
