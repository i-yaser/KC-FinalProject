//
//  Dr1.swift
//  fitness
//
//  Created by Yasr Alajmi on 05/09/2022.
//

import SwiftUI

struct Dr1: View {
    var body: some View {
        VStack{
            Image("ليليان سليم زاهر")
                .resizable()
                .frame(width: 200, height: 200)
//                .clipShape(Circle())
                .cornerRadius(20)
                .frame(width: 204, height: 204)
                .background(.black)
                .cornerRadius(20)
            
            Text("ليليان زاهر \n أخصائي التغذية ،أخصائي علاج البدانة")
                .font(.system(size: 16))
                .multilineTextAlignment(.center)
            
            Rectangle()
                .fill(.gray)
                .frame(height: 6)

            HStack {
                Spacer()
                Text("نبذة عن الطبيب")
                    .font(.system(size: 19))
                    .foregroundColor(.black)
                    .padding()
            }

            
            Text("ليليان زاهر متخصصة في تقديم الإستشارة الغذائية لنطاق واسع من العلاجات بما في ذلك فقدان الوزن، والرياضة والتغذية والوجبات الغذائية للحمل والرضاعة. وعلاوة على ذلك، توفر السيدة زاهر الخطط الغذائية المتخصصة للمرضى الذين يعانون من أمراض مزمنة مثل السكري، وارتفاع الكولسترول، والفشل الكلوي وارتفاع ضغط الدم واضطرابات الجهاز الهضمي. السيدة زاهر هي أيضا حريصة على تقديم الإستشارة الغذائية للأطفال بتقنية متطورة فريدة من نوعها طبع الغذاء، لتختبر وتحصل على معلومات عن نوع الأكل الذي يتحمله كل شخص.")
                .multilineTextAlignment(.trailing)
                
            Rectangle()
                .fill(.gray)
                .frame(height: 4)
            VStack {
                HStack {
                    Spacer()
                        .frame(width:320)
                    Text("التعليم:")
                }
                Text("~ درجة البكالوريوس, الجامعة الأمريكية في بيروت, لبنان ~")
//                    .padding()
            }
            
            
            VStack {
                HStack {
                    Spacer()
                    Text("مؤهلات الطبيب")
                }
                Text("1-التراخيص / التصاريح:  وزارة الصحة الكويتية")
                Spacer()
                    .frame(height: 10)
                
                Text("2-المستشفى المعتمد لديه:  انترناشونال كلينك")
                    .multilineTextAlignment(.center)
                
                VStack{
                Image("IN")
                        .resizable()
                        .frame(width: 30, height: 30 )
                    Spacer()
                             .frame(height:1)
               
                
                Link("اضغط هنا", destination: URL(string: "https://www.instagram.com/dietliliane/")!)
                    .frame(width: 140, height: 40)
//                            .background(Color.white) .cornerRadius(50)
                }

                
            }

        }
    }
}

struct Dr1_Previews: PreviewProvider {
    static var previews: some View {
        Dr1()
    }
}
