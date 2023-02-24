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
    
    private var db = Firestore.firestore()
    
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
                    let user = User(name: name ?? "", city: city ?? "", budget: budget ?? "", available: available ?? "", img: 0)
                    self.users.append(user)
                    print("SSSS:\(self.users.description)")
                
                }
                
            }
            
        }
}
}
