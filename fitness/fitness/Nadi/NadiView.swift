//
//  NadiView.swift
//  fitness
//
//  Created by Yasr Alajmi on 30/08/2022.
//

import SwiftUI

struct NadiView: View {
    var body: some View {
        NavigationView{
            
            ZStack{
                Color.theme.Bg .ignoresSafeArea()
                
                Ellipse()
                    .scale(1.1)
                    .foregroundColor(Color.theme.OnBg .opacity(0.15))
//                Color.theme.Primary .ignoresSafeArea()
//
//                Ellipse()
//                    .scale(1.1)
//                    .foregroundColor(Color.theme.PrimaryOn .opacity(0.15))
//                    .offset(y: -50)
//                Ellipse()
//                    .scale(0.98)
//                    .foregroundColor(Color.theme.PrimaryContainer)
//                    .offset(y: -50)
                
                VStack{
                    
//                    HStack{
//                        Spacer()
//                            .frame(width: 28, height: 0)
//
//                        Image("LogoDouble")
//                            .resizable()
//                            .frame(width: 80, height: 80)
//                            .offset(y: -0)
//                        Spacer()
//
//
////                        Text("قائمة نوادي الكويت")
////                            .font(.title)
//                        Spacer()
//
//                    }
//
                    
                    ZStack {
                        List{
                            ForEach(ourGYM){ nad in
                                
                                NavigationLink(destination: {
                                    
                                    NadiInfo(ourNadi: nad)
                                    
                                }, label: {
                                    
                                    NoadiTime(nad: nad.Name)
                                    
                                })
                            }
                            
                            
                        }
                        
                        
                        .navigationBarTitle("قائمة نوادي الكويت")
                        .navigationBarTitleDisplayMode(.inline)

                        .navigationBarItems(leading:Image("LOGO") .resizable() .frame(width: 80, height: 80)
                                            , trailing:
                                                NavigationLink(destination: UpNadi()){
                            Image(systemName:"info.circle")
                                                         })
                                            
                }//VS
                
            }//ZS
            
 
        }//N
    }
}
}
struct NadiView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NadiView()
            NadiView()
                .preferredColorScheme(.dark)
 
        }
    }
}

