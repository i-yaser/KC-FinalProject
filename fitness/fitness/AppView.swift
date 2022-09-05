//
//  AppView.swift
//  fitness
//
//  Created by Yasr Alajmi on 28/08/2022.
//

import SwiftUI

struct AppView: View {
    var body: some View {
//        NavigationView {
        ZStack{
            Color.theme.Bg .ignoresSafeArea()
            
            Ellipse()
                .scale(1.1)
                .foregroundColor(Color.theme.OnBg .opacity(0.15))
            VStack(spacing: 10){
                Divider()
            
            
            
                Spacer()
                VStack(spacing: 10){
                    ScrollView(.horizontal){
                        HStack(spacing: 10) {
                            VStack(spacing: 10){
                               Text("اخصائين تغذيه")
                                    .font(.system(size: 20))
                                Text("")
                                
                                HStack(spacing: -10){
                                    ForEach(["سامي زهير البدر","ليليان سليم زاهر","نور العمر"],id: \.self){user in
                                        
                                        Image(user)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 45, height: 45)
                                            .clipShape(Circle())
                                            .background(
                                            Circle()
                                                .stroke(.black,lineWidth: 5)
                                            )
                                    }
                                    
                                }
                            }.padding()
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            VStack(spacing: 80){
                            Button {
                                
                            } label: {
                                Image(systemName: "arrow.up.forward.circle")
                                    .font(.system(size: 29))
                                    .foregroundColor(.red)
                                
                            }

                                NavigationLink(destination: Dr_Add()) {
                                    Image(systemName: "arrow.down.right.circle")
                                        .font(.system(size: 29))
                                        .foregroundColor(.black)

                                }
                            
                            }

                            
                        }
//                        .frame(width: 380, height: 180)
                    
                }//ScrollV
                    
                    .frame(width: 380, height: 180)
                }
                .frame(width: 390, height: 170)
                .background(Color.white)
                .cornerRadius(25)
            
                Divider()
                VStack{
                    Text("القوائم المهمه")
                        .font(.title3)
                        .foregroundColor(Color.theme.Bg)
                        
                    
                    
                   
                        ScrollView{
                            
                            VStack{
                                    ForEach(HomePhoto){ Qphoto in
                                        
                                        HStack{
                                        
                                            Image(Qphoto.photo1)
                                                .resizable()
                                                .frame(width: 200, height: 200)
                                                .cornerRadius(38)
                                            
                                            
                                            
                                         
                                        Image(Qphoto.photo2)
                                            .resizable()
                                            .frame(width: 200, height: 200)
                                            .cornerRadius(38)
                                                
                                           
                                    }
                                    
                                    
                                }
                                
                                
                            }
                            
 
                            
                        }.frame(width: 420, height: 350)
                            .background(Color.theme.OnBg2)
                            .cornerRadius(25)
                    Spacer()
                        .frame(height: 120)
//                    لازم اعدل وافهم شلون تشتغل //
//                    TabView(){
//
//
//                        HealthyView()
//                            .tabItem{
//                                Image(systemName: "bolt.heart")
//                                Text("Healthy")
//                            }
//
//                        AppView()
//                            .tabItem {
//                                Image(systemName: "house")
//                                Text("Home")
//                            }
//
//                        ProfileView()
//                            .tabItem {
//                                Image(systemName: "person.crop.circle")
//                                Text("Profile")
//                            }
//
//                    }
                    
                    
                    
                    
                   
                    
                    }
                
               
                    
                }
                
            .navigationBarTitle("الصفحة الرئيسية")
            .navigationBarTitleDisplayMode(.inline)

            .navigationBarItems(leading: Image("LOGO")
                .resizable() .frame(width: 80, height: 80), trailing:                Image(systemName:"house"))

            
            
            }//ZStack 1
            
//        }//Navig
        
        
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AppView()
                .preferredColorScheme(.light)
            .previewDevice("iPhone 11")
            AppView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 11")
        }
    }
}
