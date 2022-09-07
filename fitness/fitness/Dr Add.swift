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
            
            RoundedRectangle(cornerRadius: 30,style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.black,.red], startPoint: .topLeading, endPoint: .bottomLeading))
                .frame(width: 1500, height: 1475)
                .rotationEffect(.degrees(135))
                .offset( y: -350)
            
//            Color.blue .opacity(0.57) .ignoresSafeArea()
            VStack {
                HStack{
                    Image(systemName: "heart.text.square")
                        .font(.system(size: 64))

                    Text("دكاترة تغذيه في الكويت \n يمكنك التواصل معهم ")
                        .font(.body.bold())
                        .font(.system(size: 24))
                }
                .frame(width: 300, height: 70)
                .padding()
                .background(Color.gray .opacity(0.15))
                .cornerRadius(15)
                
                ScrollView {
                    HStack(spacing: 20){
                        
                        VStack(spacing: 0){
                            Image("ليليان سليم زاهر")
                                .resizable()
                                .frame(width: 70, height: 80)
                                .clipShape(Circle())
                            Text("أخصائي تغذية \n ليليان سليم زاهر")
                                .font(.system(size: 15))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
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
                            Image("نور العمر")
                                .resizable()
                                .frame(width: 70, height: 80)
                                .clipShape(Circle())
                            Text("أخصائي تغذية \n نور العمر")
                                .font(.system(size: 15))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                Spacer()
                            
                                
                                                
                                                Image(systemName: "list.bullet.indent")
                                                    .font(.system(size: 39))
                                                    .foregroundColor(.red)
                            
                                                            
                        }
                        .frame(width: 110, height: 170)
                        .padding()
                        .background(Color.gray .opacity(0.15))
                        .cornerRadius(15)

                        
                        
                        
                        
                        
                        }
                    HStack(spacing: 90){
                        
                        VStack(spacing: 0){
                            Image("هبة بن سلامة")
                                .resizable()
                                .frame(width: 70, height: 80)
                                .clipShape(Circle())
                            Text("أخصائي تغذية \n هبة بن سلامة")
                                .font(.system(size: 15))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
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
                            Image("دكتور مريم التركى")
                                .resizable()
                                .frame(width: 70, height: 80)
                                .clipShape(Circle())
                            Text("أخصائي تغذية \n دكتور مريم التركى")
                                .font(.system(size: 15))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                Spacer()
                            
                                
                                                
                                                Image(systemName: "list.bullet.indent")
                                                    .font(.system(size: 39))
                                                    .foregroundColor(.red)
                            
                                                            
                        }
                        .frame(width: 110, height: 170)
                        .padding()
                        .background(Color.gray .opacity(0.15))
                        .cornerRadius(15)

                        
                        
                        
                        
                        
                        }
                    HStack(spacing: 30){
                        
                        VStack(spacing: 0){
                            Image("سامي زهير البدر")
                                .resizable()
                                .frame(width: 70, height: 80)
                                .clipShape(Circle())
                            Text("أخصائي تغذية \n سامي زهير البدر")
                                .font(.system(size: 15))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
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
                            Image("دكتور مريم التركى")
                                .resizable()
                                .frame(width: 70, height: 80)
                                .clipShape(Circle())
                            Text("أخصائي تغذية \n دكتور مريم التركى")
                                .font(.system(size: 15))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                Spacer()
                            
                                
                                                
                                                Image(systemName: "list.bullet.indent")
                                                    .font(.system(size: 39))
                                                    .foregroundColor(.red)
                            
                                                            
                        }
                        .frame(width: 110, height: 170)
                        .padding()
                        .background(Color.gray .opacity(0.15))
                        .cornerRadius(15)

                        
                        
                        
                        
                        
                        }

                    HStack(spacing: 90){
                        
                        VStack(spacing: 0){
                            Image("جمانة العثمان")
                                .resizable()
                                .frame(width: 70, height: 80)
                                .clipShape(Circle())
                            Text("أخصائي تغذية \n جمانة العثمان")
                                .font(.system(size: 15))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
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
                            Image("ريهام فخر الدين")
                                .resizable()
                                .frame(width: 70, height: 80)
                                .clipShape(Circle())
                            Text("أخصائي تغذية \n ريهام فخر الدين")
                                .font(.system(size: 15))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                Spacer()
                            
                                
                                                
                                                Image(systemName: "list.bullet.indent")
                                                    .font(.system(size: 39))
                                                    .foregroundColor(.red)
                            
                                                            
                        }
                        .frame(width: 110, height: 170)
                        .padding()
                        .background(Color.gray .opacity(0.15))
                        .cornerRadius(15)

                        
                        
                        
                        
                        
                        }

                    
                }
            }.frame(width: 400, height: 800)
        }
        
    }
}

struct Dr_Add_Previews: PreviewProvider {
    static var previews: some View {
        Dr_Add()
    }
}
