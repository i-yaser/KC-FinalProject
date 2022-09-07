//
//  Remo.swift
//  fitness
//
//  Created by Yasr Alajmi on 07/09/2022.
//

import SwiftUI

struct Remo: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 1, green: 0.1982503235, blue: 0.2719399929, alpha: 1)) .ignoresSafeArea()
//            (#colorLiteral(red: 1, green: 0.1982503235, blue: 0.2719399929, alpha: 1))
            RoundedRectangle(cornerRadius: 30,style: .continuous)
                .fill(Color.theme.Primary)
//                .foregroundStyle(.linearGradient(colors: [.pink,.red], startPoint: .topLeading, endPoint: .bottomLeading))
                .frame(width: 1100, height: 475)
                .rotationEffect(.degrees(135))
                .offset( y: -350)
            
            Image("LOGO10")
                .resizable()
                .frame(width: 200, height: 200)
                .offset(x: -6, y: -10)
        }
    }
}

struct Remo_Previews: PreviewProvider {
    static var previews: some View {
        Remo()
    }
}
