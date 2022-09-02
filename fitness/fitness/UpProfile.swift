//
//  UpProfile.swift
//  fitness
//
//  Created by Yasr Alajmi on 02/09/2022.
//

import SwiftUI

struct UpProfile: View {
    var body: some View {
        ZStack{
            Color.theme.Primary .ignoresSafeArea()
            
            Ellipse()
                .scale(1.1)
                .foregroundColor(Color.theme.PrimaryOn .opacity(0.15))
                
            Ellipse()
                .scale(0.98)
                .foregroundColor(Color.theme.PrimaryContainer)
                
            VStack{
                Text("")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 360)
            }
        }
        
    }
}

struct UpProfile_Previews: PreviewProvider {
    static var previews: some View {
        UpProfile()
    }
}
