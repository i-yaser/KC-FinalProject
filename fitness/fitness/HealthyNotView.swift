//
//  HealthyNotView.swift
//  fitness
//
//  Created by Yasr Alajmi on 03/09/2022.
//

import SwiftUI

struct HealthyNotView: View {
    var ourList: DaitListModel
    var body: some View {
        ZStack {
            Color.theme.OnBg .ignoresSafeArea()
            VStack{
                VStack{
                    Text("2500 \n سعره حراريه لزيادة الوزن")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                    HStack{
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.gray .opacity(0.4))
                            .offset(x:-20 ,y:35)
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.gray .opacity(0.4))
                            .offset(x:-8 ,y:35)
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.gray .opacity(0.4))
                            .offset(x:0 ,y:35)
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color.theme.Primary .opacity(0.4))
                            .offset(x:8 ,y:35)
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.gray .opacity(0.4))
                            .offset(x:15 ,y:35)
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.gray .opacity(0.4))
                            .offset(x:20 ,y:35)
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.gray .opacity(0.4))
                            .offset(x:20 ,y:35)

                    }.padding()
                        .frame(width: 1, height: 1)
                    HStack{
                        
                        
                        Text("14")
                            .padding()
                            .foregroundColor(Color.theme.Outline)
                        Text("13")
                            .padding()
                            .foregroundColor(Color.theme.Outline)
                        Text("12")
                            .padding()
                            .foregroundColor(Color.theme.Outline)
                        Text("11")
                            .padding()
                            .foregroundColor(Color.theme.Outline)
                        Text("10")
                            .padding()
                            .foregroundColor(Color.theme.Outline)
                        Text("9")
                            .padding()
                            .foregroundColor(Color.theme.Outline)
                        Text("8")
                            .padding()
                            .foregroundColor(Color.theme.Outline)

                        
                        
                        
                        
                        
                        
                    }
                }
                .frame(width: 380, height: 150)
                .background(Color.white)
                    .cornerRadius(20)
                //VStack 2

                ScrollView {
                    VStack{
                   
                    HStack{
                        Spacer()
                            .frame(width: 40)
                        VStack{
                        Text("المكملات")
                                .frame(width: 120, height: 40)

                        }
                    Spacer()
                        
                            .frame(width: 130)
                        VStack{
                        Text("البرنامج الغذائي")
                                .frame(width: 120, height: 40)
                                                    }
                        Spacer()
                            .frame(width: 50)
                    }.frame(width: 380, height: 50)
                        .background(Color.white)
                            .cornerRadius(15)
                    Spacer()                     .frame(height:0)

                    
                    VStack{
                        HStack{
                            HStack{
                            Text("تغير الوجبة")
                            
                            Image(systemName: "arrowshape.turn.up.backward.2")
                            }
                            .frame(width: 130, height: 30)
                            .background(.gray)
                            .cornerRadius(20)
                            
                            Spacer()
                            Text("وجبة الغداء")
                            
                        }.padding()
                        Divider()
                        HStack{
                            Image(systemName: "plus.circle.fill")
                                .font(.system(size: 35))
                                .foregroundColor(.gray)
                                .offset(y: -38)

                            VStack{
                                Text("كرات اللحم مع الأرز")
                                    .font(.system(size: 19))
                                    .offset(x: 20,y: -30)
                                Text("تعتبر اللحوم الحمراء مصدر غني  بالفيتامينات والمعادن حيث...")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.trailing)
                                    .offset(x: 10, y: -20)
                                    
                            }
                            Spacer()
                            VStack{
                                Image("For00")
                                    .resizable()
                                    .frame(width: 120, height: 120)
                                    .cornerRadius(15)
                            }
                            
                        }.padding()
                        
                    }                .frame(width: 380, height: 210)
                        .background(Color.white)
                            .cornerRadius(15)

                        VStack{
                            HStack{
                                HStack{
                                Text("تغير الوجبة")
                                
                                Image(systemName: "arrowshape.turn.up.backward.2")
                                }
                                .frame(width: 130, height: 30)
                                .background(.gray)
                                .cornerRadius(20)
                                
                                Spacer()
                                Text("وجبة العشاء")
                                
                            }.padding()
                            Divider()
                            HStack{
                                Image(systemName: "plus.circle.fill")
                                    .font(.system(size: 35))
                                    .foregroundColor(.gray)
                                    .offset(y: -38)

                                VStack{
                                    Text("بيض اومليت + خبر ")
                                        .font(.system(size: 19))
                                        .offset(x: 20,y: -30)
                                    Text("الطماطم مصدر ممتاز لفيتامين ج ومضادات الأكسده أما البيض<<<")
                                        .font(.system(size: 15))
                                        .foregroundColor(.gray)
                                        .multilineTextAlignment(.trailing)
                                        .offset( y: -20)
                                        
                                }
                                Spacer()
                                VStack{
                                    Image("For99")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .cornerRadius(15)
                                }
                                
                            }.padding()
                            
                        }                .frame(width: 380, height: 210)
                            .background(Color.white)
                                .cornerRadius(15)

                        VStack{
                            HStack{
                                HStack{
                                Text("تغير الوجبة")
                                
                                Image(systemName: "arrowshape.turn.up.backward.2")
                                }
                                .frame(width: 130, height: 30)
                                .background(.gray)
                                .cornerRadius(20)
                                
                                Spacer()
                                Text("سناك العشاء")
                                
                            }.padding()
                            Divider()
                            HStack{
                                Image(systemName: "plus.circle.fill")
                                    .font(.system(size: 35))
                                    .foregroundColor(.gray)
                                    .offset(y: -38)

                                VStack{
                                    Text("بيض اومليت + خبر ")
                                        .font(.system(size: 19))
                                        .offset(x: 20,y: -30)
                                    Text("الطماطم مصدر ممتاز لفيتامين ج ومضادات الأكسده أما البيض<<<")
                                        .font(.system(size: 15))
                                        .foregroundColor(.gray)
                                        .multilineTextAlignment(.trailing)
                                        .offset( y: -20)
                                        
                                }
                                Spacer()
                                VStack{
                                    Image("For99")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .cornerRadius(15)
                                }
                                
                            }.padding()
                            
                        }                .frame(width: 380, height: 210)
                            .background(Color.white)
                                .cornerRadius(15)

                    
                    }
                }.frame(width: 380, height:550)
            }
                           .navigationBarTitle("التغذيه")
                            .navigationBarItems(leading: Image(systemName: "house"), trailing: Image(systemName: "list"))

        }
        
    }
}

struct HealthyNotView_Previews: PreviewProvider {
    static var previews: some View {
        HealthyNotView(ourList: DaitListModel(PhotoDait: "calories2500"
                                              , F6or204040: "2 بيض مسلوق. - كوب واحد من الحليب. \n كوب من عصير التو الازرق - طبق صغير من الشوفان."
                                              , F6or502030: "4بيض مسلوق.  . \n شريحتان من التوست. - ربع كوب من عصير الأفوكادو أو الحليب."
                                              , F6or305020: "فطيرة صغيرة. \n كوب من اللبن. - شريحتين من اللحم المقدد. \n كوب من الحليب."
                                              , SnakF6or204040: "تفاحة واحدة. كوب واحد من اللبن."
                                              , SnakF6or502030: "ثلث كوب عصير لوز."
                                              , SnakF6or305020:"موزة واحدة. طبق صغير من الشوفان."
                                              , kda204040: "صدر دجاج شرائح .  كوب بروكلي واحد. \n طبق صغير للغايه من الأرز البني."
                                              , kda502030: "خمس ملاعق من اللحمة المفرومة. - طبق كبير من السلطة. \n إضافة ملعقة من الزيت الزيتون وصلصة الحمراء على السلطة. \n  قطعتين من الجبن الشيدر."
                                              , kda305020: "ثلاث شرائح من الديك الرومي. - واحد من الخبز. \n قطعة من جبن شدر. - طبق سلطة كبير."
                                              , Snakkda204040: "قطعة جبن شيدر. - كوب لبن.  - برتقالة."
                                              , Snakkda502030: "ملعقتين من زبدة الفول السوداني. - تفاحة. - علبة زبادي صغير."
                                              , Snakkda305020: "‏علبة زبادي. - كوب من التوت البري. - حبة خبز."
                                              , asa204040: "‏6 رقائق من شريحة اللحم الصغيرة. - واحد بطاطا صغيرة. \n كوب من عصير الجزر او اثنين جزر. - ملعقة من زيت الزيتون ويمكنك إضافتها على البطاط."
                                              , asa502030: "‏ست قطع متوسطة الحجم من سمك السلمون. \n طبق صغير من الفاصولياء الخضراء. - كوب واحد من الزبادي."
                                              , asa305020: "‏قطع صغيرة من صدور الدجاج. - طبق صغير من الأرز الأبيض. \n طبق سلطة خضراء متوسطة الحجم. - ملعقة من صلصة الصويا. \n بيضة."))
    }
}
