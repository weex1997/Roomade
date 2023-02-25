//
//  informationView.swift
//  Roomade
//
//  Created by Hajar Alruqi on 24/07/1444 AH.
//


import SwiftUI


struct GrowingButton: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(uiColor: UIColor(red: 47/255, green: 191/255, blue: 44/255, alpha: 100)))
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            .frame(maxWidth: .infinity)
    }
}



struct informationView: View {
    @State var userDetails : UserDetails
    @Environment(\.openURL) var openURL
    
    var body: some View {
        ScrollView{
            ZStack{
                Image("c")
                    .frame(width: 385,height: 244)
                
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .frame(width: 80,height: 80)
                        
                        if (userDetails.Gender == 1) {
                            Image("0")
                        }
                        else {
                            
                            Image("2")
                        }                    }//zstack
                    VStack{
                        Text(userDetails.name)
                            .font(.title2)
                            .foregroundColor(.white)
                        
                        Text(userDetails.city)
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                    HStack{
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color("userDetails"))
                                .frame(width: 152,height: 62)
                                .blur(radius: /*@START_MENU_TOKEN@*/52.0/*@END_MENU_TOKEN@*/)
                            RoundedRectangle(cornerRadius: 15, style: .continuous).fill(.white)
                                .frame(width: 152,height: 62)
                            VStack{
                                HStack{
                                    VStack{
                                        Text("Budget")
                                            .fontWeight(Font.Weight.semibold)
                                            .font(.system(size: 14))
                                            .lineLimit(1)
                                        
                                        Text(userDetails.budget)
                                            .font(.system(size: 14))
                                            .foregroundColor(.gray)
                                            .padding(.bottom, 10)
                                            .lineLimit(1)
                                        
                                    }.padding(.trailing,120 )
                                    // End of About Me
                                }.padding(.bottom, 20)
                                
                            }
                            .frame(width: 152,height: 62)
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color("userDetails"))
                                .frame(width: 152,height: 62)
                                .blur(radius: /*@START_MENU_TOKEN@*/52.0/*@END_MENU_TOKEN@*/)
                            RoundedRectangle(cornerRadius: 15, style: .continuous).fill(.white)
                                .frame(width: 152,height: 62)
                            VStack{
                                HStack{
                                    VStack{
                                        Text("Available")
                                            .fontWeight(Font.Weight.semibold)
                                            .font(.system(size: 14))
                                            .lineLimit(1)
                                        
                                        Text(userDetails.available)
                                            .font(.system(size: 14))
                                            .foregroundColor(.gray)
                                            .padding(.bottom, 10)
                                            .lineLimit(1)
                                        
                                        
                                    }.padding(.trailing,120 )
                                    // End of About Me
                                }.padding(.bottom, 20)
                                
                            }
                            .frame(width: 152,height: 62)
                        }
                    }
                    
                }//vstack
            }//big zstack for card account details
            .padding(.bottom, 36)
            
            NavigationLink {
                informationPage()
            } label: {
                Text("Edit")
                    .frame(alignment: .trailing)
            }
            
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color("userDetails"))
                    .frame(width: 358,height: 139)
                    .blur(radius: /*@START_MENU_TOKEN@*/52.0/*@END_MENU_TOKEN@*/)
                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(.white)
                    .frame(width: 358,height: 173)
                VStack{
                    HStack{
                        VStack{
                            Text("About Me")
                                .font(.system(size: 20))
                                .minimumScaleFactor(0.8)
                            Text(userDetails.about)
                                .font(.system(size: 15))
                                .foregroundColor(.gray)
                                .padding(.bottom, 10)
                                .multilineTextAlignment(.center)
                                .minimumScaleFactor(0.8)
                            
                            
                        }.padding(.trailing,120 )
                        // End of About Me
                    }.padding(.bottom, 20)
                    
                }
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color("userDetails"))
                    .frame(width: 358,height: 63)
                    .blur(radius: /*@START_MENU_TOKEN@*/52.0/*@END_MENU_TOKEN@*/)
                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(.white)
                    .frame(width: 358,height: 173)
                VStack{
                    HStack{
                        VStack{
                            Text("Distritcts")
                                .font(.system(size: 20))
                                .lineLimit(1)
                                .minimumScaleFactor(0.8)
                            Text(userDetails.disrticts)
                                .font(.system(size: 15))
                                .foregroundColor(.gray)
                                .padding(.bottom, 10)
                                .multilineTextAlignment(.center)
                            //                                .minimumScaleFactor(0.8)
                            
                            
                        }.padding(.trailing,120 )
                    }.padding(.bottom, 20)
                    // End of Distritcts
                    
                }
                .frame(width: 358,height: 63)
                
            }
            ZStack{
                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color("userDetails"))
                    .frame(width: 358,height: 63)
                    .blur(radius: /*@START_MENU_TOKEN@*/52.0/*@END_MENU_TOKEN@*/)
                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(.white)
                    .frame(width: 358,height: 173)
                VStack{
                    HStack{
                        VStack{
                            Text("Perioed of Stay")
                                .font(.system(size: 20))
                                .lineLimit(1)
                                .minimumScaleFactor(0.8)
                            Text(userDetails.PeriodOfStay)
                                .font(.system(size: 15))
                                .foregroundColor(.gray)
                                .padding(.bottom, 10)
                                .multilineTextAlignment(.center)
                            //                                .minimumScaleFactor(0.8)
                            
                            
                        }.padding(.trailing,120 )
                    }.padding(.bottom, 20)
                    // End of Perioed of Stay
                }
            }
            ZStack{
                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color("userDetails"))
                    .frame(width: 358,height: 63)
                    .blur(radius: /*@START_MENU_TOKEN@*/52.0/*@END_MENU_TOKEN@*/)
                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(.white)
                    .frame(width: 358,height: 173)
                VStack{
                    HStack{
                        VStack{
                            Text("Room Type")
                                .font(.system(size: 20))
                                .lineLimit(1)
                            //                                .minimumScaleFactor(0.8)
                            Text(userDetails.RoomType)
                                .font(.system(size: 15))
                                .foregroundColor(.gray)
                                .padding(.bottom, 10)
                                .lineLimit(1)
                            //                                .minimumScaleFactor(0.8)
                            
                            
                        }.padding(.trailing,120 )
                    }.padding(.bottom, 20)
                    // End of Room Type
                    
                }
            }
            ZStack{
                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color("userDetails"))
                    .frame(width: 358,height: 63)
                    .blur(radius: /*@START_MENU_TOKEN@*/52.0/*@END_MENU_TOKEN@*/)
                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(.white)
                    .frame(width: 358,height: 173)
                VStack{
                    HStack{
                        VStack{
                            Text("Interest")
                                .font(.system(size: 20))
                                .lineLimit(1)
                            //                                .minimumScaleFactor(0.8)
                            Text(userDetails.interest)
                                .font(.system(size: 15))
                                .foregroundColor(.gray)
                                .padding(.bottom, 10)
                                .lineLimit(1)
                            //                                .minimumScaleFactor(0.8)
                            
                            
                        }.padding(.trailing,120 )
                    }.padding(.bottom, 20)
                    // End of Interest
                    
                }
            }
            ZStack{
                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color("userDetails"))
                    .frame(width: 358,height: 139)
                    .blur(radius: /*@START_MENU_TOKEN@*/52.0/*@END_MENU_TOKEN@*/)
                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(.white)
                    .frame(width: 358,height: 173)
                VStack{
                    HStack{
                        VStack{
                            Text("Conditions")
                                .font(.system(size: 20))
                            //                                .minimumScaleFactor(0.8)
                            Text(userDetails.Conditions)
                                .font(.system(size: 15))
                                .foregroundColor(.gray)
                                .padding(.bottom, 10)
                            //                                .minimumScaleFactor(0.8)
                                .multilineTextAlignment(.center)
                            
                            
                            
                        }.padding(.trailing,120 )
                    }.padding(.bottom, 20)
                    // End of Conditions
                }
            }
            Button{
                openURL(URL(string: "https://www.apple.com")!)
            }label: {
                Label("Send Message on whatsapp", image: "whatsapp")
            }
            .buttonStyle(GrowingButton())
        }
        .navigationBarTitle(Text("Information"))
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
}




struct informationView_Previews: PreviewProvider {
    static var previews: some View {
        informationView(userDetails: .init(name: "Sara", city: "Riyadh", budget: "1K-2K", available: "Now", Gender: 1, about: "bio",  interest:"Cooking, Reading Arts, and Music", disrticts:"Ruh", PeriodOfStay:"9 - 12 months", RoomType:"Single room", Conditions:"My name is Sara and I’m 24 Years old I searching for department in Alnajis Dist. I wanted because I’m coming from Jeddah to study at Nora univrsity ", showProfile:false ))
        
    }
}
