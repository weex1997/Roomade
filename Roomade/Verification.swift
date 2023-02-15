//
//  Verification.swift
//  Roomade
//
//  Created by Wedad Almehmadi on 13/02/2023.
//

import SwiftUI

struct Verification: View {
    @State var CodeNumbers = ""
    
    let attrStr = try! AttributedString(markdown: "Verification code sent to\n \n +966 55 223 9009", options: AttributedString.MarkdownParsingOptions(interpretedSyntax: .inlineOnlyPreservingWhitespace))
    
    var body: some View {
        NavigationView {
            VStack{
                
                HStack(){
                    Text("Enter the 4 digit sent to your phone number")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17))
                }
                .padding(.bottom,30)
                .padding(.leading,16)
                HStack{
                   Text(attrStr)
                        .multilineTextAlignment(.leading)
                }
                .frame(width: 358,height: 102)
                .background(Color("GrayColor"))
                .cornerRadius(6)
                .padding(.horizontal,16)
                .padding(.bottom,55)
                HStack{
                    TextField("", text: $CodeNumbers)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 54,height: 54)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("LightBlueColor"), lineWidth: 1))
                    TextField("", text: $CodeNumbers)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 54,height: 54)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("LightBlueColor"), lineWidth: 1))
                    TextField("", text: $CodeNumbers)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 54,height: 54)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("LightBlueColor"), lineWidth: 1))
                    TextField("", text: $CodeNumbers)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 54,height: 54)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("LightBlueColor"), lineWidth: 1))
                }
                HStack{
                    CountdownView()
                }
                HStack{
                    Button("Resend Code") {
                    }
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
