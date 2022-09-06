//
//  Timer1.swift
//  fitness
//
//  Created by Yasr Alajmi on 06/09/2022.
//

import SwiftUI

struct Timer1: View {
    @State var DOownTimer = 30
    @State var Timerun = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
            Text("\(DOownTimer)")
                .onReceive(timer) { _ in
                    if DOownTimer > 0 && Timerun {
                        DOownTimer -= 1
                    } else{
                        Timerun = false
                    }
                }
                .font(.system(size: 80, weight: .bold))
                .opacity(0.80)
            HStack{
                Button("ابدا"){
                    Timerun = true
                }.font(.system(size: 30))
                    .foregroundColor(.blue)
                Spacer()
                    .frame(width: 50)
                    Button("اعادة"){
                        DOownTimer = 30
                    }.font(.system(size: 25))
                        .foregroundColor(.red)
                
            }
        }
        
    }
}

struct Timer1_Previews: PreviewProvider {
    static var previews: some View {
        Timer1()
    }
}
