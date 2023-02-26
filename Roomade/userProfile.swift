//
//  userProfile.swift
//  Roomade
//
//  Created by Wedad Almehmadi on 26/02/2023.
//

import Foundation
import SwiftUI

struct userProfile: View {

    @ObservedObject var model = userDetailsViewModel()
    let userUID = UserDefaults.standard.string(forKey: "uid")
    
    var body: some View {
        ForEach(model.userData, id: \.id) { user in
            ZStack{
                Color("Background")
                
                    .ignoresSafeArea()
                
                VStack{
                    
                    ZStack{
                        Image("infocard")
                        
                        VStack{
                            
                            ZStack{
                                
                                
                                RoundedRectangle(cornerRadius: 10)
                                
                                    .fill(.white)
                                
                                    .frame(width: 80,height: 80)
                                
                                Image("1")
                                
                            }//zstack
                            
                            Text(user.name)
                            
                                .font(.title2)
                            
                                .foregroundColor(.white)
                            
                            Text(user.city)
                            
                                .font(.footnote)
                            
                                .foregroundColor(.white)
                            HStack{
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 10)
                                    
                                        .fill(.white)
                                    
                                        .frame(width: 152,height: 62)
                                    
                                        .padding(.leading, 20)
                                    
                                    
                                    
                                    HStack{
                                        
                                        Image(systemName: "dollarsign.circle.fill")
                                        
                                            .font(.system(size: 28))
                                        
                                            .foregroundColor(Color("Blue1"))
                                        
                                        VStack(alignment:.leading){
                                            
                                            Text("Budget")
                                            
                                            Text(user.budget)
                                                .foregroundColor(.gray)
                                            
                                            
                                            
                                        }
                                        
                                    }.padding(.leading, 10)
                                    
                                }
                                
                                Spacer()
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 10)
                                    
                                        .fill(.white)
                                    
                                        .frame(width: 152,height: 62)
                                    
                                        .padding(.trailing, 20)
                                    
                                    
                                    
                                    HStack{
                                        
                                        Image(systemName: "checkmark.circle.fill")
                                        
                                            .font(.system(size: 28))
                                        
                                            .foregroundColor(Color("Blue1"))
                                        
                                        VStack(alignment:.leading){
                                            
                                            Text("Available")
                                            
                                            Text(user.available)
                                                .foregroundColor(.gray)
                                            
                                            
                                            
                                        }
                                        
                                    }.padding(.trailing, 30)
                                    
                                }
                                
                                
                                
                            }
                            
                            //vstack
                            
                        }//bigzstack
                        
                        
                    }
                    
                    ScrollView{
                        
                        VStack{
                            
//                            Button{
//                                NavigationLink(destination: informationPage().navigationBarBackButtonHidden(false)){
//                                    informationPage()
//                                }
//                            } label:{
//                                Text("Edit")
//                                    .fontWeight(.medium)
//                                    .font(.system(size: 20))
//                                
//                            }
//                            .padding(.leading, 280)
                            
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10)
                                
                                    .fill(.white)
                                
                                    .frame(width: 358,height: 160)
                                
                                VStack(alignment:.leading){
                                    
                                    Text("About Me")
                                    
                                        .fontWeight(.semibold)
                                    
                                        .lineLimit(1)
                                    
                                        .minimumScaleFactor(2.75)
                                    
                                        .padding(.leading, 10)
                                    
                                        .padding(.bottom, 3)
                                    
                                    Text(user.about)
                                    
                                        .foregroundColor(Color("Dg"))
                                    
                                        .lineLimit(6)
                                    
                                        .minimumScaleFactor(2.75)
                                    
                                        .padding(.leading, 10)
                                    
                                    //.padding(.leading, 18)
                                    
                                }
                                
                                
                                
                            }
                            
                            
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10)
                                
                                    .fill(.white)
                                
                                    .frame(width: 358,height: 85)
                                
                                HStack{
                                    
                                    
                                    
                                    Image(systemName: "mappin.circle.fill")
                                    
                                        .font(.system(size: 30))
                                    
                                        .foregroundColor(Color("Blue1"))
                                    
                                        .padding(.leading, 18)
                                    
                                    
                                    
                                    VStack(alignment:.leading){
                                        
                                        Text("Location")
                                        
                                        // .lineLimit(1)
                                        
                                        // .minimumScaleFactor(0.75)
                                        
                                            .fontWeight(.semibold)
                                        
                                            .padding(.trailing, 220)
                                        
                                            .padding(.bottom, 3)
                                        
                                        Text(user.city)
                                        
                                            .foregroundColor(Color("Dg"))
                                        
                                            .lineLimit(1)
                                        
                                            .minimumScaleFactor(0.75)
                                        
                                        //  .padding(.trailing, 238)
                                        
                                    }.padding(.leading, 5)
                                    
                                }//hstack
                                
                            }
                            
                            
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10)
                                
                                    .fill(.white)
                                
                                    .frame(width: 358,height: 85)
                                
                                HStack{
                                    
                                    
                                    
                                    Image(systemName: "house.circle.fill")
                                    
                                        .font(.system(size: 32))
                                    
                                        .foregroundColor(Color("Blue1"))
                                    
                                        .padding(.leading, 18)
                                    
                                    
                                    
                                    VStack(alignment:.leading){
                                        
                                        Text("Districts")
                                        
                                            .fontWeight(.semibold)
                                        
                                            .padding(.trailing, 220)
                                        
                                            .padding(.bottom, 3)
                                        
                                        Text(user.disrticts)
                                        
                                        // .multilineTextAlignment(.center)
                                        
                                            .lineLimit(1)
                                        
                                            .minimumScaleFactor(0.75)
                                        
                                            .foregroundColor(Color("Dg"))
                                        
                                        // .padding(.trailing)
                                        
                                    }.padding(.leading, 5)
                                    
                                }//hstack
                                
                            }
                            
                            
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10)
                                
                                    .fill(.white)
                                
                                    .frame(width: 358,height: 85)
                                
                                HStack{
                                    
                                    
                                    
                                    Image(systemName: "calendar.circle.fill")
                                    
                                        .font(.system(size: 32))
                                    
                                        .foregroundColor(Color("Blue1"))
                                    
                                        .padding(.leading, 18)
                                    
                                    
                                    
                                    VStack(alignment:.leading){
                                        
                                        Text("Period of Stay")
                                        
                                            .fontWeight(.semibold)
                                        
                                            .padding(.trailing, 170)
                                        
                                            .lineLimit(1)
                                        
                                            .minimumScaleFactor(2.75)
                                        
                                            .padding(.bottom, 3)
                                        
                                        Text(user.PeriodOfStay)
                                        
                                        // .multilineTextAlignment(.center)
                                        
                                            .lineLimit(1)
                                        
                                            .minimumScaleFactor(0.75)
                                        
                                            .foregroundColor(Color("Dg"))
                                        
                                        // .padding(.trailing)
                                        
                                    }.padding(.leading, 5)
                                    
                                }//hstack
                                
                            }
                            
                            
                            
                            
                            
                            
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10)
                                
                                    .fill(.white)
                                
                                    .frame(width: 358,height: 85)
                                
                                HStack{
                                    
                                    
                                    
                                    Image(systemName: "bed.double.circle.fill")
                                    
                                        .font(.system(size: 32))
                                    
                                        .foregroundColor(Color("Blue1"))
                                    
                                        .padding(.leading, 18)
                                    
                                    
                                    
                                    VStack(alignment:.leading){
                                        
                                        Text("Room Type")
                                        
                                            .fontWeight(.semibold)
                                        
                                            .padding(.trailing, 190)
                                        
                                            .lineLimit(1)
                                        
                                            .minimumScaleFactor(2.75)
                                        
                                            .padding(.bottom, 3)
                                        
                                        Text(user.RoomType)
                                        
                                        // .multilineTextAlignment(.center)
                                        
                                            .lineLimit(1)
                                        
                                            .minimumScaleFactor(0.75)
                                        
                                            .foregroundColor(Color("Dg"))
                                        
                                        // .padding(.trailing)
                                        
                                    }.padding(.leading, 5)
                                    
                                }//hstack
                                
                            }
                            
                            
                            
                            
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10)
                                
                                    .fill(.white)
                                
                                    .frame(width: 358,height: 85)
                                
                                HStack{
                                    
                                    
                                    
                                    Image(systemName: "heart.circle.fill")
                                    
                                        .font(.system(size: 32))
                                    
                                        .foregroundColor(Color("Blue1"))
                                    
                                        .padding(.leading, 18)
                                    
                                    
                                    
                                    VStack(alignment:.leading){
                                        
                                        Text("Interests")
                                        
                                            .fontWeight(.semibold)
                                        
                                            .padding(.trailing, 205)
                                        
                                            .lineLimit(1)
                                        
                                            .minimumScaleFactor(2.75)
                                        
                                            .padding(.bottom, 3)
                                        
                                        Text(user.interest)
                                        
                                        // .multilineTextAlignment(.center)
                                        
                                            .lineLimit(1)
                                        
                                            .minimumScaleFactor(0.75)
                                        
                                            .foregroundColor(Color("Dg"))
                                        
                                        // .padding(.trailing)
                                        
                                    }.padding(.leading, 5)
                                    
                                }//hstack
                                
                            }
                            
                            
                            
                            
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10)
                                
                                    .fill(.white)
                                
                                    .frame(width: 358,height: 160)
                                
                                VStack(alignment:.leading){
                                    
                                    Text("Conditions")
                                    
                                        .fontWeight(.semibold)
                                    
                                        .lineLimit(1)
                                    
                                        .minimumScaleFactor(2.75)
                                    
                                        .padding(.leading, 10)
                                    
                                        .padding(.bottom, 3)
                                    
                                    Text(user.Conditions)
                                    
                                        .foregroundColor(Color("Dg"))
                                    
                                        .lineLimit(6)
                                    
                                        .minimumScaleFactor(2.75)
                                    
                                        .padding(.leading, 10)
                                    
                                    //.padding(.leading, 18)
                                    
                                }
                                
                                
                                
                            }.padding(.bottom, 20)
                            
                        }//vstack
                        
                    }//scroll
                    
                }
                
                .padding()
            }
        }
        
    }
    init() {
        model.getData()
    }
}

struct userProfile_Previews: PreviewProvider {
    static var previews: some View {
        userProfile()
    }
}



