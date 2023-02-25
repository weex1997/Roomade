//
//  informationPage.swift
//  Roomade
//
//  Created by Hajar Alruqi on 24/07/1444 AH.
//

import SwiftUI

struct informationPage: View {
    
    
    @State var about = "Here are space to write some information about you.."
    @State var interest = ""
    @State var city = ""
    @State var disrticts = ""
    @State var Budget = ""
    @State var AvailableFrom = ""
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
                    TextEditor(text: $about)
                        .opacity(0.3)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 358,height: 143)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
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
                    TextField("Your budget per month", text: $Budget)
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
                               displayedComponents: [.date])
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
                //                    HStack{
                //                        TextField("9 - 12 months", text: $PeriodOfStay)
                //                            .padding(14)
                //                            .font(.system(size: 16))
                //                            .frame(width: 358,height: 43)
                //                            .overlay(RoundedRectangle(cornerRadius: 5)
                //                                .stroke(Color("LightBlueColor"), lineWidth: 1))
                //                    }
                HStack(){
                    Text("Conditions")
                        .foregroundColor(Color("DarkGaryColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 17))
                }
                .padding(.bottom,3)
                .padding(.leading,16)
                HStack{
                    TextEditor(text: $about)
                        .opacity(0.3)
                        .padding(14)
                        .font(.system(size: 16))
                        .frame(width: 358,height: 143)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color("LightBlueColor"), lineWidth: 1))
                }
            }
            Group{
                HStack{
                    Toggle(" Make my information visible to find me by roommates", isOn: $showProfile)
                        .toggleStyle(SwitchToggleStyle(tint: Color("ToggleColor")))
                }.padding()
                HStack{
                    Button("save") {
                    }
                    .foregroundColor(Color.white)
                    .font(.system(size: 18,weight: .semibold))
                    .frame(width: 285,height: 54)
                    .background(Color("BlueColor"))
                    .cornerRadius(10)
                }
            }
        }.navigationBarTitle("Information", displayMode: .inline)
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    NavigationLink(
                        destination: AccountView(),
                        label: {
                            Text("Skip")
                        })
                }
            }
    }
    
}

struct informationPage_Previews: PreviewProvider {
    static var previews: some View {
        informationPage()
    }
}

