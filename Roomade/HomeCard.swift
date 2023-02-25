//
//  HomeCard.swift
//  Roomade
//
//  Created by Khulood Alhamed on 09/02/2023.
//

import SwiftUI
import FirebaseAuth
import AuthenticationServices
import FirebaseFirestore

struct HomeCard: View {
    
    @StateObject var viewModel = userViewModel()
    
    @State private var selection = "City"
    let city = ["City", "Riyadh", "Jeddah", "Madinah", "Dammam", "Makkah"]
    
    @State private var selection2 = "Budget"
    let budget = ["Budget", "1K - 2K", "2K - 3K", "4K - 5K"]
    
    @State private var selection3 = "Gender"
    let gender = ["Gender", "Female", "Male"]
    
    @State private var showImage = false
    
    let uid = UserDefaults.standard.string(forKey: "uid") ?? nil

    var body: some View {
        

        ZStack{
            Color("Background")
                .ignoresSafeArea()
            
                VStack{
                    let user1 = Auth.auth().currentUser;
                    if ((user1) != nil) {

                       //user is logged in
//                        NavigationLink(destination: UserInfo(userDetails: .init(name: "Sara", city: "Riyadh", budget: "1K-2K", available: "Now", Gender: 1, about: "bio",  interest:"Cooking, Reading Arts, and Music", disrticts:"Ruh", PeriodOfStay:"9 - 12 months", RoomType:"Single room", Conditions:"My name is Sara and I’m 24 Years old I searching for department in Alnajis Dist. I wanted because I’m coming from Jeddah to study at Nora univrsity ", showProfile:false )).navigationBarBackButtonHidden(false)){
                            ProfileCard()
                                .padding(.top, 10 )
                                .padding(.bottom, 20)
//                        }
                        }else{
                         //user is not logged in
//                            NavigationLink(destination: LogIn().navigationBarBackButtonHidden(false)){
                                ProfileCard()
                                    .padding(.top, 10 )
                                    .padding(.bottom, 20)
//                        }
                    
                    }
                    HStack{
                        
                        // City filter
                        VStack{
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                    .frame(width: 134, height: 44)
                                Picker("Select a city", selection: $selection) {
                                    ForEach(city, id: \.self) {
                                        Text($0)
                                    }
                                }.pickerStyle(.automatic)
                            }
                        }.padding(.leading, 170)
                        
                        //Budget filter
                        VStack{
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                    .frame(width: 134, height: 44)
                                Picker("Select a city", selection: $selection2) {
                                    ForEach(budget, id: \.self) {
                                        Text($0)
                                    }
                                }.pickerStyle(.automatic)
                            }.padding(.trailing, 230)
                                .padding(.leading, 16)
                        }
                        // Gender filter
//                        VStack{
//                            ZStack{
//
//                                RoundedRectangle(cornerRadius: 10)
//                                    .fill(.white)
//                                    .frame(width: 134, height: 44)
//                                Picker("Select a gender", selection: $selection3) {
//                                    ForEach(gender, id: \.self) {
//                                        Text($0)
//                                    }
//                                }.pickerStyle(.automatic)
//                            }.padding(.trailing, 230)
//                                .padding(.leading, 16)
//                        }
                        
                        
                    }
//                    NavigationLink(destination: UserInfo(userDetails: .init(name: "Hind", city: "Riyadh", budget: "1K-2K", available: "Now", Gender: 1, about: "bio",  interest:"Cooking, Reading Arts, and Music", disrticts:"Ruh", PeriodOfStay:"9 - 12 months", RoomType:"Single room", Conditions:"My name is Sara and I’m 24 Years old I searching for department in Alnajis Dist. I wanted because I’m coming from Jeddah to study at Nora univrsity ", showProfile:false )).navigationBarBackButtonHidden(false)){
                        userCard
                            .onAppear(){
                                self.viewModel.fetchData()
                            }
//                    }
                    
                }
            
        }
    }
        

    
    var userCard : some View {
        
            VStack{
                ZStack{
                    Color("Background")
                        .ignoresSafeArea()
                    ScrollView {
                        
                        ForEach(viewModel.users, id: \.id) { user in
                            
                            
                            if (user.city == selection || selection == "City") && (user.budget == selection2 || selection2 == "Budget") {
                                
                                NavigationLink(destination: UserInfo(userDetails: .init(name: user.name, city: user.city, budget: "1K-2K", available: "Now", Gender: 1, about: "bio",  interest:"Cooking, Reading Arts, and Music", disrticts:"Ruh", PeriodOfStay:"9 - 12 months", RoomType:"Single room", Conditions:"My name is Sara and I’m 24 Years old I searching for department in Alnajis Dist. I wanted because I’m coming from Jeddah to study at Nora univrsity ", showProfile:false )).navigationBarBackButtonHidden(false)){
                                    VStack{
                                        
                                        VStack{
                                            ZStack{
                                                
                                                RoundedRectangle(cornerRadius: 15, style: .continuous)
                                                    .fill(.white)
                                                    .frame(width: 358,height: 173)
                                                
                                                VStack{
                                                    HStack{
                                                        // Gender condition
                                                        ZStack{
                                                            if (user.Gender == "1") {
                                                                RoundedRectangle(cornerRadius: 15, style: .continuous)
                                                                    .fill(Color("FemaleAvatar"))
                                                                    .frame(width: 60,height: 60)
                                                                    .padding(.trailing,12 )
                                                                    .padding(.leading,17 )
                                                            }
                                                            else {
                                                                RoundedRectangle(cornerRadius: 15, style: .continuous)
                                                                    .fill(Color("MaleAvatar"))
                                                                    .frame(width: 60,height: 60)
                                                                    .padding(.trailing,12 )
                                                                    .padding(.leading,17 )
                                                            }
                                                            if (user.Gender == "1") {
                                                                Image("0")
                                                            }
                                                            else {
                                                                
                                                                Image("2")
                                                            }
                                                            
                                                        }
                                                        VStack{
                                                            Text(user.name)
                                                                .font(.system(size: 20))
                                                                .foregroundColor(.black)
                                                            
                                                                .lineLimit(1)
                                                                .minimumScaleFactor(0.8)
                                                            Text(user.city)
                                                                .font(.system(size: 15))
                                                                .foregroundColor(.gray)
                                                                .padding(.bottom, 10)
                                                                .lineLimit(1)
                                                                .minimumScaleFactor(0.8)
                                                            
                                                        }.padding(.trailing,120 )
                                                        
                                                        // The favorite icon
                                                        
                                                        Image(systemName: "heart")
                                                            .font(.system(size: 22))
                                                            .padding(.bottom, 25)
                                                            .padding(.trailing, 18 )
                                                            .foregroundColor(Color("Pink1"))
                                                        
                                                        //
                                                        //                                                    ZStack{
                                                        //
                                                        //
                                                        //
                                                        //                                                                Button(action: { showImage.toggle() }) {
                                                        //
                                                        //                                                                    Image(systemName: "heart")
                                                        //
                                                        //                                                                        .foregroundColor(.red)
                                                        //
                                                        //                                                                        .font(.system(size: 24))
                                                        //
                                                        //                                                                        .aspectRatio(contentMode: .fill).frame(width: 75, height: 75)
                                                        //
                                                        //                                                                }
                                                        //
                                                        //
                                                        //
                                                        //                                                                if showImage {
                                                        //
                                                        //                                                                    Image(systemName: "heart.fill")
                                                        //
                                                        //                                                                        .foregroundColor(.red)
                                                        //
                                                        //                                                                        .font(.system(size: 24))
                                                        //
                                                        //                                                                        .aspectRatio(contentMode: .fill).frame(width: 75, height: 75)
                                                        //
                                                        //
                                                        //
                                                        //                                                                }
                                                        //
                                                        //
                                                        //
                                                        //
                                                        //
                                                        //                                                            }
                                                    }.padding(.bottom, 20)
                                                    
                                                    
                                                    // End of first line
                                                    
                                                    HStack{
                                                        //Budget section
                                                        Image(systemName: "dollarsign.circle.fill")
                                                            .foregroundColor(Color("CardColor"))
                                                            .font(.system(size: 24))
                                                            .padding(.leading, 24)
                                                            .padding(.trailing, 5)
                                                        
                                                        VStack{
                                                            Text("Budget")
                                                                .foregroundColor(.black)
                                                                .font(.system(size: 15))
                                                                .padding(.trailing,2)
                                                            Text(user.budget)
                                                                .font(.system(size: 15))
                                                                .foregroundColor(.gray)
                                                            
                                                        }.padding(.trailing, 60)
                                                        
                                                        // End of the budget
                                                        
                                                        //Available Section
                                                        Image(systemName: "checkmark.circle.fill")
                                                            .foregroundColor(Color("CardColor"))
                                                            .font(.system(size: 24))
                                                            .padding(.trailing, 5)
                                                        
                                                        VStack{
                                                            Text("Available")
                                                                .foregroundColor(.black)
                                                                .font(.system(size: 15))
                                                            Text(user.available)
                                                                .font(.system(size: 15))
                                                                .foregroundColor(.gray)
                                                        }  .padding(.trailing, 24)
                                                        
                                                    }
                                                }
                                            }
                                            
                                        }
                                        
                                    }.padding(.top, 10)
                                }
                            }
                            
                        }

                        // End of big VStack
                        
                    }
                }
            }
            
        }
        
    } // End of cardView
    
    
 // End of big View

struct HomeCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeCard()
    }
}


