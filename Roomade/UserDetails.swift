//
//  UserDetails.swift
//  Roomade
//
//  Created by Hajar Alruqi on 05/08/1444 AH.
//

import Foundation
import FirebaseFirestoreSwift

struct UserDetails: Identifiable {
    var id = UUID()
    var name : String
    var city : String
    var budget : String
    var available : String
    var Gender : Int
    var about : String
    var interest : String
    var disrticts : String
    var PeriodOfStay : String
    var RoomType : String
    var Conditions : String
    var showProfile : Bool
    var date = Date()
}
