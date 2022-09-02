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
                    Color.theme.Primary .ignoresSafeArea()
                    
                    Ellipse()
                        .scale(1.1)
                        .foregroundColor(Color.theme.PrimaryOn .opacity(0.15))
                        
                    Ellipse()
                        .scale()
                        .foregroundColor(Color.theme.PrimaryContainer)
                    

                    
                    VStack{
                        
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
        HealthyView()
            .previewDevice("iPhone 11")
            .preferredColorScheme(.light)
    }
}
