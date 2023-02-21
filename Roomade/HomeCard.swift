//
//  HomeCard.swift
//  Roomade
//
//  Created by Khulood Alhamed on 09/02/2023.
//
import SwiftUI

struct HomeCard: View {
    
    @StateObject var viewModel = userViewModel()
    
    @State private var selection = "City"
    let city = ["City", "Riyadh", "Jeddah", "Madinah", "Dammam", "Makkah"]
    
    @State private var selection2 = "Budget"
    let budget = ["Budget", "1K - 2K", "2K - 3K", "4K - 5K"]
    
    @State private var selection3 = "Gender"
    let gender = ["Gender", "Female", "Male"]
     
    
    var body: some View {
        NavigationView{
            
            ZStack{
                Color("UserCard")
                    .ignoresSafeArea()
                
                VStack{
                    ProfileCard()
                        .padding(.top, 10 )
                        .padding(.bottom, 20)
                    HStack{
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
                            }//.padding()
                        }.padding(.leading, 170)
                        
                        //budget
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
                        
                    }
                    userCard
                        .onAppear(){
                            self.viewModel.fetchData()
                        }
                }
            }
        }
    }
    
    
    
    
    var userCard : some View {
        
        
        NavigationView{
            ZStack{
                Color("UserCard")
                    .ignoresSafeArea()
                ScrollView {
                    
                    ForEach(viewModel.users, id: \.id) { user in
//                        if user.city == selection || user.budget == selection2 {
                     
                            
                        if user.city == selection || selection == "City"
                                    
                                    
                                   && user.budget == selection2 || selection2 == "Budget"  {
                            
                            
                            //(selection2 = "Budget" && selection == "City")

                                VStack{
                                    
                                    VStack{
                                        ZStack{
                                            
                                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                                .fill(.white)
                                                .frame(width: 358,height: 173)
                                            VStack{
                                                HStack{
                                                    ZStack{
                                                        RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color("FemaleAvatar"))
                                                            .frame(width: 60,height: 60)
                                                            .padding(.trailing,12 )
                                                            .padding(.leading,17 )
                                                        
                                                        Image("\(user.img)")
                                                        
                                                    }
                                                    VStack{
                                                        Text(user.name)
                                                            .font(.system(size: 20))
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
                                                        .foregroundColor(.gray)
                                                    
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
                    // End of big VStack
                    
                }
            }
            
        } // End of NavigationView
        
        
        
    } // End of cardView
    
    
} // End of big View

struct HomeCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeCard()
    }
}


