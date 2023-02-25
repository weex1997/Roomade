//
//  UserInfo.swift
//  Roomade
//
//  Created by Khulood Alhamed on 25/02/2023.
//

import SwiftUI
struct UserInfo: View {
   @StateObject var viewModel = userViewModel()
    
    @Environment(\.openURL) var openURL
    

    var body: some View {
        
        
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
                                
                                Text("Ssra")
                            
                                .font(.title2)
                            
                                .foregroundColor(.white)
                            
                                Text("jjjj")
                            
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
                                            
                                            Text("99")
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
                                            
                                            Text("Now")
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
                            
                            //                        Button{
                            //
                            //
                            //
                            //                        } label:{
                            //
                            //                            Text("Edit")
                            //
                            //                                .fontWeight(.medium)
                            //
                            //                                .font(.system(size: 20))
                            //
                            //
                            //
                            //                        }
                            //
                            //                        .padding(.leading, 280)
                            
                            
                            
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
                                    
                                    Text("My name is Sara and I’m 24 Years old I searching for department in Alnajis Dist. I wanted because I’m coming from Jeddah to study at Nora univrsity")
                                    
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
                                        
                                        Text("Riyadh")
                                        
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
                                        
                                        Text("Al Malqa, Al yasmin, Al narjis")
                                        
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
                                        
                                        Text("9 - 12 months")
                                        
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
                                        
                                        Text("Single room")
                                        
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
                                        
                                        Text("Cooking, art, and music")
                                        
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
                                    
                                    Text("My name is Sara and I’m 24 Years old I searching for department in Alnajis Dist. I wanted because I’m coming from Jeddah to study at Nora univrsity")
                                    
                                        .foregroundColor(Color("Dg"))
                                    
                                        .lineLimit(6)
                                    
                                        .minimumScaleFactor(2.75)
                                    
                                        .padding(.leading, 10)
                                    
                                    //.padding(.leading, 18)
                                    
                                }
                                
                                
                                
                            }.padding(.bottom, 20)
                            
                            
                            
                            Button{
                                
                                openURL(URL(string: "https://wa.me/966")!)
                                
                            } label:{
                                
                                
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 8)
                                    
                                        .fill(Color("wc"))
                                    
                                        .frame(width: 310, height: 54)
                                    
                                    HStack(spacing:10){
                                        
                                        
                                        
                                        Image("Vector")
                                        
                                        
                                        
                                        Text("Send Message on whatsapp")
                                        
                                            .fontWeight(.medium)
                                        
                                            .font(.system(size: 18))
                                        
                                            .foregroundColor(.white)
                                        
                                        
                                        
                                    }
                                    
                                }
                                
                                
                                
                            }.padding(.bottom, 20)
                            
                            
                            
                            
                            
                        }//vstack
                        
                    }//scroll
                    
                }
                
                .padding()
            }
        
        }//zstack one big
        
    }
    




struct UserInfo_Previews: PreviewProvider {
    
    static var previews: some View {
        
        UserInfo()
        
    }
    
}