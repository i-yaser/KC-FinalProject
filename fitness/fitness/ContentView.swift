//
//  ContentView.swift
//  fitness
//
//  Created by Yasr Alajmi on 23/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            
            TabView{
               
               
                 AppView()
                 .tabItem {
                Image(systemName: "house")
                Text("Home")
                                           }
                HealthyView()
                .tabItem{
                 Image(systemName: "bolt.heart")
                  Text("Healthy")
                                           }
               NadiView()
                    .tabItem {
                        Image(systemName: "location.circle.fill")
                        Text("location")
                    }
                 ProfileView()
                  .tabItem {
                 Image(systemName: "person.crop.circle")
                  Text("Profile")
                                           }
                
            }
        }
        
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 11")
    }
}

