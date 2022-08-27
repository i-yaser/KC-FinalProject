//
//  ViewSignup.swift
//  fitness
//
//  Created by Yasr Alajmi on 27/08/2022.
//

import SwiftUI

struct ViewSignup: View {
    @State private var Email = ""
    @State private var Password = ""
    @State var Name = ""
    //
    @State var tol = ""
    @State var wzin = ""
    @State var age = ""
    @State var MMM = 0.0
    //
    var body: some View {
        ZStack{
            Color.theme.Background .opacity(0.8) .ignoresSafeArea()
            
            Circle()
                .scale(1.7)
                .foregroundColor(.white .opacity(0.15))
                
            Circle()
                .scale(1.35)
                .foregroundColor(.white)
            
            VStack{
                
                Image("LOGO2")
                    .resizable()
                    .frame(width: 180, height: 180)
                    .offset(y: 60)
                Text("إنشاء حساب جديد")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .padding()
                
                TextField("اكتب اسمك", text: $Name)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .foregroundColor(.black)
                
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
                
                TextField("اكتب طولك هنا بالمتر", text: $tol)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .foregroundColor(.black)
                
                TextField("اكتب وزنك هنا بالكيلو جرام", text: $wzin)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .foregroundColor(.black)
                TextField("اكتب عمرك هكذا (17.0)", text: $age)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .foregroundColor(.black)
                
                Spacer()
                    .frame(width: 0, height: 60)
                
                
                
                
               
                
               
                VStack {
                    
                    Text("ما هو نمط حياتك:")
                        .font(.body)
                    
                    ScrollView(.horizontal) {
                        HStack{
                        
                        Button {
                                                MMM = BMR(Toool: Double(tol) ?? 0.0 / 100, Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0)*1.900
                            
                                            } label: {
                                                Text("شديد النشاط")
                                                    .frame(width: 100, height: 40)
                                                    .background(Color.theme.Background)
                                                    .cornerRadius(30)
                                                    .padding()
                                                    
                                                    
                                                    
                                            } //5

                        Button {
                                                 MMM = BMR(Toool: Double(tol) ?? 0.0, Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0 )*1.725
                            
                                            } label: {
                                                Text("نشيط")
                                                    .frame(width: 100, height: 40)
                                                    .background(Color.theme.Background)
                                                    .cornerRadius(30)
                                                    .padding()
                                                   
                                                    .cornerRadius(30)
                                                   
                                            } //4
                        
                        Button {
                                                MMM = BMR(Toool: Double(tol) ?? 0.0, Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0 )*1.550
                                            
                                            } label: {
                                                Text("متوسط النّشاط")
                                                    .frame(width: 100, height: 40)
                                                    .background(Color.theme.Background)
                                                    .cornerRadius(30)
                                                    .padding()
                                                   
                                                    .cornerRadius(30)
                                                    
                                            } //3
                        
                        Button {
                                               MMM = BMR(Toool: Double(tol) ?? 0.0 , Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0 )*1.375
                                           
                                           } label: {
                                               Text("خفيف النشاط")
                                                   .frame(width: 100, height: 40)
                                                   .background(Color.theme.Background)
                                                   .cornerRadius(30)
                                                   .padding()
                                                  
                                                   .cornerRadius(30)
                                                  
                                           }// 2

                    
                       
                            Button {
                                                MMM = BMR(Toool: Double(tol)  ?? 0.0, Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0 )*1.250
                                
                                            } label: {
                                                Text(" خامل")
                                                    .frame(width: 100, height: 40)
                                                    .background(Color.theme.Background)
                                                    .cornerRadius(30)
                                                    .padding()
                                                    
                                                    .cornerRadius(30)
                                                   
                                            } //1
                            
                           
                        
                        
                       
                    
                

                    
                        
                    
                   
                        } .background(.white) .cornerRadius(20)
                        
                    }
                    VStack{
                    Text("احتياجك اليومي لسعرات الحراريه")
                       
                    Text("\(MMM)")
                        .foregroundColor(.white)
                        
                    }
                }
                
                
                
                
                
                
                
                
                
                
                
            }
           
    }
}
    func BMR(Toool: Double, Wzzen: Double, Age10: Double) -> Double{
        return (66.5) + (13.75 * Wzzen) + (5.003 * Toool) - (6.75 * Age10)
        
        
        // For men: BMR = 66.5 + (13.75 * weight in kg) + (5.003 * height in cm) - (6.75 * age)
        
        // For women: BMR = 655.1 + (9.563 * weight in kg) + (1.850 * height in cm) - (4.676 * age)
        
    }
}
struct ViewSignup_Previews: PreviewProvider {
    static var previews: some View {
        ViewSignup()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 11")
    }
}
