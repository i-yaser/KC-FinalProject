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
                                    Text("")
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
                                /////////// //
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
                                        Text("تمارين")
                                            .font(.system(size: 26))
                                        Image("HealthyNo")
                                            .resizable()
                                            .frame(width: 160, height: 145)
                                    }
                                    Text("")
                                    VStack {
                                        Spacer().frame(height: 15)
                                        NavigationLink(destination: TmarinView()) {
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
                                    Text("")
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
    //
    //                            Divider()
    //
    //                            ForEach(HealthyPhoto1){ Healthy1 in
    //
    //                                Image(Healthy1.category1)
    //                                    .resizable()
    //                                    .cornerRadius(40)
    //                                    .frame(width: 420, height: 200)
    //                            }
    //                            Divider()
    //
    //                            ForEach(HealthyPhoto2){ Healthy2 in
    //
    //                                Image(Healthy2.category1)
    //                                    .resizable()
    //                                    .cornerRadius(40)
    //                                    .frame(width: 420, height: 200)
    //
    //                            }
                             
                                
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


//            .frame(maxWidth: .infinity, alignment: .leading)
