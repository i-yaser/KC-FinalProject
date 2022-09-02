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
        
        VStack {
            
                Image(ourList.PhotoDait)
                    .resizable()
                    .frame(width: 200, height: 120)
                    .contrast(20)
            ScrollView {
                VStack{
                    VStack{
                        Text("•نسبة 20/40/40: هو نظام قليل جداً من الدسم، ويحتوي في الوقت نفسه علي البروتينات.")
                            .multilineTextAlignment(.center)
                            .frame(width: 420, height: 50)
                            .font(.system(size: 17))
                        Divider()
                        Text("•نسبة 50/20/30: هو نظام يحتوي على كمية معقولة من الدهون، وقليل جداً من الكربوهيدرات.")
                            .multilineTextAlignment(.center)
                            .frame(width: 420, height: 50)
                            .font(.system(size: 17))

                        Divider()
                        Text("•نسبة 30/50/20: هو نظام معروف جداً، ونتائجه سريعه للغايه.")
                            .multilineTextAlignment(.center)
                            .frame(width: 420, height: 50)
                            .font(.system(size: 17))



                        .navigationTitle("2500 سعره حراريه")
                        .navigationBarTitleDisplayMode(.automatic)


                    } .background(.white .opacity(0.4))

                    
                    HStack{
                        VStack{
                            Text(ourList.F6or204040)
                        }.padding()
                            .background(.black .opacity(0.3))
                        Spacer()
                                                        .frame(width:20)
                        VStack{
                            Text(ourList.F6or305020)
                            
                        }.padding()
                            .background(.white .opacity(0.3))
                        Spacer()
                                                        .frame(width:20)
                        VStack{
                            Text(ourList.F6or502030)
                        }.padding()
                            .background(.black .opacity(0.3))
                    }.frame(width: 420, height: 300)
                        .padding()
                }
            }
        }
        
    }
}

struct HealthyView0_Previews: PreviewProvider {
    static var previews: some View {
        HealthyView0(ourList: DaitListModel(PhotoDait: "calories2500"
                                            , F6or204040: "2 بيض مسلوق. \n كوب واحد من الحليب. \n كوب من عصير التو الازرق \n طبق صغير من الشوفان."
                                            , F6or502030: "4بيض مسلوق. \n . \n شريحتان من التوست. \n ربع كوب من عصير الأفوكادو أو الحليب."
                                            , F6or305020: "فطيرة صغيرة. \n كوب من اللبن. \n شريحتين من اللحم المقدد. \n كوب من الحليب."
                                            , SnakF6or204040: "تفاحة واحدة. كوب واحد من اللبن."
                                            , SnakF6or502030: "ثلث كوب عصير لوز."
                                            , SnakF6or305020:"موزة واحدة. طبق صغير من الشوفان."
                                            , kda204040: "صدر دجاج شرائح . \n كوب بروكلي واحد. \n طبق صغير للغايه من الأرز البني."
                                            , kda502030: "خمس ملاعق من اللحمة المفرومة. \n طبق كبير من السلطة. \n إضافة ملعقة من الزيت الزيتون وصلصة الحمراء على السلطة. \n  قطعتين من الجبن الشيدر."
                                            , kda305020: "ثلاث شرائح من الديك الرومي. \n واحد من الخبز. \n قطعة من جبن شدر. \n طبق سلطة كبير."
                                            , Snakkda204040: "قطعة جبن شيدر. \n كوب لبن.  \n برتقالة."
                                            , Snakkda502030: "ملعقتين من زبدة الفول السوداني. \n تفاحة. \n علبة زبادي صغير."
                                            , Snakkda305020: "‏علبة زبادي. \n كوب من التوت البري. \n حبة خبز."
                                            , asa204040: "‏6 رقائق من شريحة اللحم الصغيرة. \n واحد بطاطا صغيرة. \n كوب من عصير الجزر او اثنين جزر. \n ملعقة من زيت الزيتون ويمكنك إضافتها على البطاط."
                                            , asa502030: "‏ست قطع متوسطة الحجم من سمك السلمون. \n طبق صغير من الفاصولياء الخضراء. \n كوب واحد من الزبادي."
                                            , asa305020: "‏قطع صغيرة من صدور الدجاج. \n طبق صغير من الأرز الأبيض. \n طبق سلطة خضراء متوسطة الحجم. \n ملعقة من صلصة الصويا. \n بيضة.")
                          
)
    }
}
