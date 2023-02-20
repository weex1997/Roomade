//
//  SwiftUIView.swift
//  Roomade
//
//  Created by Wedad Almehmadi on 09/02/2023.
//

import SwiftUI

struct SwiftUIView: View {
    
    @StateObject var phoneViewModel = PhoneViewModel()
    
    @State var PhoneNumber = ""
    @State var isActive = false
    @State var SaveData = false
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: Verification(),isActive: $SaveData) {
                }
                NavigationLink(destination: SingUP(),isActive: $isActive) {
                }
                HStack(){
                    Text("Phone Number")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17))
                }
                .padding(.bottom,30)
                .padding(.leading,16)
                HStack{
                    Text("🇸🇦")
                        .font(.system(size: 27))
                        .padding(.leading, 20.0)
                    Divider()
                        .frame(width:1.5)
                        .overlay(Color("DividerColor"))
                        .padding(.horizontal,10)
                        .padding(.vertical,12)
                    TextField("5xxxxxxxx", text: $PhoneNumber)
                        .font(.system(size: 16))
                }
                .frame(width: 358,height: 63)
                .background(Color("GrayColor"))
                .cornerRadius(6)
                .padding(.bottom,55)
                HStack{
                    Button("Login") {
                        phoneViewModel.createUserWithPhoneNumber(phoneNumber: PhoneNumber) { isSuccess in
                            print("DEBUG: phone \(isSuccess)")
                            
                            if (isSuccess == true)
                            {
                                SaveData = true
                            }
                        }
                    }
                    .foregroundColor(Color.white)
                    .font(.system(size: 18,weight: .semibold))
                    .frame(width: 285,height: 54)
                    .background(Color("BlueColor"))
                    .cornerRadius(10)
                }
                HStack{
                    ZStack{
                        Divider()
                            .frame(width:150, height: 2)
                            .overlay(Color("DividerColor"))
                    }
                    Text("Or")
                        .font(.system(size: 16,weight: .medium))
                        .padding(.horizontal,4)
                    ZStack{
                        Divider()
                            .frame(width:150, height: 2)
                            .overlay(Color("DividerColor"))
                    }
                }
                .padding(.top,46)
                .padding(.bottom,54)
                HStack{
                    Image("Google")
                    Button("Continue with Google") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .foregroundColor(Color("BlackColor"))
                    .font(.system(size: 18,weight: .regular))
                }
                .frame(width: 285,height: 54)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("LightBlueColor"), lineWidth: 1)
                )
                .padding(.bottom,20)
                HStack{
                    Image(systemName: "apple.logo")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 28.0, height: 28.0)
                    Button("Continue with Apple") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .foregroundColor(Color.white)
                    .font(.system(size: 18,weight: .regular))
                }.frame(width: 285,height: 54)
                    .background(Color.black)
                    .cornerRadius(10)
                    .padding(.bottom,30)
                HStack{
                    Button {
                        
                        isActive = true
                        
                    }label: {
                        Text("Sing up")
                            .underline()
                            .foregroundColor(Color("PinkColor"))
                            .font(.system(size: 20,weight: .regular))
                    }
                    
                }
                .navigationBarTitle(Text("LOGIN"))
            }
            
            
        }
    }
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
