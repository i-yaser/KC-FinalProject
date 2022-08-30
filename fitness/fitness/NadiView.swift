//
//  NadiView.swift
//  fitness
//
//  Created by Yasr Alajmi on 30/08/2022.
//

import SwiftUI

struct NadiView: View {
    var body: some View {
        NavigationView{
            
            ZStack{
                Color.theme.Primary .ignoresSafeArea()
                
                Ellipse()
                    .scale(1.1)
                    .foregroundColor(Color.theme.PrimaryOn .opacity(0.15))
                Ellipse()
                    .scale(0.98)
                    .foregroundColor(Color.theme.PrimaryContainer)
               
            }//ZS
            
 
        }//N
    }
}

struct NadiView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NadiView()
            NadiView()
                .preferredColorScheme(.dark)
        }
    }
}
