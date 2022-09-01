//
//  test.swift
//  fitness
//
//  Created by Yasr Alajmi on 01/09/2022.
//

import SwiftUI

struct test: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink(destination: test12()) {
                    Image("photo2500")
                        .resizable()
                        .frame(width: 300, height: 190)
                }
                
                
            }
            .navigationTitle("not non")
        }
        
    }
}

struct test12: View {
    var body: some View {
        ZStack{
            Color.theme.Primary
            
                .navigationTitle("non")
            
            NavigationLink("LOL", destination: Text("Graet"))
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}

