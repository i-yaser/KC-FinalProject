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
                        
                        
                        VStack{
                            Text("الافطار")
                                .padding()
                                .background(Color.theme.PrimaryContainer)
                                .foregroundColor(Color.theme.OnPrimaryContainer)
                            HStack{
                                Text(ourList.F6or204040)
                                    .multilineTextAlignment(.center)
                            }
                                .frame(width: 400, height: 60)
                                .background(Color.theme.For40 .opacity(0.3))
                            HStack{
                                Text(ourList.F6or305020)
                                    .multilineTextAlignment(.center)
                                
                            }
                                .frame(width: 400, height: 70)
                                .background(.blue .opacity(0.3))
                            HStack{
                                Text(ourList.F6or502030)
                                    .multilineTextAlignment(.center)
                            }  .frame(width: 400, height: 70)
                                .background(.black .opacity(0.3))
                        }.frame(width: 420, height: 230)
                            .padding()
                        //h فطور
                        VStack{
                            Text("سناك الافطار")
                                .padding()
                                .background(Color.theme.OnPrimaryContainer)
                                .foregroundColor(Color.theme.PrimaryContainer)
                            HStack{
                                Text(ourList.SnakF6or204040)
                                    .multilineTextAlignment(.center)
                            }
                                .frame(width: 400, height: 30)
                                .background(Color.theme.For40 .opacity(0.3))
                            HStack{
                                Text(ourList.SnakF6or305020)
                                    .multilineTextAlignment(.center)
                                
                            }
                                .frame(width: 400, height: 30)
                                .background(.blue .opacity(0.3))
                            HStack{
                                Text(ourList.SnakF6or502030)
                                    .multilineTextAlignment(.center)
                            }  .frame(width: 400, height: 30)
                                .background(.black .opacity(0.3))
                        }.frame(width: 420, height: 150)
                            .padding()
                        //ftor
                        VStack{
                            Text("الغداء")
                                .padding()
                                .background(Color.theme.PrimaryContainer)
                                .foregroundColor(Color.theme.OnPrimaryContainer)
                            HStack{
                                Text(ourList.kda204040)
                                    .multilineTextAlignment(.center)
                            }
                                .frame(width: 400, height: 60)
                                .background(Color.theme.For40 .opacity(0.3))
                            HStack{
                                Text(ourList.kda305020)
                                    .multilineTextAlignment(.center)
                                
                            }
                                .frame(width: 400, height: 60)
                                .background(.blue .opacity(0.3))
                            HStack{
                                Text(ourList.kda502030)
                                    .multilineTextAlignment(.center)
                            }  .frame(width: 400, height: 70)
                                .background(.black .opacity(0.3))
                        }.frame(width: 420, height: 220)
                            .padding()
                        //kda
                        VStack{
                            Text("سناك الغداء")
                                .padding()
                                .background(Color.theme.OnPrimaryContainer)
                                .foregroundColor(Color.theme.PrimaryContainer)
                            HStack{
                                Text(ourList.Snakkda204040)
                                    .multilineTextAlignment(.center)
                            }
                                .frame(width: 400, height: 40)
                                .background(Color.theme.For40 .opacity(0.3))
                            HStack{
                                Text(ourList.Snakkda305020)
                                    .multilineTextAlignment(.center)
                                
                            }
                                .frame(width: 400, height: 40)
                                .background(.blue .opacity(0.3))
                            HStack{
                                Text(ourList.Snakkda502030)
                                    .multilineTextAlignment(.center)
                            }  .frame(width: 400, height: 40)
                                .background(.black .opacity(0.3))
                        }.frame(width: 420, height: 190)
                            .padding()
                        //kda sn
                        VStack{
                            Text("العشاء")
                                .padding()
                                .background(Color.theme.PrimaryContainer)
                                .foregroundColor(Color.theme.OnPrimaryContainer)
                            HStack{
                                Text(ourList.asa204040)
                                    .multilineTextAlignment(.center)
                                
                            }
                                .frame(width: 400, height: 70)
                                .background(Color.theme.For40 .opacity(0.3))
                            HStack{
                                Text(ourList.asa305020)
                                    .multilineTextAlignment(.center)
                                
                            }
                                .frame(width: 400, height: 60)
                                .background(.blue .opacity(0.3))
                            HStack{
                                Text(ourList.asa502030)
                                    .multilineTextAlignment(.center)
                            }  .frame(width: 400, height: 70)
                                .background(.black .opacity(0.3))
                        }.frame(width: 420, height: 220)
                            .padding()
                        
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
