//
//  AccountView.swift
//  Roomade
//
//  Created by Sumaya Alzahrani on 21/07/1444 AH.
//

import SwiftUI
import FirebaseAuth
import AuthenticationServices
import FirebaseFirestore

struct AccountView: View {
    
    let name = UserDefaults.standard.string(forKey: "name") ?? "nil"
    @State var logIn = LogIn()
    @State var isPresent = false
    let Gender = UserDefaults.standard.string(forKey: "Gender") ?? "nil"
    let city = UserDefaults.standard.string(forKey: "city") ?? "nil"
    let userdef = UserDefaults.standard.dictionaryRepresentation
    @StateObject var viewModel = userViewModel()
    
    func ResetDay() {
        for (key, value) in UserDefaults.standard.dictionaryRepresentation() {
            print("\(key) = \(value) \n")
        }
        //        print("Hi")
    }
    
    var body: some View {
        VStack{
            ZStack{
                
                Image("c")
                
                VStack{
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .frame(width: 80,height: 80)
                        
                        
                        if (Gender == "1") {
                            Image("0")
                        }
                        else {
                            Image("2")
                        }
                    }//zstack
                    
                    Text(name)
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Text(city)
                        .font(.footnote)
                        .foregroundColor(.white)
                    
                }//vstack
                
            }//big zstack for card account details
            .padding(.bottom, 36)
            
            
            
            VStack{
                
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.white)
                        .frame(width:360, height: 65)
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("g"), lineWidth: 1)
                        .frame(width:360, height: 65)
                    
                    NavigationLink {
                        userProfile()
                    } label: {
                        Text("Information")
                        
                            .foregroundColor(.black)
                        //Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                            .padding(.leading, 220)
                    }
                }//zstack of info
                
                
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.white)
                        .frame(width:360, height: 65)
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("g"), lineWidth: 1)
                        .frame(width:360, height: 65)
                    
                    NavigationLink {
                        SubscribeView()
                    } label: {
                        Text("Favourate")
                            .foregroundColor(.black)
                        //Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                            .padding(.leading, 225)
                    }
                }//zstack of fav
                
                
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.white)
                        .frame(width:360, height: 65)
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("g"), lineWidth: 1)
                        .frame(width:360, height: 65)
                    
                    NavigationLink {
                        SubscribeView()
                    } label: {
                        Text("Subscription")
                            .foregroundColor(.black)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                            .padding(.leading, 203)
                    }
                }//zstack of sub
                
                
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.white)
                        .frame(width:360, height: 65)
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("g"), lineWidth: 1)
                        .frame(width:360, height: 65)
                    
                    HStack{
                        NavigationLink(destination: HomeCard().navigationBarBackButtonHidden(true), isActive: $isPresent){}
                        Button {
                            //ResetDay()
                            logIn.signOut()
                            viewModel.isLogged = false
                            isPresent = true

                        } label: {
                            Text("Log Out")
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .padding(.leading, 234)
                            
                        }
                    }//hstack of list
                }//zstack of logout
                
                
            }//vstack of list
            .padding(.bottom, 200)
        }//vstack
    }//body
}//strcut

struct AccountView_Previews: PreviewProvider {
    
    static var previews: some View {
        AccountView()
    }
}


