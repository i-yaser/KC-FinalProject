//
//  AppView.swift
//  fitness
//
//  Created by Yasr Alajmi on 28/08/2022.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        NavigationView {
        ZStack{
            Color.theme.Primary .ignoresSafeArea()
            
            Ellipse()
                .scale(1.1)
                .foregroundColor(Color.theme.PrimaryOn .opacity(0.15))
                
            Ellipse()
                .scale(1)
                .foregroundColor(Color.theme.PrimaryContainer)
            
            VStack{
                //                Image("LOGO")
                //                    .resizable()
                //                    .frame(width: 80, height: 80)

//            HStack{
//
//                Spacer()
//                    .frame(width: 28, height: 0)
//
//                Image("LOGO")
//                    .resizable()
//                    .frame(width: 80, height: 80)
//
//                Spacer()
//
//                Text("الصفحه الرئيسيه")
//                    .font(.title)
//                    .foregroundColor(Color.theme.Background)
//                Image(systemName: "house")
//                Spacer()
//
//            } //HStack 1
                Divider()
            
            
            
                
                    ScrollView(.horizontal){
                        HStack{
                    ForEach(AdAdAd){ Ad in
                        
                        
                            Image(Ad.PhotoAd)
                                .resizable()
                                .frame(width: 310, height: 200)
                        
                        } // ForEach 1
                    
                    }//HStack 2
                        .background(Color.black)
                    
                }//ScrollView 1
                
                Divider()
                VStack{
                    Text("القوائم المهمه")
                        .font(.title3)
                        .foregroundColor(Color.theme.Background)
                        
                    
                    
                   
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
                            
 
                            
                        }.frame(width: 420, height: 300)
                    Spacer()
                        .frame(height: 190)
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
            
        }//Navig
        
        
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 11")
    }
}
