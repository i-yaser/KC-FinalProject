//
//  Sett.swift
//  fitness
//
//  Created by Yasr Alajmi on 07/09/2022.
//

import SwiftUI

struct Sett: View {
    @State var Email = ""
    var body: some View {
        NavigationView {
            ZStack{

                RoundedRectangle(cornerRadius: 30,style: .continuous)
                    .foregroundStyle(.linearGradient(colors: [.black,.red], startPoint: .topLeading, endPoint: .bottomLeading))
                    .frame(width: 1500, height: 1475)
                    .rotationEffect(.degrees(135))
                    .offset( y: -350)
                
                 
                HStack {
                    VStack(){
                            Image("CUKUR")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                            Text("YASER ALAJMI")
                                .font(.title2)
                                .foregroundColor(.white)
                            Spacer()
                                .frame(height: 3)
        Text("@UserName")
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                        
                        Spacer()
                            .frame(height: 40)

                        HStack(spacing: 30){
                            VStack(spacing: 30){
                                Image(systemName: "stethoscope.circle.fill")
                                Image(systemName: "house.circle.fill")
                                Image(systemName: "person.crop.circle.fill")
                                Image(systemName: "phone.circle.fill")
                                Image(systemName: "gearshape.circle.fill")
                   

                            }
                            
                            VStack(spacing: 30){
                                NavigationLink(destination: Dr_Add()) {
                                    Text("دكاترة التغذيه")
                                }
                                
                                
                                Text("نوادي")
                                
                                Text("حسابك الشخصي")
                                
                                Text("لتواصل معنا")
                                
                                Text("الإعدادات")

                            }
                            
                        }.font(.system(size: 22))
                            .foregroundColor(.white)
                        
                        Spacer() .frame( height: 40)
                        
                        Text("اذا كنت تريد حاسبة السعرات \n اتجه الى الصغحة الرئيسية.")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                        Spacer().frame( height: 170)
                        
                        
                        
                        
                        
                        
                        
    //                    VStack(spacing:10){
    //                    HStack(spacing:20){
    //                            Image(systemName: "stethoscope.circle.fill")
    //                            Text("دكاترة التغذيه")
    //                    }.font(.system(size: 22))
    //                            .foregroundColor(.white)
    //                        HStack(spacing:10){
    //                            Image(systemName: "person.crop.circle.fill")
    //                            Text("حسابك الشخصي")
    //                        }.font(.system(size: 22))
    //                            .foregroundColor(.white)
    //                        HStack(spacing:20){
    //                            Image(systemName: "")
    //                            Text("")
    //                        }.font(.system(size: 22))
    //                            .foregroundColor(.white)
    //                        HStack(spacing:20){
    //                            Image(systemName: "")
    //                            Text("")
    //                        }.font(.system(size: 22))
    //                            .foregroundColor(.white)
    //                        HStack(spacing:20){
    //                            Image(systemName: "")
    //                            Text("")
    //                        }.font(.system(size: 22))
    //                            .foregroundColor(.white)
    //                    }
    //
    //
    //
                        VStack {
                            HStack{
                            Button {
                                
                            } label: {
                                HStack{
                                    Image(systemName: "lock.shield.fill")
                                    Text("تسجيل خروج")
                                }.font(.system(size: 23)).padding(.trailing)
                                    .foregroundColor(.black)
                            }
                               
                            }
                     
                                Text("App version 1.0")
                            
//                            Text("App virsen 1.0")
                        }
                        
    //
                        .navigationBarTitle("الإعدادات")
                        .navigationBarTitleDisplayMode(.inline)
//                    leading: Image("LOGO")
//                        .resizable() .frame(width: 80, height: 80),
                        .navigationBarItems(trailing:
                            Image(systemName:"gearshape.fill"))
 
                        

                        }
                        .padding(.trailing)
                    Spacer()
                }.frame(width: 360, height: 900)
                
                
            }
        }
        

    }
}

struct Sett_Previews: PreviewProvider {
    static var previews: some View {
        Sett()
    }
}
