//
//  TheFirst.swift
//  fitness
//
//  Created by Yasr Alajmi on 25/08/2022.
//

import SwiftUI
import Firebase

struct TheFirst: View {
    @State private var Email = ""
    @State private var Password = ""
    @State private var LogIn = ""

    var body: some View {
      
            ZStack{
                
                Color.theme.Primary .ignoresSafeArea()
                
                RoundedRectangle(cornerRadius: 30,style: .continuous)
                    .foregroundStyle(.linearGradient(colors: [.pink,.red], startPoint: .topLeading, endPoint: .bottomLeading))
                    .frame(width: 1100, height: 475)
                    .rotationEffect(.degrees(135))
                    .offset( y: -350)
                

                VStack{
                    
                    Image("FullLogo")
                        .resizable()
                        .frame(width: 180, height: 180)
                    
                    Text("تسجيل الدخول")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding()
                    TextField("ادخل الايميل", text: $Email)
                        .keyboardType(.emailAddress)
                        .foregroundColor(.white)
                        .textFieldStyle(.plain)
                        .frame(width: 350, height: 28)
                        .placeholder(when: Email.isEmpty) {
                            Text("ادخل الايميل")
                                .foregroundColor(.white)
                                .bold()
                            
                        }
                    
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(.white)
                    
                    //                        .padding()
//                        .frame(width: 300, height: 50)
//                        .background(Color.black.opacity(0.05))
//                        .cornerRadius(10)
//                        .foregroundColor(.black)
                    SecureField("اكتب كلمة المرور", text: $Password)
                        .foregroundColor(.white)
                        .textFieldStyle(.plain)
                        .frame(width: 350, height: 30)
                        .placeholder(when: Password.isEmpty) {
                            Text("كلمة المرور")
                                .foregroundColor(.white)
                                .bold()
                        }
                    
                    
                    
//                        .padding()
//                        .frame(width: 300, height: 50)
//                        .background(Color.black.opacity(0.05))
//                        .cornerRadius(10)
//                        .foregroundColor(.black)
                    
                    
                    
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(.white)

                    Spacer() .frame(height: 70)
                    NavigationLink(destination: ContentView()){
                        Text("تسجيل الدخول")
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.black .opacity(0.8))
                    .cornerRadius(10)
                    }
                    
                    Button("هل نسيت كلمة المرور؟"){
                        
                        
                    }
                    .font(.system(size: 14))
                    .foregroundColor(Color.theme.Primary .opacity(0.8))
                    .frame(width: 200, height: 20)
                    
                    Spacer()
                        .frame(width: 00, height: 60)
                }
                
            }
        
        }
    
}

struct TheFirst_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TheFirst()
                .preferredColorScheme(.light)
            .previewDevice("iPhone 11")
            TheFirst()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 11")
        }
    }
    
}

extension View {
    func placeholder<Contact: View>(
        when shouldshow: Bool,
alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Contact) -> some View {
            
            ZStack(alignment: alignment){
                placeholder().opacity(shouldshow ? 1 : 0)
                self
            }
        }
}
