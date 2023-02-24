//
//  Splash.swift
//  Roomade
//
//  Created by Amani Almutairi  on 01/08/1444 AH.
//

import SwiftUI

struct Splash: View {
    var body: some View {
        
            
            ZStack {
                Color("Gray")
                    .ignoresSafeArea()
                
                
                
                VStack{
                    
                    Image("Image 1")
                        .resizable()
                        .frame(width: 390.0, height: 500.0)
                        .cornerRadius(8)
                        .position(x: 200, y:250)
                    
                    
                    VStack{
                        Text("Find your Roommate")
                            .font(.custom("Helvetica", size: 25))
                            .bold()
                            .frame(width: 256, height: 36, alignment: .center)
                        // .padding(.bottom,30)
                        
                        VStack{
                            Text("Simple, quicker, safer way to search who to live with!")
                                .fontWeight(.light)
                                .font(.custom("Helvetica", size: 18))
                                .frame(width: 227, height: 48, alignment: .center)
                            
                        }
                        
                        Button("Get Started") {
                        }
                        .frame(width: 219, height: 45)
                        .foregroundColor(Color.white)
                        .background(Color("Blue1"))
                        .cornerRadius(8)
                        
                        .padding(.all)
                        
                    }
                }.padding(.bottom,30)
            }
        }
    }

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
