//
//  ProfileCard.swift
//  Roomade
//
//  Created by Khulood Alhamed on 24/02/2023.
//

import SwiftUI
import FirebaseAuth
import AuthenticationServices
import FirebaseFirestore

struct ProfileCard: View {
    let name = UserDefaults.standard.string(forKey: "name") ?? "nil"
    @StateObject var viewModel = userViewModel()

    var body: some View {
        //Profile card

            VStack{
                
               
                    ZStack{
                        
                            Image("ProfileCard")
                        
                        HStack{
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.white)
                                    .frame(width: 66,height: 66)
                                Image("0")
                            }
                            .padding(.trailing,24)
                            
                            
                            VStack{
                                Text("Welcome,")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17))
                                
                                let user1 = Auth.auth().currentUser;
                                if ((user1) != nil) {
                                   //user is logged in
                                    Text(name)
                                        .font(.system(size: 25))
                                        .frame(width: 75, height: 25, alignment: .center)
                                        .lineLimit(1)
                                        .minimumScaleFactor(0.8)                        .foregroundColor(.white)
                                    
                                    }else{
                                     //user is not logged in
                                        Text("Sign in")
                                            .font(.system(size: 25))
                                            .frame(width: 75, height: 25, alignment: .center)
                                            .lineLimit(1)
                                            .minimumScaleFactor(0.8)                        .foregroundColor(.white)
                                    }
                                
                                
                                
                                
                            } .padding(.trailing, 80)
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .font(.system(size: 24))
                                .padding(.leading,30 )
                        }
                    }
                }
            
        }
    }


struct ProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCard()
    }
}
