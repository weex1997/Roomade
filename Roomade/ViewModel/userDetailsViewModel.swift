//
//  userDetailsViewModel.swift
//  Roomade
//
//  Created by Hajar Alruqi on 05/08/1444 AH.
//


import Foundation
import FirebaseFirestore

class userDetailsViewModel: ObservableObject{
    
    @Published var users = [User]()
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("users").whereField("id", isEqualTo:UserDefaults.standard.string(forKey: "uid")).getDocuments { doucments, error in
            
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
                    let about = document.data()["about"] as? String
                    let interest = document.data()["interest"] as? String
                    let disrticts = document.data()["disrticts"] as? String
                    let PeriodOfStay = document.data()["PeriodOfStay"] as? String
                    let RoomType = document.data()["RoomType"] as? String
                    let Conditions = document.data()["Conditions"] as? String
                    let showProfile = document.data()["showProfile"] as? Bool
                    let date = document.data()["date"] as? String

                    UserDefaults.standard.set(name, forKey: "name")
                    UserDefaults.standard.set(budget, forKey: "budget")
                    UserDefaults.standard.set(available, forKey: "available")
                    UserDefaults.standard.set(city, forKey: "city")
                    UserDefaults.standard.set(Gender, forKey: "Gender")
                    UserDefaults.standard.set(about, forKey: "about")
                    UserDefaults.standard.set(interest, forKey: "interest")
                    UserDefaults.standard.set(disrticts, forKey: "disrticts")
                    UserDefaults.standard.set(PeriodOfStay, forKey: "PeriodOfStay")
                    UserDefaults.standard.set(Conditions, forKey: "Conditions")
                    UserDefaults.standard.set(showProfile, forKey: "showProfile")
                    UserDefaults.standard.set(date, forKey: "date")
                    UserDefaults.standard.set(RoomType, forKey: "RoomType")

                   
                
                }
                
            }
            
        }
}
}

