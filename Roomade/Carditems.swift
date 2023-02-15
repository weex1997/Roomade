//
//  Carditems.swift
//  Roomade
//
//  Created by Khulood Alhamed on 14/02/2023.
//

import SwiftUI

struct Cards{
    
    var name : String
    var city : String
    var budget : String
    var available : String
    var avatar : Int
}



struct Carditems: View {
    
    
    @State var cards : Cards
    
    var body: some View {
        
        
        VStack{
            ZStack{
                
                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color("UserCard"))
                    .frame(width: 358,height: 173)
                    .blur(radius: /*@START_MENU_TOKEN@*/52.0/*@END_MENU_TOKEN@*/)
                RoundedRectangle(cornerRadius: 15, style: .continuous).fill(.white)
                    .frame(width: 358,height: 173)
                VStack{
                    HStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 15, style: .continuous).fill(Color("FemaleAvatar"))
                                .frame(width: 60,height: 60)
                                .padding(.trailing,12 )
                                .padding(.leading,17 )
                            
                            Image("\(cards.avatar)")
                            
                        }
                        VStack{
                            Text(cards.name)
                                .font(.system(size: 20))
                                .lineLimit(1)
                                .minimumScaleFactor(0.8) 
                            Text(cards.city)
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
                            Text(cards.budget)
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
                            Text(cards.available)
                                .font(.system(size: 15))
                                .foregroundColor(.gray)
                        }  .padding(.trailing, 24)

                    }
                }
            }
            
        }
        
    }
}

struct Carditems_Previews: PreviewProvider {
    static var previews: some View {
        Carditems(cards: .init(name: "Khulood", city: "Riyadh", budget: "11k", available: "Now", avatar: 1))
    }
}
