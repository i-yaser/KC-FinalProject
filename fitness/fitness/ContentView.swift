//
//  ContentView.swift
//  fitness
//
//  Created by Yasr Alajmi on 23/08/2022.
//

import SwiftUI

struct ContentView: View {
@State var tol = ""
    @State var wzin = ""
    @State var age = ""
    @State var NNN = 0.0
    var body: some View {
        
        NavigationView {
            ZStack{
                
                Color.theme.Colorf                    .ignoresSafeArea()
                
                Circle()
                    .scale(1)
                    .offset(y: -140)
                    .foregroundColor(.white .opacity(0.9))
                
                Circle()
                    .scale(0.4)
                    .offset(y: -155)
                
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
                    
                    Image("LOGO2")
                        .resizable()
                        .frame(width: 190, height: 190)
                        .cornerRadius(550)
                    
                    
                    
                    Text("اهلا بك \n خيارك الأفضل لصحه")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        
                        .frame(width: 200, height: 80)
                        
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
                        .frame(width: 300, height: 50)
                        .background(Color.black .opacity(0.8))
                        .cornerRadius(10)
                        
                    }
      
                        Spacer()
                    
                    

//                    Button {
//                        NNN = BMR(Toool: Double(tol) ?? 0.0 / 100, Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0.0 )
//                    } label: {
//                       Text("اضغط هنا عند الانتهاء")
//                           .padding()
//                            .background(Color(#colorLiteral(red: 0.3598182797, green: 0.4255274534, blue: 0.883906424, alpha: 1)))
//                            .cornerRadius(30)
//                            .frame(width: 300, height: 60)
//                            .foregroundColor(.white)
//                    }
//
//                    Text("\(NNN)")
                    
                    
                
                }
            }.navigationTitle("Fitness")
            
        }
            
//    func BMR(Toool: Double, Wzzen: Double, Age10: Double) -> Double{
//        return 66.5 + (13.75 * Wzzen) + (5.003 * Toool) - (6.75 * Age10)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 11")
    }
}

