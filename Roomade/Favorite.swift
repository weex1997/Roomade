//
//  Favorite.swift
//  Roomade
//
//  Created by Khulood Alhamed on 27/02/2023.
//

import SwiftUI

struct Favorite: View {
    
    var body: some View {
        
            ZStack{
                Color("Background")
                    .ignoresSafeArea()
                                    VStack{
                                        ZStack{
                                            
                                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                                .fill(.white)
                                                .frame(width: 358,height: 173)
                                            
                                            VStack{
                                                HStack{
                                                    // Gender condition
                                                    ZStack{
                                                    
                                                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                                                .fill(Color("FemaleAvatar"))
                                                                .frame(width: 60,height: 60)
                                                                .padding(.trailing,12 )
                                                                .padding(.leading,17 )
                                                        
                                                       
                                                            Image("0")
                                                        
                                                    }
                                                    VStack{
                                                        Text("Khulood")
                                                            .font(.system(size: 20))
                                                            .foregroundColor(.black)
                                                        
                                                            .lineLimit(1)
                                                            .minimumScaleFactor(0.8)
                                                        Text("Riyadh")
                                                            .font(.system(size: 15))
                                                            .foregroundColor(.gray)
                                                            .padding(.bottom, 10)
                                                            .lineLimit(1)
                                                            .minimumScaleFactor(0.8)
                                                        
                                                    }.padding(.trailing,120 )
                                                    
                                                    // The favorite icon
                                                    
                                                    Image(systemName: "heart.fill")
                                                        .font(.system(size: 22))
                                                        .padding(.bottom, 25)
                                                        .padding(.trailing, 18 )
                                                        .foregroundColor(Color("Pink1"))
                                                    
                                                    //
                                                    //                                                    ZStack{
                                                    //
                                                    //
                                                    //
                                                    //                                                                Button(action: { showImage.toggle() }) {
                                                    //
                                                    //                                                                    Image(systemName: "heart")
                                                    //
                                                    //                                                                        .foregroundColor(.red)
                                                    //
                                                    //                                                                        .font(.system(size: 24))
                                                    //
                                                    //                                                                        .aspectRatio(contentMode: .fill).frame(width: 75, height: 75)
                                                    //
                                                    //                                                                }
                                                    //
                                                    //
                                                    //
                                                    //                                                                if showImage {
                                                    //
                                                    //                                                                    Image(systemName: "heart.fill")
                                                    //
                                                    //                                                                        .foregroundColor(.red)
                                                    //
                                                    //                                                                        .font(.system(size: 24))
                                                    //
                                                    //                                                                        .aspectRatio(contentMode: .fill).frame(width: 75, height: 75)
                                                    //
                                                    //
                                                    //
                                                    //                                                                }
                                                    //
                                                    //
                                                    //
                                                    //
                                                    //
                                                    //                                                            }
                                                }.padding(.bottom, 20)
                                                
                                                
                                                // End of first line
                                                
                                                HStack{
                                                    //Budget section
                                                    Image(systemName: "dollarsign.circle.fill")
                                                        .foregroundColor(Color("CardColor"))
                                                        .font(.system(size: 24))
                                                        .padding(.leading, 24)
                                                        .padding(.trailing, 5)
                                                    
                                                    VStack{
                                                        Text("Budget")
                                                            .foregroundColor(.black)
                                                            .font(.system(size: 15))
                                                            .padding(.trailing,2)
                                                        Text("1K - 2K")
                                                            .font(.system(size: 15))
                                                            .foregroundColor(.gray)
                                                        
                                                    }.padding(.trailing, 60)
                                                    
                                                    // End of the budget
                                                    
                                                    //Available Section
                                                    Image(systemName: "checkmark.circle.fill")
                                                        .foregroundColor(Color("CardColor"))
                                                        .font(.system(size: 24))
                                                        .padding(.trailing, 5)
                                                    
                                                    VStack{
                                                        Text("Available")
                                                            .foregroundColor(.black)
                                                            .font(.system(size: 15))
                                                        Text("2 Mar")
                                                            .font(.system(size: 15))
                                                            .foregroundColor(.gray)
                                                    }  .padding(.trailing, 24)
                                                    
                                                }
                                            }
                                        }.padding(.bottom, 20)
                                        
                                        // Secon card
                                        ZStack{
                                            
                                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                                .fill(.white)
                                                .frame(width: 358,height: 173)
                                            
                                            VStack{
                                                HStack{
                                                    // Gender condition
                                                    ZStack{
                                                    
                                                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                                                .fill(Color("MaleAvatar"))
                                                                .frame(width: 60,height: 60)
                                                                .padding(.trailing,12 )
                                                                .padding(.leading,17 )
                                                        
                                                       
                                                            Image("2")
                                                        
                                                    }
                                                    VStack{
                                                        Text("Faisal")
                                                            .font(.system(size: 20))
                                                            .foregroundColor(.black)
                                                        
                                                            .lineLimit(1)
                                                            .minimumScaleFactor(0.8)
                                                        Text("Jeddah")
                                                            .font(.system(size: 15))
                                                            .foregroundColor(.gray)
                                                            .padding(.bottom, 10)
                                                            .lineLimit(1)
                                                            .minimumScaleFactor(0.8)
                                                        
                                                    }.padding(.trailing,120 )
                                                    
                                                    // The favorite icon
                                                    
                                                    Image(systemName: "heart.fill")
                                                        .font(.system(size: 22))
                                                        .padding(.bottom, 25)
                                                        .padding(.trailing, 18 )
                                                        .foregroundColor(Color("Pink1"))
                                                    
                                                    //
                                                    //                                                    ZStack{
                                                    //
                                                    //
                                                    //
                                                    //                                                                Button(action: { showImage.toggle() }) {
                                                    //
                                                    //                                                                    Image(systemName: "heart")
                                                    //
                                                    //                                                                        .foregroundColor(.red)
                                                    //
                                                    //                                                                        .font(.system(size: 24))
                                                    //
                                                    //                                                                        .aspectRatio(contentMode: .fill).frame(width: 75, height: 75)
                                                    //
                                                    //                                                                }
                                                    //
                                                    //
                                                    //
                                                    //                                                                if showImage {
                                                    //
                                                    //                                                                    Image(systemName: "heart.fill")
                                                    //
                                                    //                                                                        .foregroundColor(.red)
                                                    //
                                                    //                                                                        .font(.system(size: 24))
                                                    //
                                                    //                                                                        .aspectRatio(contentMode: .fill).frame(width: 75, height: 75)
                                                    //
                                                    //
                                                    //
                                                    //                                                                }
                                                    //
                                                    //
                                                    //
                                                    //
                                                    //
                                                    //                                                            }
                                                }.padding(.bottom, 20)
                                                
                                                
                                                // End of first line
                                                
                                                HStack{
                                                    //Budget section
                                                    Image(systemName: "dollarsign.circle.fill")
                                                        .foregroundColor(Color("CardColor"))
                                                        .font(.system(size: 24))
                                                        .padding(.leading, 24)
                                                        .padding(.trailing, 5)
                                                    
                                                    VStack{
                                                        Text("Budget")
                                                            .foregroundColor(.black)
                                                            .font(.system(size: 15))
                                                            .padding(.trailing,2)
                                                        Text("2K - 4K")
                                                            .font(.system(size: 15))
                                                            .foregroundColor(.gray)
                                                        
                                                    }.padding(.trailing, 60)
                                                    
                                                    // End of the budget
                                                    
                                                    //Available Section
                                                    Image(systemName: "checkmark.circle.fill")
                                                        .foregroundColor(Color("CardColor"))
                                                        .font(.system(size: 24))
                                                        .padding(.trailing, 5)
                                                    
                                                    VStack{
                                                        Text("Available")
                                                            .foregroundColor(.black)
                                                            .font(.system(size: 15))
                                                        Text("30 Mar")
                                                            .font(.system(size: 15))
                                                            .foregroundColor(.gray)
                                                    }  .padding(.trailing, 24)
                                                    
                                                }
                                            }
                                        }.padding(.bottom, 280)
                                        
                                    }
                
                                    
                                }
                            }
                        }
                        
                    
                    
                    // End of big VStack
                    
                
            



struct Favorite_Previews: PreviewProvider {
    static var previews: some View {
        Favorite()
    }
}
