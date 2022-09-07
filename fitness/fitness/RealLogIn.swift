//
//  RealLogIn.swift
//  fitness
//
//  Created by Yasr Alajmi on 07/09/2022.
//

import SwiftUI
import Firebase
import GoogleSignIn
struct RealLogIn: View {
    @State private var Email = ""
    @State private var Password = ""
    @State private var LogIn = ""
    
    @State var isLoading : Bool = false
    
    @AppStorage("log_Status") var log_Status = false
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
                    .offset(x: -110, y: -89)
                Text("تسجيل الدخول")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding()

                
                
                
                
                
                
                Button {
                    handleLogin()
                } label: {
                    
                    HStack(spacing: 15){
                        
                        Image("Google")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 28, height: 28)
                        
                        Text(" إنشاء حساب")
                            .font(.title3)
                            .fontWeight(.medium)
                            .kerning(1.1)
                        
                    }
                    .foregroundColor(.blue)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(width: 350, height: 60)
                    .background(
                    
                    Capsule()
                        .strokeBorder(Color.blue)
                    )

                    .background(.white)
                    .cornerRadius(30)
                }.padding(.top,25)

                Text("")
                
                
                
                
                
                
                
                
                
                
//                TextField("ادخل الايميل", text: $Email)
//                    .keyboardType(.emailAddress)
//                    .foregroundColor(.black)
//                    .textFieldStyle(.plain)
//                    .frame(width: 350, height: 28)
//                    .placeholder(when: Email.isEmpty) {
//                        Text("ادخل الايميل")
//                            .foregroundColor(.white)
//                            .bold()
//
//                    }
//
//                Rectangle()
//                    .frame(width: 350, height: 1)
//                    .foregroundColor(.white)
//
//                //                        .padding()
////                        .frame(width: 300, height: 50)
////                        .background(Color.black.opacity(0.05))
////                        .cornerRadius(10)
////                        .foregroundColor(.black)
//                SecureField("اكتب كلمة المرور", text: $Password)
//                    .foregroundColor(.white)
//                    .textFieldStyle(.plain)
//                    .frame(width: 350, height: 30)
//                    .placeholder(when: Password.isEmpty) {
//                        Text("كلمة المرور")
//                            .foregroundColor(.white)
//                            .bold()
//                    }
//
//
//
////                        .padding()
////                        .frame(width: 300, height: 50)
////                        .background(Color.black.opacity(0.05))
////                        .cornerRadius(10)
////                        .foregroundColor(.black)
//
//
//
//                Rectangle()
//                    .frame(width: 350, height: 1)
//                    .foregroundColor(.white)
//
//                Spacer() .frame(height: 70)
//
//                Button {
//                    register()
//                } label: {
//                    Text("تسجيل الدخول")
//                .foregroundColor(.white)
//                .frame(width: 300, height: 50)
//                .background(Color.black .opacity(0.8))
//                .cornerRadius(10)
//                }
//
//
//                Button {
//                    register()
//                } label: {
//
//                    Text("ليس لديك حساب ؟ سجل الان")
//                        .bold()
//                        .foregroundColor(.white)
//                }
//
//
////                    Button("هل نسيت كلمة المرور؟"){
////
////
////                    }
////                    .font(.system(size: 14))
////                    .foregroundColor(Color.black .opacity(0.8))
////                    .frame(width: 200, height: 20)
////
                Spacer()
                    .frame(width: 00, height: 60)
                

            }
            
            
            
            
        }
        .overlay(
        
            ZStack{
                
                if isLoading{
                    Color.black
                        .opacity(0.25)
                        .ignoresSafeArea()
                    
                    ProgressView()
                        .font(.title2)
                        .frame(width: 60, height: 60)
                        .background(Color.white
                            .cornerRadius(10))
                }
            }
        
        )
    }
//    func login(){
//        Auth.auth().signIn(withEmail: Email, password: Password){ result, error in
//            if error != nil {
//                print(error!.localizedDescription)
//
//            }
//        }
//                           }
//
//    //
//    func register() {
//        Auth.auth().createUser(withEmail: Email, password: Password){
//            result, erorr in if erorr != nil {
//                print(erorr!.localizedDescription)
//            }
//        }
//
//
//}
//    func getAttributedString(String:String)->String{
//        var attributedString = AttributedString(String)
//
//        if let range = attributedString.range(of: "Term of serviec"){
//
//
//            attributedString[range].foregroundColor = .black
//            attributedString[range].font = .body.bold()
//        }
//
//                           return attributedString
//    }
    func handleLogin(){
        
        
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)

        isLoading = true
        
        
        GIDSignIn.sharedInstance.signIn(with: config, presenting: getRootViewController()) {[self] user, err in
            
            if let error = err {
                isLoading = false
                print(error.localizedDescription)
              return
            }

            guard
              let authentication = user?.authentication,
              let idToken = authentication.idToken
            else {
                isLoading = false
              return
            }

            let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                           accessToken: authentication.accessToken)
            
            
            Auth.auth().signIn(with: credential) { result, err in
                
                isLoading = false
                
                if let error = err {
                    print(error.localizedDescription)
                  return
                }

                
                guard let user  = result?.user else{
                    return
                    
                }
                
                print(user.displayName ?? "Success!")
                
                withAnimation {
                    log_Status = true
                }
            }
        }
    }
}

struct RealLogIn_Previews: PreviewProvider {
    static var previews: some View {
        RealLogIn()
    }
}


extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}


func getRootViewController()->UIViewController{
    guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else{
        return .init()
    }
    
    guard let root = screen.windows.first?.rootViewController else{
        return .init()
    }
    
    return root
}
