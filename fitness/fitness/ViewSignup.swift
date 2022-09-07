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
    @State var LogInIs = false
    var body: some View {
        ZStack{
            
            Color.black .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 30,style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.pink,.red], startPoint: .topLeading, endPoint: .bottomLeading))
                .frame(width: 1100, height: 470)
                .rotationEffect(.degrees(135))
                .offset( y: -350)

            
//            Color.theme.OnBg2 .opacity(0.8) .ignoresSafeArea()
//
//            Ellipse()
//                .scale(1)
//                .foregroundColor(Color.theme.Primary .opacity(0.15))
//                .offset(y: -10)
//            Ellipse()
//                .scale(0.8)
//                .foregroundColor(Color.theme.OnBg2 .opacity(0.9))
//                .offset(y: -10)
            
            VStack{
                
                
                
                Image("FullLogo2")
                    .resizable()
                    .frame(width: 180, height: 180)
                    .offset(y: 50)
                
//                Picker(selection: $LogInIs,  label: Text("LOL")){
//                    Text("ذكر")
//                        .tag(true)
//                    Text("انثى")
//                        .tag(false)
//                }.pickerStyle(SegmentedPickerStyle())
//                    .padding()
//
//
                
                Text("إنشاء حساب جديد")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .padding()

                TextField("اكتب اسمك", text: $Name)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    .foregroundColor(.black)

                TextField("اكتب الايميل", text: $Email)
                    .keyboardType(.emailAddress)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                SecureField("اكتب كلمة المرور", text: $Password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    .foregroundColor(.black)
                
                TextField("اكتب طولك هنا بالمتر", text: $tol)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    .foregroundColor(.black)
                
                TextField("اكتب وزنك هنا بالكيلو جرام", text: $wzin)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    .foregroundColor(.black)
                TextField("اكتب عمرك هكذا (17.0)", text: $age)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    .foregroundColor(.black)
                
                Spacer()
                    .frame(width: 0, height: 10)
                
                
                
                
               
                
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
                                        .background(Color.theme.Bg)
                                        .cornerRadius(30)
                                        .padding()



                                } //5

                                Button {
                                    MMM = BMR(Toool: Double(tol) ?? 0.0, Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0 )*1.725

                                } label: {
                                    Text("نشيط")
                                        .frame(width: 100, height: 40)
                                        .background(Color.theme.Bg)
                                        .cornerRadius(30)
                                        .padding()

                                        .cornerRadius(30)

                                } //4
                                
                               
                                    Button {
                                                        MMM = BMR(Toool: Double(tol) ?? 0.0, Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0 )*1.550
                                                    
                                                    } label: {
                                                        Text("متوسط النّشاط")
                                                            .frame(width: 100, height: 40)
                                                            .background(Color.theme.Bg
                                                )
                                                            .cornerRadius(30)
                                                            .padding()
                                                           
                                                            .cornerRadius(30)
                                                            
                                                
                                } //3
                            
                                    Button {
                                                       MMM = BMR(Toool: Double(tol) ?? 0.0 , Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0 )*1.375
                                                   
                                                   } label: {
                                                       Text("خفيف النشاط")
                                                           .frame(width: 100, height: 40)
                                                           .background(Color.theme.Bg
                                                           )
                                                           .cornerRadius(30)
                                                           .padding()
                                                          
                                                           .cornerRadius(30)
                                                          
                                               
                                }// 2

                        
                           
                                    Button {
                                                        MMM = BMR(Toool: Double(tol)  ?? 0.0, Wzzen: (Double(wzin) ?? 0.0), Age10: Double(age) ?? 0 )*1.250
                                        
                                                    } label: {
                                                        Text(" خامل")
                                                            .frame(width: 100, height: 40)
                                                            .background(Color.theme.Bg)
                                                            .cornerRadius(30)
                                                            .padding()
                                                            
                                                            .cornerRadius(30)
                                                        
                                                
                                } //1
                                
                               
                            
                            
                           
                        
                    

                        
                            
                        
                       
                            }
                            .background(Color.black) .cornerRadius(20)
                                
                            
                        }.frame(width: 410, height: 80)
                        .cornerRadius(20)

                        VStack{
                        Text("احتياجك اليومي لسعرات الحراريه")
                           
                        Text("\(MMM)")
                            .foregroundColor(.white)
                            
                            
                           Button("إنشاء الحساب"){
                                
                                
                                
       
                            } .foregroundColor(.white)
                                    .frame(width: 300, height: 50)
                                    .background(Color.theme.Primary .opacity(0.8))
                                    .cornerRadius(10)
                            
                            
    //                        NavigationLink(destination: Text("ViewSignup")){
    //                            Text("إنشاء حساب جديد")
    //                            .foregroundColor(.white)
    //                            .frame(width: 300, height: 50)
    //                            .background(Color.black .opacity(0.8))
    //                            .cornerRadius(10)
    //
    //                        }
                            
                    }
                        Spacer()
                            .frame(height: 90)
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
        Group {
            ViewSignup()
                .preferredColorScheme(.light)
                .previewDevice("iPhone 11")
            .previewInterfaceOrientation(.portrait)
            ViewSignup()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 11")
                .previewInterfaceOrientation(.portrait)
        }
    }
}
