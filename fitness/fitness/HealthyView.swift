//
//  HealthyView.swift
//  fitness
//
//  Created by Yasr Alajmi on 29/08/2022.
//

import SwiftUI

struct HealthyView: View {
    var body: some View {
        ZStack{
            Color.theme.Primary .ignoresSafeArea()
            
            Ellipse()
                .scale(1.1)
                .foregroundColor(Color.theme.PrimaryOn .opacity(0.15))
                
            Ellipse()
                .scale()
                .foregroundColor(Color.theme.PrimaryContainer)
            VStack{
                
                
                
                
                
                
                
                
                
                
                
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
                
            }
        }
    }
}

struct HealthyView_Previews: PreviewProvider {
    static var previews: some View {
        HealthyView()
            .preferredColorScheme(.light)
    }
}
