//
//  Dr Add.swift
//  fitness
//
//  Created by Yasr Alajmi on 05/09/2022.
//

import SwiftUI

struct Dr_Add: View {
    var body: some View {
        ZStack{
//            Color.blue .opacity(0.57) .ignoresSafeArea()
            VStack {
                VStack{
                    
                    
                }
                .frame(width: 300, height: 70)
                .padding()
                .background(Color.gray .opacity(0.15))
                .cornerRadius(15)
                
                ScrollView {
                    HStack(spacing: 40){
                        
                        VStack(spacing: 0){
                            Image("ليليان سليم زاهر")
                                .resizable()
                                .frame(width: 70, height: 80)
                                .clipShape(Circle())
                            Text("أخصائي تغذية \n ليليان سليم زاهر")
                                .font(.system(size: 15))
                                .multilineTextAlignment(.center)
                                Spacer()
                            
                                
                            NavigationLink(destination: Dr1()) {
                                Image(systemName: "list.bullet.indent")
                                    .font(.system(size: 39))
                                    .foregroundColor(.red)
                            }
                                                
                            
                                                            
                        }
                        .frame(width: 110, height: 170)
                        .padding()
                        .background(Color.gray .opacity(0.15))
                        .cornerRadius(15)
                        //end nnn
                        VStack(spacing: 0){
                            Image("ليليان سليم زاهر")
                                .resizable()
                                .frame(width: 70, height: 80)
                                .clipShape(Circle())
                            Text("أخصائي تغذية \n ليليان سليم زاهر")
                                .font(.system(size: 15))
                                .multilineTextAlignment(.center)
                                Spacer()
                            
                                
                                                
                                                Image(systemName: "list.bullet.indent")
                                                    .font(.system(size: 39))
                            
                                                            
                        }
                        .frame(width: 110, height: 170)
                        .padding()
                        .background(Color.gray .opacity(0.15))
                        .cornerRadius(15)

                        
                        
                        
                        
                        
                        }
                    
                }
            }
        }
        
    }
}

struct Dr_Add_Previews: PreviewProvider {
    static var previews: some View {
        Dr_Add()
    }
}
