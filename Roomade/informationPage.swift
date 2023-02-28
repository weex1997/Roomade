//
//  informationPage.swift
//  Roomade
//
//  Created by Hajar Alruqi on 24/07/1444 AH.
//

import SwiftUI
import FirebaseAuth
import AuthenticationServices
import FirebaseFirestore

struct informationPage: View {
    
    @State var logIn = LogIn()
    @State var about = "Here are space to write some information about you.."
    @State var interest = ""
    @State var city = ""
    @State var disrticts = ""
    @State var budget = ""
    @State var PeriodOfStay = ""
    @State var RoomType = ""
    @State var Conditions = "Here are space to write you conditions .."
    @State var showProfile = false
    @State private var date = Date()
    
    @State var value = ""
    var placeholder = "Select room type"
    var dropDownList = ["Single Room", "Shared Room", " Both"]
    
    var body: some View {
        ScrollView{
            Group{
                HStack(){
                    Text("This an optional step to present your information to find you from other users. You can set it later from account settings.")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17))
                }.padding()
                HStack(){
                    Text("About you")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                
                HStack{
                    TextEditor(text: self.$about)
                    // make the color of the placeholder gray
                        .foregroundColor(self.about == "Here are space to write some information about you.." ? .gray : .black)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 358,height: 143)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                    
                        .onAppear {
                            // remove the placeholder text when keyboard appears
                            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { (noti) in
                                withAnimation {
                                    if self.about == "Here are space to write some information about you.." {
                                        self.about = ""
                                    }
                                }
                            }
                            
                            // put back the placeholder text if the user dismisses the keyboard without adding any text
                            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { (noti) in
                                withAnimation {
                                    if self.about == "" {
                                        self.about = "Here are space to write some information about you.."
                                    }
                                }
                            }
                        }
                    
                    //                            TextEditor(text: $about)
                    //                                .opacity(0.3)
                    //                                .padding(14)
                    //                                .font(.system(size: 16))
                    //                                .frame(width: 358,height: 143)
                    //                                .overlay(RoundedRectangle(cornerRadius: 5)
                    //                                    .stroke(Color("LightBlueColor"), lineWidth: 1))
                }
            }
            
            HStack(){
                Text("Interest")
                    .foregroundColor(Color("DarkGaryColor"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 17))
            }
            .padding(.bottom,3)
            .padding(.leading,16)
            HStack{
                TextField("Add your interests", text: $interest)
                    .padding(14)
                    .font(.system(size: 16))
                    .frame(width: 358,height: 43)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color("LightBlueColor"), lineWidth: 1))
            }
            HStack(){
                Text("Location")
                    .foregroundColor(Color("DarkGaryColor"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 17))
            }
            .padding(.bottom,3)
            .padding(.leading,16)
            HStack{
                TextField("City", text: $city)
                    .padding(14)
                    .font(.system(size: 16))
                    .frame(width: 358,height: 43)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color("LightBlueColor"), lineWidth: 1))
            }
            HStack(){
                Text("Disrticts")
                    .foregroundColor(Color("DarkGaryColor"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 17))
            }
            .padding(.bottom,3)
            .padding(.leading,16)
            HStack{
                TextField("Type your favourites districts", text: $disrticts)
                    .padding(14)
                    .font(.system(size: 16))
                    .frame(width: 358,height: 43)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color("LightBlueColor"), lineWidth: 1))
            }
            Group{
                HStack(){
                    Text("Budget")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                HStack{
                    TextField("Your budget per month", text: $budget)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 358,height: 43)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                }
                HStack(){
                    Text("Available from")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                HStack{
                    DatePicker("",
                               selection: $date,
                               in: ...Date(),
                               displayedComponents: [.date]
                    )
                    .frame(width: 358,height: 43)
                    .padding(14)
                    .font(.system(size: 16))
                    .frame(width: 358,height: 43)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color("LightBlueColor"), lineWidth: 1))
                }
                HStack(){
                    Text("Period of stay")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                HStack{
                    TextField("9 - 12 months", text: $PeriodOfStay)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 358,height: 43)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                }
                HStack(){
                    Text("Room type")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                Menu {
                    ForEach(dropDownList, id: \.self){ client in
                        Button(client) {
                            self.value = client
                        }
                    }
                } label: {
                    VStack(spacing: 5){
                        HStack{
                            Text(value.isEmpty ? placeholder : value)
                                .foregroundColor(value.isEmpty ? .gray : .black)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color("BlueColor"))
                                .font(Font.system(size: 20, weight: .bold))
                        }
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 358,height: 43)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                    }
                }
                HStack(){
                    Text("Conditions")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                
                HStack{
                    TextEditor(text: self.$Conditions)
                    // make the color of the placeholder gray
                        .foregroundColor(self.Conditions == "Here are space to write you conditions .." ? .gray : .black)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 358,height: 143)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                    
                        .onAppear {
                            // remove the placeholder text when keyboard appears
                            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { (noti) in
                                withAnimation {
                                    if self.Conditions == "Here are space to write you conditions .." {
                                        self.Conditions = ""
                                    }
                                }
                            }
                            
                            // put back the placeholder text if the user dismisses the keyboard without adding any text
                            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { (noti) in
                                withAnimation {
                                    if self.Conditions == "" {
                                        self.Conditions = "Here are space to write you conditions .."
                                    }
                                }
                            }
                        }
                }
                
            }
            
            Group{
                HStack{
                    Toggle(" Make my information visible to find me by roommates", isOn: $showProfile)
                        .toggleStyle(SwitchToggleStyle(tint: Color("ToggleColor")))
                }.padding()
                HStack{
                    Button("save") {
                        let db = Firestore.firestore()
                        let userUID = UserDefaults.standard.string(forKey: "uid")
                        
                        
                        db.collection("users").document(userUID!).setData([
                            "about": about,
                            "interest" : interest,
                            "city" : city,
                            "disrticts" : disrticts,
                            "budget" : budget,
                            "PeriodOfStay" : PeriodOfStay,
                            "RoomType" : value,
                            "Conditions" : Conditions,
                            "showProfile" : showProfile,
                            "Available" : date], merge: true)
                                                
                    }
                    .foregroundColor(Color.white)
                    .font(.system(size: 18,weight: .semibold))
                    .frame(width: 285,height: 54)
                    .background(Color("BlueColor"))
                    .cornerRadius(10)
                }
            }.navigationBarTitle("Information", displayMode: .inline)
                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarTrailing){
                        Button(action: {
                        }, label: {
                            NavigationLink(destination: HomeCard()) {
                                Text("Skip")
                            }
                        })
                    }
                }
        }
    }
}


struct informationPage_Previews: PreviewProvider {
    static var previews: some View {
        informationPage()
    }
}

