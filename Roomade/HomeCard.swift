//
//  HomeCard.swift
//  Roomade
//
//  Created by Khulood Alhamed on 09/02/2023.
//

import SwiftUI

struct HomeCard: View {
    var body: some View {
        
        VStack{
         
            // Profile card
            VStack{
                ZStack{
                      
                    Image("ProfileCard")
                    
                    HStack{
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.white)
                                .frame(width: 66,height: 66)
                            Image("Female")
                        }
                            .padding(.trailing,24)

                        
                        VStack{
                            Text("Welcome,")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                        
                            Text("hklgdhg")
                                .font(.system(size: 25))
                            .frame(width: 75, height: 25, alignment: .center)
                            .lineLimit(1)
                            .minimumScaleFactor(0.8)                        .foregroundColor(.white)
                               

                        } .padding(.trailing, 80)
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                            .padding(.leading,30 )
                        
                    }
                       
                    
                }
                
            } // End of card
    
//            Carditems(cards: .init(name: "Khulood", city: "Riyadh", budget: "1K - 2K", available: "23 Feb", avatar: 1))
//                .padding()
//            Carditems(cards: .init(name: "Lina  ", city: "Jeddah", budget: "2K - 3K", available: "Now", avatar: 1))
            
        } // End of big VStack
        
    } // End of the body
    
} // End of the struct

struct HomeCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeCard()
    }
}
