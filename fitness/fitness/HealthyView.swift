//
//  HealthyView.swift
//  fitness
//
//  Created by Yasr Alajmi on 29/08/2022.
//

import SwiftUI

struct HealthyView: View {
    var body: some View {
        NavigationView {
  
                ZStack{
                    Color.theme.Bg .ignoresSafeArea()
                    
                    Ellipse()
                        .scale(1.1)
                        .foregroundColor(Color.theme.OnBg .opacity(0.15))
//                    Color.theme.Primary .ignoresSafeArea()
//
//                    Ellipse()
//                        .scale(1.1)
//                        .foregroundColor(Color.theme.PrimaryOn .opacity(0.15))
//
//                    Ellipse()
//                        .scale()
//                        .foregroundColor(Color.theme.PrimaryContainer)
                    

                    
                    VStack{
                        VStack{
                            Text("جدولك الصحي")
                                .font(.title3)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.theme.Outline3)
                            HStack{
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.gray .opacity(0.4))
                                    .offset(x:-20 ,y:35)
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.gray .opacity(0.4))
                                    .offset(x:-8 ,y:35)
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.gray .opacity(0.4))
                                    .offset(x:0 ,y:35)
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color.red .opacity(0.4))
                                    .offset(x:8 ,y:35)
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.gray .opacity(0.4))
                                    .offset(x:15 ,y:35)
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.gray .opacity(0.4))
                                    .offset(x:20 ,y:35)
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.gray .opacity(0.4))
                                    .offset(x:20 ,y:35)

                            }.padding()
                                .frame(width: 1, height: 1)
                            HStack{
                                
                                
                                Text("14")
                                    .padding()
                                    .foregroundColor(Color.theme.Outline)
                                Text("13")
                                    .padding()
                                    .foregroundColor(Color.theme.Outline)
                                Text("12")
                                    .padding()
                                    .foregroundColor(Color.theme.Outline)
                                Text("11")
                                    .padding()
                                    .foregroundColor(Color.theme.Outline)
                                Text("10")
                                    .padding()
                                    .foregroundColor(Color.theme.Outline)
                                Text("9")
                                    .padding()
                                    .foregroundColor(Color.theme.Outline)
                                Text("8")
                                    .padding()
                                    .foregroundColor(Color.theme.Outline)

                                
                                
                                
                                
                                
                                
                            }
                        }
                        .frame(width: 380, height: 150)
                        .background(Color.theme.iColor)
                            .cornerRadius(20)
                        
//                        HStack{
//                            Spacer()
//                                .frame(width: 28, height: 0)
//
//                            Image("LogoDouble")
//                                .resizable()
//                                .frame(width: 80, height: 80)
//
//                            Spacer()
//
//                            Text("صحه")
//                                .font(.title)
//
//                            Image(systemName:"bolt.heart")
//                                .font(.system(size: 30))
//                            Spacer()
//                        }//HStack 1
                        
                        Divider()
                        
                        ScrollView {
                            
                            
                            ForEach(HealthyPhoto0){ Healthy in
                                
                                NavigationLink(destination: ListDait()) {
                                    Image(Healthy.category1)
                                        .resizable()
                                        .cornerRadius(40)
                                    .frame(width: 420, height: 200)
                                }
                            }
                            Divider()
                            
                            ForEach(HealthyPhoto1){ Healthy1 in
                                
                                Image(Healthy1.category1)
                                    .resizable()
                                    .cornerRadius(40)
                                    .frame(width: 420, height: 200)
                            }
                            Divider()
                            
                            ForEach(HealthyPhoto2){ Healthy2 in
                                
                                Image(Healthy2.category1)
                                    .resizable()
                                    .cornerRadius(40)
                                    .frame(width: 420, height: 200)
                                
                            }
                         
                            
                        }
                        
                        
                        .navigationBarTitle("صحه")
                        .navigationBarTitleDisplayMode(.inline)
                        
                        .navigationBarItems(leading: Image("LogoDouble")
                            .resizable() .frame(width: 80, height: 80), trailing:
                                                
                                                Image(systemName:"bolt.heart")
                                            
                        )


                        
                        
        //                TabView(){
        //
        //                    AppView()
        //                        .tabItem {
        //                            Image(systemName: "house")
        //                            Text("Home")
        //                        }
        //                   HealthyView()
        //                        .tabItem{
        //                            Image(systemName: "bolt.heart")
        //                            Text("Healthy")
        //                        }
        //                    ProfileView()
        //                        .tabItem {
        //                            Image(systemName: "person.crop.circle")
        //                            Text("Profile")
        //
        //                        }
        //                } //TabView
                        
                    }//VStack 1
                    
                }
            
        }
    }
}

struct HealthyView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HealthyView()
                .previewDevice("iPhone 11")
                .preferredColorScheme(.light)
            HealthyView()
                .previewDevice("iPhone 11")
                .preferredColorScheme(.dark)
        }
    }
}
