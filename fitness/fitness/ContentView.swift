//
//  ContentView.swift
//  fitness
//
//  Created by Yasr Alajmi on 23/08/2022.
//

import SwiftUI
import Firebase
import GoogleSignIn

struct ContentView: View {
    @AppStorage("log_Status") var log_Status = false
    var body: some View {
        
        if log_Status{
            
            NavigationView {
                Nooo()
            }
         
        
        
        }
        else {
            RealLogIn()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)

        }
            
    }
}

//
//        NavigationView {
//            ZStack{
//
//                Color.theme.Primary .ignoresSafeArea()
//
//                RoundedRectangle(cornerRadius: 30,style: .continuous)
//                    .foregroundStyle(.linearGradient(colors: [.pink, .red], startPoint: .topLeading, endPoint: .bottomLeading))
//                    .frame(width: 1120, height: 475)
//                    .rotationEffect(.degrees(135))
//                    .offset( y: -350)
//
//
//

//                VStack{
//
//                   Spacer()
//
//                    Image("LOGO")
//                        .resizable()
//                        .frame(width: 200, height: 200)
//                        .cornerRadius(550)
//                        .offset(x: -130,y: -20)
//
//
//
//                    Text("اهلا بك \n خيارك الأفضل لصحه")
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(Color.theme.Bg)
//                        .font(.system(size: 23))
//                        .frame(width: 200, height: 80)
//                        .padding()
//                        .offset(x: -80, y: -20)
//                    Spacer()
//
//                    NavigationLink(destination: TheFirst()){
//                        Text("تسجيل الدخول")
//                        .foregroundColor(.white)
//                        .frame(width: 300, height: 50)
//                        .background(Color.black .opacity(0.8))
//                        .cornerRadius(10)
//
//                    }
//
//                    NavigationLink(destination: ViewSignup()){
//                        Text("إنشاء حساب جديد")
//                            .foregroundColor(.white)
////                            .foregroundStyle(.linearGradient(colors: [.pink, .red], startPoint: .topLeading, endPoint: .bottomLeading))
//.frame(width: 300, height: 50)
//                        .background(Color.black .opacity(0.8))
//                        .cornerRadius(10)
//
//                    }
//
//                        Spacer()
//                        .frame(height: 190)
//
//
//                    Spacer()
//
//                }
//            }.navigationTitle("Fitness")
//        }
            

