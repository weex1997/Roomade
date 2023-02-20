//
//  Filtermenu.swift
//  Roomade
//
//  Created by Khulood Alhamed on 15/02/2023.
//

import SwiftUI

struct Filtermenu: View {
    var body: some View {
        
        VStack{
            
            DisclosureGroup{
                VStack{
                    Text("Hi")
                }
                
                
                
            } label: {
                VStack(alignment: .leading){
                  
                        Text("City")
                    
                        .font(.system(size: 15))
                    .foregroundColor(.black)
                    
                    
                    
                }
            }
            
        }.frame(width: 100, height: 44)
            .accentColor(.black)
                .font(.title2)
                .foregroundColor(.black)
                .padding(.top, 4)
                .padding(.bottom, 4)
                .padding(.horizontal, 20.0)
            .background(Color.white)
                .cornerRadius(10)
                .padding(.leading,20)
                .padding(.trailing ,20)
                .shadow(color: .gray.opacity(0.2), radius:5,  x:1, y:1)
            
        
    }
}

struct Filtermenu_Previews: PreviewProvider {
    static var previews: some View {
        Filtermenu()
    }
}
