//
//  NadiInfo.swift
//  fitness
//
//  Created by Yasr Alajmi on 30/08/2022.
//

import SwiftUI

struct NadiInfo: View {
    var ourNadi: detailsNadi
    var body: some View {
// ب هذي الصفحه نقدر نعدل على الي داخل List الاسم الصور بكم الخ… //
        
        
        
        
        ZStack{
            Color.theme.PrimaryContainer .ignoresSafeArea()
            
        
            VStack{
                
                VStack {
                    Spacer()
                        .frame(width: 330, height: 0)
                    
                    Image("LogoDouble")
                        .resizable()
                        .frame(width: 80, height: 80)
//                        .offset(x: -30, y: -20)
                    HStack{
                        Image(ourNadi.Name)
                            .resizable()
                            .frame(width: 180, height: 180)
                        Spacer()
                        Text(ourNadi.logo)
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .padding()
                            .foregroundColor(Color.theme.Primary)
                        
                       }//HStack 1
                    .padding()
                .background(.white .opacity(0.3))
                }
             
                 
                HStack{
                    
                    VStack {
                        Text("اماكن فروع النادي:")
                            .font(.system(size: 18))
                            .multilineTextAlignment(.center)
                        .foregroundColor(Color.theme.Colorf)
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Text(ourNadi.Place)
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .offset(x: 20)
                            
                        .foregroundColor(Color.theme.Primary)
                        
                    }
                    
                    Spacer()
                    
                    Text(ourNadi.Prices)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        
                        
                        .foregroundColor(Color.theme.Primary)
                    
                }//HStack 2
                .padding()
                ScrollView(.horizontal){
                    HStack{
                        ForEach(ourNadi.ourPhotoNadi, id:\.self){ nadi in
                            
                            Image(nadi)
                                .resizable()
                                .frame(width: 250, height: 220)
                            
                            
                            
                            
                        }
                    }
                }
                
                HStack{
                    VStack{
                   Image("TW")
                            .resizable()
                            .frame(width: 30, height: 30 )
                        Spacer()
                                 .frame(height:1)
                    
                    Link("اضغط هنا", destination: URL(string: "https://linktr.ee/fitness000")!)
                        .frame(width: 120, height: 40)
//                            .background(Color.white) .cornerRadius(50)
                    }
                    VStack{
                    Image("IN")
                            .resizable()
                            .frame(width: 30, height: 30 )
                        Spacer()
                                 .frame(height:1)
                   
                    
                    Link("اضغط هنا", destination: URL(string: "https://linktr.ee/fitness000")!)
                        .frame(width: 120, height: 40)
//                            .background(Color.white) .cornerRadius(50)
                    }
                    VStack{
                   Image("WW")
                            .resizable()
                            .frame(width: 30, height: 30)
                   Spacer()
                            .frame(height:1)
                    
                    Link("اضغط هنا", destination: URL(string: "https://linktr.ee/fitness000")!)
                        .frame(width: 120, height: 40)
//                            .background(Color.white) .cornerRadius(50)
                    }
                }//HStack 2
                
                .background(.white .opacity(0.11))
                Spacer()
                    .frame(height: 20)
  
                
                }//VStack 1
            
            }//ZStack 1
            
        }
    }

struct NadiInfo_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NadiInfo(ourNadi: detailsNadi(Name: "OXYGEN GYMS | اوكسجين جيم", logo: "OXYGEN GYMS | اوكسجين جيم", Prices: "7K.D/يوم \n 50K.D/شهر1 \n 140K.D/3شهور \n 240K.D/6شهور \n 220K.D/سنه", ourPhotoNadi: ["OXYGEN GYMS | اوكسجين جيم", "OXYGEN GYMS | اوكسجين جيم", "OXYGEN GYMS | اوكسجين جيم", "OXYGEN GYMS | اوكسجين جيم"], Place: "صباح السالم \n الرقعي \n العديلية"))
                .preferredColorScheme(.light)
            NadiInfo(ourNadi: detailsNadi(Name: "OXYGEN GYMS | اوكسجين جيم", logo: "OXYGEN GYMS | اوكسجين جيم", Prices: "7K.D/يوم \n 50K.D/شهر1 \n 140K.D/3شهور \n 240K.D/6شهور \n 220K.D/سنه", ourPhotoNadi: ["OXYGEN GYMS | اوكسجين جيم", "OXYGEN GYMS | اوكسجين جيم", "OXYGEN GYMS | اوكسجين جيم", "OXYGEN GYMS | اوكسجين جيم"], Place: "صباح السالم \n الرقعي \n العديلية"))
                .preferredColorScheme(.dark)
        }
    }
}
