//
//  RoomadeApp.swift
//  Roomade
//
//  Created by Wedad Almehmadi on 09/02/2023.
//

import SwiftUI
import Firebase
@main
struct RoomadeApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            HomeCard()
        }
    }
}
