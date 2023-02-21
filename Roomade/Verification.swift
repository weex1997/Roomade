//
//  Verification.swift
//  Roomade
//
//  Created by Wedad Almehmadi on 13/02/2023.
//

import SwiftUI

struct Verification: View {
    
    @StateObject var phoneViewModel = PhoneViewModel()
        
    @State var pin1 = ""
    @State var pin2 = ""
    @State var pin3 = ""
    @State var pin4 = ""
    @State var pin5 = ""
    @State var pin6 = ""
        
    let attrStr = try! AttributedString(markdown: "Verification code sent to\n", options: AttributedString.MarkdownParsingOptions(interpretedSyntax: .inlineOnlyPreservingWhitespace))
    
    init(pin1: String = "", pin2: String = "", pin3: String = "", pin4: String = "", pin5: String = "", pin6: String = "") {
        self.pin1 = pin1
        self.pin2 = pin2
        self.pin3 = pin3
        self.pin4 = pin4
        self.pin5 = pin5
        self.pin6 = pin6
    }
    let phoneNumber = UserDefaults.standard.string(forKey: "phoneNumber") ?? "nil"
    let name = UserDefaults.standard.string(forKey: "name") ?? "nil"
    let Birthdate = UserDefaults.standard.string(forKey: "Birthdate") ?? "nil"
    let Gender = UserDefaults.standard.integer(forKey: "Gender")
    
    @State var ActiveResendCode = false

    @State var isActive = false
    @State var SaveData = false
    
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: Verification(),isActive: $SaveData) {
                }
                NavigationLink(destination: SingUP(),isActive: $isActive) {
                }
                HStack{
                    Text("Enter the 4 digit sent to your phone number")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(width: 299,alignment: .leading)
                        .font(.system(size: 17,weight: .regular))
                }
                .padding(.leading,-55)
                .padding(.bottom,30)
                HStack{
                    Text("\(attrStr)+966 \(phoneNumber)")
                        .multilineTextAlignment(.leading)
                        .frame(width: 299,alignment: .leading)
                        .padding(.leading)
                    
                    Button {
                        isActive = true
                    } label: {
                        Image(systemName: "pencil")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color("DarkGaryColor"))
                            .frame(width: 25.0, height: 25.0)
                            .padding(.leading,-20)
                        .padding(.top,30)
                    }

                    
                }
                .frame(width: 358,height: 102)
                .background(Color("GrayColor"))
                .cornerRadius(6)
                .padding(.horizontal,16)
                .padding(.bottom,55)
                HStack{
                    TextField("", text: $pin1)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 54,height: 54)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                        .keyboardType(.numberPad)
                    
                    TextField("", text: $pin2)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 54,height: 54)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                    TextField("", text: $pin3)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 54,height: 54)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                    TextField("", text: $pin4)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 54,height: 54)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                    TextField("", text: $pin5)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 54,height: 54)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                    TextField("", text: $pin6)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 54,height: 54)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                }.padding(.bottom,33)
                HStack{
                    CountdownView()
                                    }
               
                HStack{
                    Button {
                        let CodeNumbers = pin1+pin2+pin3+pin4+pin5+pin6
                        
                        print(CodeNumbers)
                        
                        DispatchQueue.main.async {
                            phoneViewModel.verifySMSCode(verificationCode: CodeNumbers, phoneNumber: phoneNumber, name: name,Birthdate: Birthdate,Gender: Gender) { isSuccess in
                                print("DEBUG: in code \(isSuccess)")
                                if (isSuccess == true)
                                {
                                    SaveData = true
                                }
                            }
                        }
                        } label: {
                            Text("Next")
                                .foregroundColor(Color.white)
                                .font(.system(size: 18,weight: .semibold))
                                .frame(width: 285,height: 54)
                                .background(Color("BlueColor"))
                                .cornerRadius(10)
                        }
                        
                        
                        
                        
                    }
                    .navigationBarTitle(Text("Verification Code"))
                }
            }
        }
    }

struct Verification_Previews: PreviewProvider {
    static var previews: some View {
        Verification()
    }
}
