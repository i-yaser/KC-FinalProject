//
//  HealthyView0.swift
//  fitness
//
//  Created by Yasr Alajmi on 02/09/2022.
//

import SwiftUI

struct HealthyView0: View {
    var ourList: DaitListModel
    var body: some View {
        
        ZStack {
            Color.theme.iColor .ignoresSafeArea()
            VStack {
////                HStack{
////                    Image(ourList.PhotoDait)
////                        .resizable()
////                        .frame(width: 100, height: 60)
////                        .cornerRadius(39)
////                        .offset(x: -140)
////
//                }
                VStack{
                    Text("•نسبة 20/40/40: هو نظام قليل جداً من الدسم، ويحتوي في الوقت نفسه علي البروتينات.")
                        .multilineTextAlignment(.center)
                        .frame(width: 420, height: 50)
                        .font(.system(size: 17))
                        .background(Color.theme.For40 .opacity(0.3))
                    Divider()
                    Text("•نسبة 50/20/30: هو نظام يحتوي على كمية معقولة من الدهون، وقليل جداً من الكربوهيدرات.")
                        .multilineTextAlignment(.center)
                        .frame(width: 420, height: 50)
                        .font(.system(size: 17))
                        .background(.blue .opacity(0.3))

                    Divider()
                    Text("•نسبة 30/50/20: هو نظام معروف جداً، ونتائجه سريعه للغايه.")
                        .multilineTextAlignment(.center)
                        .frame(width: 420, height: 50)
                        .font(.system(size: 17))
                        .background(.black .opacity(0.3))



                    .navigationTitle("2500 سعره حراريه")
                    .navigationBarTitleDisplayMode(.automatic)


                } .background(.white .opacity(0.4))

                ScrollView {
                    VStack{
                        Text("rf")
                    }
                }
            }
            //                    Text("سعره حراريه")
            //
//                                .navigationBarTitle("سعره حراريه")
//                                .navigationBarTitleDisplayMode(.automatic)
//
                                .navigationBarItems(leading:
//                                                        Image("LOGO")
//                                    .resizable() .frame(width: 80, height: 80)
                                                    Image(ourList.PhotoDait)
                                                        .resizable()
                                                        .frame(width: 100, height: 60)
                                                        .cornerRadius(39)
//                                                        .offset(x: 20)

//                                                    , trailing:                Image(systemName:"house")
                                )
    
        }
        
    }
}

struct HealthyView0_Previews: PreviewProvider {
    static var previews: some View {
        HealthyView0(ourList: DaitListModel(PhotoDait: "calories2500"
                                            , F6or204040: "2 بيض مسلوق. - كوب واحد من الحليب. \n كوب من عصير التو الازرق - طبق صغير من الشوفان."
                                          ))
        .preferredColorScheme(.light)
                          

    
}
        }
