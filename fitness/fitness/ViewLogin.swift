//
//  TheFirst.swift
//  fitness
//
//  Created by Yasr Alajmi on 25/08/2022.
//

import SwiftUI

struct TheFirst: View {
    @State private var Email = ""
    @State private var Password = ""
    @State private var LogIn = ""

    var body: some View {
        NavigationView {
            ZStack{
                Color.theme.Colorf .opacity(0.8) .ignoresSafeArea()
                
                Circle()
                    .scale(1.7)
                    .foregroundColor(Color.theme.Colorjj .opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(Color.theme.Colorjj)
                
                VStack{
                    
                    Image("LOGO2")
                        .resizable()
                        .frame(width: 180, height: 180)
                    
                    Text("تسجيل الدخول")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                        .padding()
                    
                    TextField("اكتب الايميل", text: $Email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                    TextField("اكتب كلمة المرور", text: $Password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                    
                    Button("تسجيل الدخول"){
                        
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.theme.Colorf .opacity(0.8))
                    .cornerRadius(10)
                    
                    Button("هل نسيت كلمة المرور؟"){
                        
                        
                    }
                    .font(.system(size: 14))
                    .foregroundColor(Color.theme.Colorf .opacity(0.8))
                    .frame(width: 200, height: 20)
                    
                    Spacer()
                        .frame(width: 00, height: 60)
                }
                
            }
        }
        }
    
}

struct TheFirst_Previews: PreviewProvider {
    static var previews: some View {
        TheFirst()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 11")
    }
}
