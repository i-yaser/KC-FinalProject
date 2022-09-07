//
//  Sett.swift
//  fitness
//
//  Created by Yasr Alajmi on 07/09/2022.
//

import SwiftUI

struct Sett: View {
    var body: some View {
        ZStack{

            RoundedRectangle(cornerRadius: 30,style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.black,.red], startPoint: .topLeading, endPoint: .bottomLeading))
                .frame(width: 1500, height: 1475)
                .rotationEffect(.degrees(135))
                .offset( y: -350)
            
            
            
        }
        

    }
}

struct Sett_Previews: PreviewProvider {
    static var previews: some View {
        Sett()
    }
}
