//
//  AccountView.swift
//  Roomade
//
//  Created by Sumaya Alzahrani on 21/07/1444 AH.
//

import SwiftUI

struct AccountView: View {
    var body: some View {

            VStack{
                ZStack{
                    
                    
                    Image("c")
                    
                    VStack{
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.white)
                                .frame(width: 80,height: 80)
                            
                            Image("avatar")
                        }//zstack
                        
                        Text("Sara Ali")
                            .font(.title2)
                            .foregroundColor(.white)
                        
                        Text("Riyadh")
                            .font(.footnote)
                            .foregroundColor(.white)
                        
                    }//vstack
                    
                }//big zstack for card account details
                .padding(.bottom, 36)
                
                
                
                VStack{
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.white)
                            .frame(width:360, height: 65)
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("g"), lineWidth: 1)
                            .frame(width:360, height: 65)
                        
                        NavigationLink {
                            informationView(userCard: .init(name: "Sara", city: "Riyadh", budget: "1K-2K", available: "Now", avatar: 1, about: "bio",  interest:"Cooking, Reading Arts, and Music", disrticts:"Al Malqa, Al yasmin, Al narjis", Budget:"", AvailableFrom:"Now", PeriodOfStay:"9 - 12 months", RoomType:"Single room", Conditions:"My name is Sara and I’m 24 Years old I searching for department in Alnajis Dist. I wanted because I’m coming from Jeddah to study at Nora univrsity ", showProfile:false ))
                        } label: {
                            Text("Information")
                                .foregroundColor(.black)
                            //Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .padding(.leading, 220)
                        }
                    }//zstack of info
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.white)
                            .frame(width:360, height: 65)
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("g"), lineWidth: 1)
                            .frame(width:360, height: 65)
                        
                        NavigationLink {
                            SubscribeView()
                        } label: {
                            Text("Favourate")
                                .foregroundColor(.black)
                            //Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .padding(.leading, 225)
                        }
                    }//zstack of fav
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.white)
                            .frame(width:360, height: 65)
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("g"), lineWidth: 1)
                            .frame(width:360, height: 65)
                        
                        NavigationLink {
                            SubscribeView()
                        } label: {
                            Text("Subscription")
                                .foregroundColor(.black)
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .padding(.leading, 203)
                        }
                    }//zstack of sub
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.white)
                            .frame(width:360, height: 65)
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("g"), lineWidth: 1)
                            .frame(width:360, height: 65)
                        
                        HStack{
                            Text("Log Out")
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .padding(.leading, 234)
                        }//hstack of list
                    }//zstack of logout
                    
                    
                }//vstack of list
                .padding(.bottom, 200)
            }//vstack
    }//body
}//strcut

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
