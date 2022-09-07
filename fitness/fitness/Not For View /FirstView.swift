//
//  FirstView.swift
//  fitness
//
//  Created by Yasr Alajmi on 31/08/2022.
//

import SwiftUI

struct FirstView: View {
    @State var tol = ""
        @State var wzin = ""
        @State var age = ""
        @State var NNN = 0.0
    var body: some View {
        NavigationView {
            ZStack{
                
                Color.theme.Primary .ignoresSafeArea()
                
                RoundedRectangle(cornerRadius: 30,style: .continuous)
                    .foregroundStyle(.linearGradient(colors: [.pink, .red], startPoint: .topLeading, endPoint: .bottomLeading))
                    .frame(width: 1120, height: 475)
                    .rotationEffect(.degrees(135))
                    .offset( y: -350)
                
                
                
//                Ellipse()
//                    .scale(1)
//                    .offset(y: -60)
//                    .foregroundColor(Color.theme.OnBg .opacity(0.95))
//
//                Ellipse()
//                    .scale(0.4)
//                    .offset(y: -60)
//                    .foregroundColor(Color.theme.Bg)
                
//                //
//                VStack{
//                TextField("اكتب طولك هنا بالمتر", text: $tol)
//                    .padding()
//                    .frame(width: 300, height: 50)
//                    .background(Color.black.opacity(0.05))
//                    .cornerRadius(10)
//                    .foregroundColor(.black)
//                Spacer()
//                TextField("اكتب وزنك هنا بالكيلو جرام", text: $wzin)
//                    .padding()
//                    .frame(width: 300, height: 50)
//                    .background(Color.black.opacity(0.05))
//                    .cornerRadius(10)
//                    .foregroundColor(.black)
//                Spacer()
//                TextField("اكتب عمرك مع الشهر مثال (17.3)", text: $age)
//                    .padding()
//                    .frame(width: 300, height: 50)
//                    .background(Color.black.opacity(0.05))
//                    .cornerRadius(10)
//                    .foregroundColor(.black)
//                }
                //
                VStack{
                    
                   Spacer()
                    
                    Image("LOGO")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(550)
                        .offset(x: -130,y: -20)
                    
                
                    
                    Text("اهلا بك \n خيارك الأفضل لصحه")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.theme.Bg)
                        .font(.system(size: 23))
                        .frame(width: 200, height: 80)
                        .padding()
                        .offset(x: -80, y: -20)
                    Spacer()
                    
                    NavigationLink(destination: TheFirst()){
                        Text("تسجيل الدخول")
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.black .opacity(0.8))
                        .cornerRadius(10)
                        
                    }
                   
                    NavigationLink(destination: ViewSignup()){
                        Text("إنشاء حساب جديد")
                            .foregroundColor(.white)
//                            .foregroundStyle(.linearGradient(colors: [.pink, .red], startPoint: .topLeading, endPoint: .bottomLeading))
.frame(width: 300, height: 50)
                        .background(Color.black .opacity(0.8))
                        .cornerRadius(10)
                        
                    }
      
                        Spacer()
                        .frame(height: 190)
                    

                    Spacer()
                
                }
            }.navigationTitle("Fitness")
        }
            
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FirstView()
                .preferredColorScheme(.light)
            FirstView()
                .preferredColorScheme(.dark)
            FirstView()
                .preferredColorScheme(.dark)
        }
            
    }
}
