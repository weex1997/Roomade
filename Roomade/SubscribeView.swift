//
//  SubscribeView.swift
//  Roomade
//
//  Created by Sumaya Alzahrani on 23/07/1444 AH.
//

import SwiftUI
import StoreKit

struct SubscribeView: View {
    
    
    @StateObject var storeKit = StoreKitManager()
    
  
    var body: some View {
        
        
//          NavigationView {
            
              
        VStack{
          
               // NavigationLink(destination: AccountView()){}
            
            //        Image("sub")
            //                .padding(.bottom, 20)
            
            Image(systemName: "ellipsis.message.fill")
                .foregroundColor(Color("Blue1"))
                .font(.system(size: 70))
                .padding(.bottom, 50)
                .padding(.top, 120)
            
            Text("You have 3/3 free users to contact them")
                .foregroundColor(Color("Dgray"))
                .padding(.bottom, 30)
            
            Divider()
                .frame(width: 350)
                .padding(.bottom, 20)
            
            
            
            
            // .padding(.bottom, 20)
            
            //            Image(systemName: "multiply.circle.fill")
            //                            .foregroundColor(.gray)
            //                            .padding(.trailing, 8)
            
            
            List{
                ForEach(storeKit.storeProducts) { product in
                    HStack{
                        ZStack{
                            RoundedRectangle(cornerRadius:8)
                                .fill(Color(.white))
                                .frame(width: 80, height: 50)
                            // .padding(.trailing, )
                            HStack{
                                Text("6")
                                    .fontWeight(.semibold)
                                // .padding(.trailing, 1)
                                    .foregroundColor(Color("Dgray"))
                                Image(systemName: "person.fill")
                                    .foregroundColor(Color("Blue1"))
                                    .font(.system(size: 20))
                                //.padding(.leading, 30)
                            }
                        }
                        
                        
                        
                        
                        Text(product.displayName)
                            .padding(.leading,10)
                        
                        Spacer()
                        Button(action: {
                            // purchase this product
                            Task { try await storeKit.purchase(product)
                            }
                        }) {
                            CourseItem(storeKit: storeKit, product: product)
                            
                        }
                        
                        
                        
                    }
                    
                }.listRowBackground(Color("Lg"))
                    .scrollContentBackground(.hidden)
                //                List{
                //                    HStack {
                //                        Text(product.displayName)
                //                        Spacer()
                //                        Button(action: {
                //                            // purchase this product
                //                            Task { try await storeKit.purchase(product)
                //                            }
                //                        }) {
                //                            CourseItem(storeKit: storeKit, product: product)
                //
                //                        }
                //                    }.padding(.leading, 20)
                //                        .padding(.trailing, 20)
                //
                //                }
            } .scrollContentBackground(.hidden)
            
            //                        Text("")
            //
            //                        ZStack{
            //                            RoundedRectangle(cornerRadius: 8)
            //                                .fill(Color(.white))
            //                                .frame(width: 80, height: 50)
            //                                .padding(.top, 2)
            //                                .padding(.bottom, 2)
            //
            //
            //                            Text("3")
            //                                .fontWeight(.semibold)
            //                                .padding(.trailing, 30)
            //                                .foregroundColor(Color("Dgray"))
            //                            Image(systemName: "person.fill")
            //                                .foregroundColor(Color("Blue1"))
            //                                .font(.system(size: 20))
            //                                .padding(.leading, 30)
            //                        }
            //
            //                        Text(product.displayName)                        .padding(.leading, 8)
            //
            //
            //                        Button(action: {
            //                            // purchase this product
            //                            Task { try await storeKit.purchase(product)
            //                            }
            //                        }) {
            //                            CourseItem(storeKit: storeKit, product: product)
            //
            //                        }
            //
            //
            //
            //                    }.listRowBackground(Color("Lg"))
            
            
            
            Divider()
            Button("Restore Purchases", action: {
                Task {
                    //This call displays a system prompt that asks users to authenticate with their App Store credentials.
                    //Call this function only in response to an explicit user action, such as tapping a button.
                    try? await AppStore.sync()
                }
            })
            
            
            
            
            
            
            
            //            List {
            //                HStack{
            //                    Text("")
            //                    ZStack{
            //                        RoundedRectangle(cornerRadius:8)
            //                            .fill(Color(.white))
            //                            .frame(width: 80, height: 50)
            //                            .padding(1)
            //
            //                        Text("6")
            //                            .fontWeight(.semibold)
            //                            .padding(.trailing, 30)
            //                            .foregroundColor(Color("Dgray"))
            //                        Image(systemName: "person.fill")
            //                            .foregroundColor(Color("Blue1"))
            //                            .font(.system(size: 20))
            //                            .padding(.leading, 30)
            //                    }
            //
            //
            //
            //
            //                    Text("15 SAR")
            //
            //
            //                    Button(action:  {
            //                    }, label: {
            //                        Image(systemName: "circle")
            //                            .renderingMode(.original)
            //                            .resizable()
            //                            .aspectRatio(contentMode: .fit)
            //                            .frame(width: 18, height: 18)
            //                    })
            //
            //
            //
            //                }.listRowBackground(Color("Lg"))
            //
            //                HStack{
            //                    Text("")
            //                    ZStack{
            //                        RoundedRectangle(cornerRadius: 8)
            //                            .fill(Color(.white))
            //                            .frame(width: 80, height: 50)
            //                            .padding(1)
            //
            //                        Text("10")
            //                            .fontWeight(.semibold)
            //                            .padding(.trailing, 30)
            //                            .foregroundColor(Color("Dgray"))
            //                        Image(systemName: "person.fill")
            //                            .foregroundColor(Color("Blue1"))
            //                            .font(.system(size: 20))
            //                            .padding(.leading, 30)
            //                    }
            //
            //                    Text("30 SAR")
            //
            //                }.listRowBackground(Color("Lg"))
            //
            //            }.background(.white)
            //                .scrollContentBackground(.hidden)
            
            
            
            
            
            
            
            
        }//Vsatck
               
               
        //    NavigationLink(destination: AccountView()){
                
         //   }
            
            
                
//            }//nav
        }
    }
    







struct SubscribeView_Previews: PreviewProvider {
    static var previews: some View {
        SubscribeView()
    }
}




struct CourseItem: View {
    @ObservedObject var storeKit : StoreKitManager
    @State var isPurchased: Bool = false
    var product: Product
    
    var body: some View {
        VStack {
            if isPurchased {
                Text(Image(systemName: "checkmark"))
                    .bold()
                    .padding(10)
            } else {
                Text(product.displayPrice)
                    .padding(10)
            }
        }
        .onChange(of: storeKit.purchasedCourses) { course in
            Task {
                isPurchased = (try? await storeKit.isPurchased(product)) ?? false
            }
        }
    }
}
