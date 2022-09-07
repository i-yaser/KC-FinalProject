//
//  Timer3.swift
//  fitness
//
//  Created by Yasr Alajmi on 06/09/2022.
//

import SwiftUI

struct Timer3: View {
    @State var DOownTimer = 120
    @State var Timerun = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var aleart = false
    var body: some View {
        VStack(spacing:30){
            Spacer()

            Circle()
                .fill(.gray.opacity(0.55))
                .frame(width: 130, height: 130)
                .offset( y: 140)
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
                    .frame(width: 120, height: 40)
                    .background(.black.opacity(0.3))
                    .cornerRadius(20)
                
                       Spacer()
                    .frame(width: 50)
                    Button("اعادة"){
                        DOownTimer = 120
                    }.font(.system(size: 25))
                        .foregroundColor(.red)
                        .frame(width: 120, height: 40)
                        .background(.black.opacity(0.3))
                        .cornerRadius(20)
                
            }
            Spacer()
                .frame( height: 305)
            Button {
                aleart = true
            } label: {
                Text("احصل على الهديه👏🏻").frame(width: 200, height: 40)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            }.alert(isPresented: $aleart){
                Alert(title: Text("تم كسب 300 نقطة🥳"), dismissButton: .default(Text("كمل")))
        
        }
        }
        
    }
}

struct Timer3_Previews: PreviewProvider {
    static var previews: some View {
        Timer3()
    }
}
