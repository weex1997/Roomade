//
//  SingUP.swift
//  Roomade
//
//  Created by Wedad Almehmadi on 13/02/2023.
//

import SwiftUI

struct SingUP: View {
    
    @State var name = ""
    @State var PhoneNumber = ""
    @State var Birthdate = ""
    @State var Profession = ""
    
    var body: some View {
        NavigationView {
            VStack{
                
                HStack(){
                    Text("Name")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                HStack{
                    TextField("Enter your name", text: $name)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 358,height: 43)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color("LightBlueColor"), lineWidth: 1))
                }
                HStack(){
                    Text("Phone Number")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                HStack{
                    TextField("Add your phone number", text: $name)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 358,height: 43)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color("LightBlueColor"), lineWidth: 1))
                }
                HStack(){
                    Text("Birth date")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                HStack{
                    TextField("18 February 1992", text: $name)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 358,height: 43)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color("LightBlueColor"), lineWidth: 1))
                }
                HStack(){
                    Text("Profession")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                HStack{
                    TextField("Select your profession", text: $name)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 358,height: 43)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color("LightBlueColor"), lineWidth: 1))
                }
                
                HStack{
                    Button("Next") {
                    }
                    .foregroundColor(Color.white)
                    .font(.system(size: 18,weight: .semibold))
                    .frame(width: 285,height: 54)
                    .background(Color("BlueColor"))
                    .cornerRadius(10)
                }
                
                .navigationBarTitle(Text("SIGN UP"))
            }
           
        }
    }
}

struct SingUP_Previews: PreviewProvider {
    static var previews: some View {
        SingUP()
    }
}
