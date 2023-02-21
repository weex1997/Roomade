//
//  Onboarding.swift
//  Roomade
//
//  Created by Amani Almutairi  on 01/08/1444 AH.
//

import SwiftUI

struct Logo: View {
@State var isActive : Bool = false
@State private var size = 0.5
@State private var opacity = 0.5

//@AppStorage("isUserOnboarded") var isUserOnboarded: Bool = false

var body: some View {
    
//    if isActive {
//        if !isUserOnboarded {
//            onbording()
//        } else {
//            ContentView()
//        }
//    } else {
    ZStack {
        Color("Blue1")
            .ignoresSafeArea()

        
        Image("Logo")
            .resizable()
            .scaledToFit()
           
            .frame(width: 90, height: 128)
            .aspectRatio(0.3, contentMode: .fit)
            .scaleEffect(size)
            .opacity(opacity)
            .padding(.bottom,-10)
        
        VStack{
            Text("ROOMADE")
                //.font(Montserrat)
                .bold()
                .font(.title)
                .font(.system(size: 24,weight: .semibold))
                .foregroundColor(Color.white)
                .frame(width: 163, height: 29)
                 .padding(.top,180)
            
           
            
            
        }
        
         
    } .onAppear {
        withAnimation(.easeIn(duration: 1.2)) {
            self.size = 2.00
            self.opacity = 2.00
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.7) {
            withAnimation {
                self.isActive = true
            }
        }
        
    }
}


}
//}

struct Logo_Previews: PreviewProvider {
static var previews: some View {
    Logo()
}
}

