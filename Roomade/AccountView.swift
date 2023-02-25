//
//  AccountView.swift
//  Roomade
//
//  Created by Sumaya Alzahrani on 21/07/1444 AH.
//

import SwiftUI

struct AccountView: View {
    @State var userDetails : UserDetails
    let name = UserDefaults.standard.string(forKey: "name") ?? "nil"
    let Gender = UserDefaults.standard.integer(forKey: "Gender") 
    let city = UserDefaults.standard.string(forKey: "city") ?? "nil"


    var body: some View {

            VStack{
                ZStack{
                    
                    
                    Image("c")
                    
                    VStack{
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.white)
                                .frame(width: 80,height: 80)
                            
                            if (Gender == 1) {
                                Image("0")
                            }
                            else {
                                
                                Image("2")
                            }
                        }//zstack
                        
                        Text(name)
                            .font(.title2)
                            .foregroundColor(.white)
                        
                        Text(city)
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
                            informationView(userDetails: userDetails)
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
        AccountView(userDetails: .init(name: "Sara", city: "Riyadh", budget: "1K-2K", available: "Now", Gender: 1, about: "bio",  interest:"Cooking, Reading Arts, and Music", disrticts:"Ruh", PeriodOfStay:"9 - 12 months", RoomType:"Single room", Conditions:"My name is Sara and I’m 24 Years old I searching for department in Alnajis Dist. I wanted because I’m coming from Jeddah to study at Nora univrsity ", showProfile:false ))
    }
}
