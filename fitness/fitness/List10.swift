//
//  List10.swift
//  fitness
//
//  Created by Yasr Alajmi on 02/09/2022.
//

import SwiftUI

struct List10: View {
    @State var For: String
    var body: some View {
        HStack{
            Image(For)
                .resizable()
                .frame(width: 300, height: 200)
        }
    }
}
struct List10_Previews: PreviewProvider {
    static var previews: some View {
        List10(For: "")
    }
}
