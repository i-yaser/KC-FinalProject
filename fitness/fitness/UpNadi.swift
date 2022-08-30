//
//  UpNadi.swift
//  fitness
//
//  Created by Yasr Alajmi on 30/08/2022.
//

import SwiftUI

struct UpNadi: View {
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
                Text("في الصفحه السابقه \n سوف  تجد الكثير \n من افضل النوادي \n في الكويت اختر \n الذي يعجبك وسوف \n ترا تفاصيل النادي \n ومعلوماته .")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 360)
            }
        }
    }
}

struct UpNadi_Previews: PreviewProvider {
    static var previews: some View {
        UpNadi()
    }
}
