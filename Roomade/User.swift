//
//  User.swift
//  Roomade
//
//  Created by Khulood Alhamed on 23/02/2023.
//

import Foundation
import FirebaseFirestoreSwift
struct User: Identifiable {
    
    var id = UUID()
    var name: String
    var city: String
    var budget: String
    var available: String
    var Gender: String
    var phoneNumber: String
}
