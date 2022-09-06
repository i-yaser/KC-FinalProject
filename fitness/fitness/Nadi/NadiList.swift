//
//  NadiList.swift
//  fitness
//
//  Created by Yasr Alajmi on 30/08/2022.
//

import SwiftUI

struct NoadiTime: View {
    @State var nad: String
    var body: some View {
 //ب هذي الصفحه نقدر نعدل على List شكله و و و الخ… //
               
            VStack{
                
        HStack{
            Image(nad)
                .resizable()
                .frame(width: 130, height: 130)
            Spacer()
            Text(nad)
            Spacer()
            
            
            
            
           }//HStack 1
         }//VStack 1
        
  }
}


struct NadiList_Previews: PreviewProvider {
    static var previews: some View {
        NoadiTime(nad : "")
    }
}
