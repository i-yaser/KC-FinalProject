//
//  HealthyView.swift
//  fitness
//
//  Created by Yasr Alajmi on 29/08/2022.
//

import SwiftUI

struct HealthyView: View {

    var body: some View {
//        NavigationView {
  
                ZStack{
                    Color.theme.Bg .ignoresSafeArea()
                    
                    Ellipse()
                        .scale(1.1)
                        .foregroundColor(Color.theme.OnBg .opacity(0.15))
                    
                    VStack{
                        ScrollView(.horizontal) {
                            VStack{
                                Text("نصايح")
                                    .font(.title3)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.theme.Outline3)
                            }
                            .frame(width: 380, height: 150)
                            .background(Color.theme.iColor)
                        .cornerRadius(20)
                        }
                        
                        Divider()
                        
                        HStack {
                            
                            ScrollView {
                                
                                
                                HStack(alignment: .top, spacing: 30){
                                    VStack(spacing: 10){
                                        Circle()
                                        .fill(.black)
                                        .frame(width: 15, height: 15)
                                        .background(
                                        
                                        Circle()
                                            .stroke(.black,lineWidth: 1)
                                            .padding(-3)
                                        )
                                        
                                        Rectangle()
                                            .fill()
                                            .frame(width: 3)
                                        
                                    }

                                    VStack(spacing: 10){
                                        Text("التغذيه")
                                            .font(.system(size: 26))
                                        Image("DIET PLAN")
                                            .resizable()
                                            .frame(width: 160, height: 130)
                                    }
                                    Spacer()
                                        .frame(width: 20)
                                    VStack {
                                        Spacer().frame(height: 15)
                                        NavigationLink(destination: Homei()) {
                                            Image(systemName: "arrow.forward")
                                                .foregroundStyle(.white)
                                                .padding(10)
                                                .background(Color.black,in: RoundedRectangle(cornerRadius: 10))
                                            
                                                
                                        }
                                    }//End nav
                                }
                                
                                    .padding()
                                    .frame(width: 380, height: 200, alignment: .top)
                                    .background(.white)
                                    .cornerRadius(25)
                                    .frame(width: 383, height: 203)
                                    .background(.black)
                                    .cornerRadius(26)

                                /////////// //
                                HStack(alignment: .top, spacing: 30){
                                    VStack(spacing: 10){
                                        Circle()
                                        .fill(.red)
                                        .frame(width: 15, height: 15)
                                        .background(
                                        
                                        Circle()
                                            .stroke(.red,lineWidth: 1)
                                            .padding(-3)
                                        )
                                        
                                        Rectangle()
                                            .fill(.red)
                                            .frame(width: 3)
                                        
                                    }

                                    VStack(spacing: 10){
                                        Text("تمارين")
                                            .font(.system(size: 26))
                                            .foregroundColor(.red)
                                        Image("HealthyNo")
                                            .resizable()
                                            .frame(width: 160, height: 145)
                                    }
                                    Spacer()
                                        .frame(width: 20)
                                    VStack {
                                        Spacer().frame(height: 15)
                                        NavigationLink(destination: TmarinView()) {
                                            Image(systemName: "arrow.forward")
                                                .foregroundStyle(.white)
                                                .padding(10)
                                                .background(Color.red,in: RoundedRectangle(cornerRadius: 10))
                                                
                                        }
                                    }//End nav
                                }
                                
                                    .padding()
                                    .frame(width: 380, height: 200, alignment: .top)
                                    .background(.white)
                                    .cornerRadius(25)
                                    .frame(width: 383, height: 203)
                                    .background(.red)
                                    .cornerRadius(26)

                                
                                HStack(alignment: .top, spacing: 30){
                                    VStack(spacing: 10){
                                        Circle()
                                        .fill(.black)
                                        .frame(width: 15, height: 15)
                                        .background(
                                        
                                        Circle()
                                            .stroke(.black,lineWidth: 1)
                                            .padding(-3)
                                        )
                                        
                                        Rectangle()
                                            .fill()
                                            .frame(width: 3)
                                        
                                    }

                                    VStack(spacing: 10){
                                        Text("التغذيه")
                                            .font(.system(size: 26))
                                        Image("DIET PLAN")
                                            .resizable()
                                            .frame(width: 160, height: 130)
                                    }
                                    Spacer()
                                        .frame(width: 20)
                                    VStack {
                                        Spacer().frame(height: 15)
                                        NavigationLink(destination: Homei()) {
                                            Image(systemName: "arrow.forward")
                                                .foregroundStyle(.white)
                                                .padding(10)
                                                .background(Color.black,in: RoundedRectangle(cornerRadius: 10))
                                                
                                        }
                                    }//End nav
                                }
                                
                                    .padding()
                                    .frame(width: 380, height: 200, alignment: .top)
                                    .background(.white)
                                    .cornerRadius(25)
                                 
                                
                            }
                            
                            
                            .navigationBarTitle("صحه")
                            .navigationBarTitleDisplayMode(.inline)
                            
                            .navigationBarItems(leading: Image("LOGO")
                                .resizable() .frame(width: 80, height: 80), trailing:
                                                    
                                                    Image(systemName:"bolt.heart")
                                                
                        )
                        }


                        
                        
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
            
//        } nav
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


//            .frame(maxWidth: .infinity, alignment: .leading)
