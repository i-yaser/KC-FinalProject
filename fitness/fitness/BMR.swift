//
//  BMR.swift
//  fitness
//
//  Created by Yasr Alajmi on 06/09/2022.
//

import SwiftUI

struct BMR: View {
    var body: some View {
        ZStack{
            
            VStack{
                Image("BBMRu")
                    .resizable()
                    .frame(width: 190, height: 190)
                
                Rectangle()
                    .fill()
                    .frame(height: 6)
                    
                Text("حاسبة BMR")
                    .font(.system(size: 25))
                
                Rectangle()
                    .fill()
                    .frame(height: 6)

                
                Text("- حاسبة السعرات الحرارية (BMR) هي عملية حسابية تقوم على حساب عدد السعرات الحرارية المستهلكة يوميا للشخص (ذكر /أنثى) بناء على عدة عوامل مثل الطول, الوزن, العمر, النوع, ونوعية النشاط اليومي البدني.")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 19))
                
                Spacer()
                    .frame(height: 30)
                HStack {
                    Text("")
                    Spacer()

                    
                    VStack(spacing: 20){
                        
                        
                        NavigationLink(destination: BMRww()) {
                            HStack{
                                Text("أنثى")
                                    .font(.system(size: 35))
                                    .foregroundColor(.pink)

                                Image(systemName: "arrow.right.square.fill")
                                    .font(.system(size: 49))
                                    .foregroundColor(.pink)

                                
                            }.padding()
                                .frame(width: 440, height: 80)
                                .background(.black .opacity(0.11))

                        }
                        NavigationLink(destination: BMRmm()) {
                            HStack{
                                Text("ذكر")
                                    .font(.system(size: 35))
                                    .foregroundColor(.blue)

                                Image(systemName: "arrow.right.square.fill")
                                    .font(.system(size: 49))
                                    .foregroundColor(.blue)

                            }.padding()
                                .frame(width: 440, height: 80)
                                .background(.black .opacity(0.11))

                        }
                        
                        
                        
                        
                    }
                    
                }
                Text("- تختلف حسبة السعرات حسب الشخص انثى ام ذكر")
                    .font(.system(size: 14))

                Spacer()
                    .frame( height: 60)



                
            }
            
        }
        
    }
}

struct BMR_Previews: PreviewProvider {
    static var previews: some View {
        BMR()
    }
}
