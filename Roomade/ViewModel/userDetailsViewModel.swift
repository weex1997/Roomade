//
//  userDetailsViewModel.swift
//  Roomade
//
//  Created by Hajar Alruqi on 05/08/1444 AH.
//


import Foundation
import FirebaseFirestore

class userDetailsViewModel: ObservableObject{
    
    @Published var userData = [UserDetails]()
    
    private var db = Firestore.firestore()
    let userUid = UserDefaults.standard.string(forKey: "uid")
    
    func getData() {
        
        // Get a reference to the database
        let db = Firestore.firestore()
        
        // Read the documents at a specific path
        db.collection("users").whereField("id", isEqualTo:userUid).getDocuments
            { snapshot, error in
            
            // Check for errors
            if error == nil {
                // No errors
                
                if let snapshot = snapshot {
                    
                    // Update the list property in the main thread
                    DispatchQueue.main.async {
                        
                        // Get all the documents and create Todos
                        self.userData = snapshot.documents.map { d in
                            
                            // Create a Todo item for each document returned
                            return UserDetails(  name: d["name"] as? String ?? "",
                                                 city : d["city"] as? String ?? "",
                                                 budget : d["budget"] as? String ?? "",
                                                 available : d["available"] as? String ?? "",
                                                 Gender : d["Gender"] as? String ?? "",
                                                 about : d["about"] as? String ?? "",
                                                 interest : d["interest"] as? String ?? "",
                                                 disrticts : d["disrticts"] as? String ?? "",
                                                 PeriodOfStay : d["PeriodOfStay"] as? String ?? "",
                                                 RoomType : d["RoomType"] as? String ?? "",
                                                 Conditions : d["Conditions"] as? String ?? "",
                                                 showProfile : d["showProfile"] as? Bool ?? false,
                                                 Birthdate : d["Birthdate"] as? Date ?? Date())
                        }

                    }
                    
                    
                }
            }
            else {
                // Handle the error
                print(error?.localizedDescription)
                print("try again")
            }
        }
    }
    
    func fetchData() {
        db.collection("users").whereField("id", isEqualTo:userUid).getDocuments { doucments, error in
            
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
                    let available = document.data()["Available"] as? String
                    let city = document.data()["city"] as? String
                    let Gender = document.data()["Gender"] as? String
                    let about = document.data()["about"] as? String
                    let interest = document.data()["interest"] as? String
                    let disrticts = document.data()["disrticts"] as? String
                    let PeriodOfStay = document.data()["PeriodOfStay"] as? String
                    let RoomType = document.data()["RoomType"] as? String
                    let Conditions = document.data()["Conditions"] as? String
                    let showProfile = document.data()["showProfile"] as? Bool
                    let Birthdate = document.data()["Birthdate"] as? Date

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
                    UserDefaults.standard.set(Birthdate, forKey: "date")
                    UserDefaults.standard.set(RoomType, forKey: "RoomType")
                    UserDefaults.standard.set(Birthdate, forKey: "Birthdate")
                    
                    
                    let userData = UserDetails(name: name ?? "", city: city ?? "", budget: budget ?? "", available: available ?? "", Gender: Gender ?? "1", about: about ?? "", interest: interest ?? "", disrticts: disrticts ?? "", PeriodOfStay: PeriodOfStay ?? "", RoomType: RoomType ?? "", Conditions: Conditions ?? "", showProfile: showProfile ?? false, Birthdate: Birthdate ?? Date())
                   
                    print("all data saved \(userData)")

                
                }
                
            }
            
        }
}
}

