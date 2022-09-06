//
//  Injaz.swift
//  fitness
//
//  Created by Yasr Alajmi on 06/09/2022.
//

import SwiftUI

struct Injaz: View {
    var body: some View {
        VStack{
            Spacer()
                .frame( height: 60)
            HStack {
                Spacer()
                VStack(spacing: 0){
                    HStack{
                        Spacer()
                Text("مجموع")
                    .font(.system(size: 30))
                    }
                    HStack{

                        Spacer()
                Text("0,880")
                    .font(.system(size: 70))
                    
                        
                        
                        
                    }

                    
                    HStack {
                        Spacer()
                        Text("نقاطك")
                            .font(.system(size: 50))
                    }
                }.padding()
                
                
            }
            
            
            HStack(spacing: 30){
                Image("Injaz")
                    .resizable()
                    .frame(width: 90, height: 110)
                    .shadow(color: .black, radius: 7, x: -6, y: 7)
                VStack{
                    Text("الجائزة الأولى")
                        .font(.system(size: 26))
                    Text("اجمع 850 نقطة لفتح الجائزه")
                    
                    
                }
                
                Image(systemName: "chevron.forward")
            }
            .frame(width: 390, height: 120)
            .background(Color.black.opacity(0.05))
            .cornerRadius(15)
            
            HStack(spacing: 30){
                Image("NoInjaz")
                    
                    .resizable()
                    .frame(width: 90, height: 110)
                    .shadow(color: .black, radius: 7, x: -6, y: 7)
                    
                VStack{
                    Text("الجائزة الثانية")
                        .font(.system(size: 26))
                    Text("اجمع 1.500 نقطة لفتح الجائزه")
                    
                    
                }
                
                Image(systemName: "chevron.forward")
            }
            .frame(width: 390, height: 120)
            .background(Color.black.opacity(0.05))
            .cornerRadius(15)
            .foregroundColor(.gray.opacity(0.55))
            
            
            HStack(spacing: 30){
                Image("NoInjaz")
                    
                    .resizable()
                    .frame(width: 90, height: 110)
                    .shadow(color: .black, radius: 7, x: -6, y: 7)
                    
                VStack{
                    Text("الجائزة الثالثة")
                        .font(.system(size: 26))
                    Text("اجمع 3,000 نقطة لفتح الجائزه")
                    
                    
                }
                
                Image(systemName: "chevron.forward")
            }
            .frame(width: 390, height: 120)
            .background(Color.black.opacity(0.05))
            .cornerRadius(15)
            .foregroundColor(.gray.opacity(0.55))
            HStack(spacing: 30){
                Image("NoInjaz")
                    
                    .resizable()
                    .frame(width: 90, height: 110)
                    .shadow(color: .black, radius: 7, x: -6, y: 7)
                    
                VStack{
                    Text("الجائزة الرابعة")
                        .font(.system(size: 26))
                    Text("اجمع 3.850 نقطة لفتح الجائزه")
                    
                    
                }
                
                Image(systemName: "chevron.forward")
            }
            .frame(width: 390, height: 120)
            .background(Color.black.opacity(0.05))
            .cornerRadius(15)
            .foregroundColor(.gray.opacity(0.55))


            Image("hhhh")
                .resizable()
                .frame(width: 60, height: 110)
                .offset(x: -10, y: -680)

        }
    }
}

struct Injaz_Previews: PreviewProvider {
    static var previews: some View {
        Injaz()
    }
}
