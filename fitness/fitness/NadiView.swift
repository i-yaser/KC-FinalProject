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
                Color.theme.Primary .ignoresSafeArea()
                
                Ellipse()
                    .scale(1.1)
                    .foregroundColor(Color.theme.PrimaryOn .opacity(0.15))
                    .offset(y: -50)
                Ellipse()
                    .scale(0.98)
                    .foregroundColor(Color.theme.PrimaryContainer)
                    .offset(y: -50)
                
                VStack{
                    
                    HStack{
                        Spacer()
                            .frame(width: 28, height: 0)
                        
                        Image("LogoDouble")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .offset(y: -120)
                        Spacer()
                      
                        
//                        Text("قائمة نوادي الكويت")
//                            .font(.title)
                        NavigationLink(destination: UpNadi()){
                        Image(systemName: "list.dash")
                            .font(.system(size: 30))
                        }
                        Spacer()
                       
                    }
                    
                    
                    ZStack {
                        List{
                            ForEach(ourGYM){ nad in
                                
                                NavigationLink(destination: {
                                    
                                    NadiInfo(ourNadi: detailsNadi(Name: "OXYGEN GYMS | اوكسجين جيم", logo: "OXYGEN GYMS | اوكسجين جيم", Prices: "50K.D/m", ourPhotoNadi: ["O2-1", "O2-2", "O2-3", "O2-4", "O2-5"], Place: "العقيله \n جابر العلي \n الجابريه"))
                                    
                                }, label: {
                                    
                                    NoadiTime(nad: nad.Name)
                                    
                                })
                            }
                            
                            
                        }
                        
                        
                        .navigationTitle("قائمة نوادي الكويت")
                    
                    
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
 
        }
    }
}

