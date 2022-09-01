//
//  ListDait.swift
//  fitness
//
//  Created by Yasr Alajmi on 01/09/2022.
//

import SwiftUI

struct ListDait: View {
    var body: some View {
    
            ZStack{
                Color.theme.Primary .ignoresSafeArea()
                
                VStack {
                    ScrollView{
                        
                        VStack(alignment: .center, spacing: 5.0){
                                ForEach(ourDait){ iin in
                                    
                                    VStack{
                                        HStack{

                                            NavigationLink(destination: List2500()) {
Image(iin.photo1)
.resizable()
.frame(width: 400, height: 200)
.cornerRadius(19)

                                            }
//                                            Image(iin.photo1)
//                                                .resizable()
//                                                .frame(width: 400, height: 200)
//                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo2)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }

                                        HStack{
                                            
                                            Image(iin.photo3)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo4)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo5)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                    }
                                    VStack{
                                        HStack{
                                            
                                            Image(iin.photo6)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo7)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo8)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo9)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo10)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo11)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo12)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                    }
                                        HStack{
                                            
                                            Image(iin.photo13)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }
                                        HStack{
                                            
                                            Image(iin.photo14)
                                                .resizable()
                                                .frame(width: 400, height: 200)
                                                .cornerRadius(19)
                                        }


                                    
                                    
                                
                                
                            
                            
                            
                        

                        
                    }.frame(width: 420, height: 870)
                                .padding(.top)
                }
            }
                }
        .navigationBarTitle("انظمة غذائية")
        .navigationBarTitleDisplayMode(.inline)

        .navigationBarItems(leading: Image(systemName: "house")
                                
                                , trailing:
                                Image(systemName:"gear")
        )
    }
            
    }
}




//ListDait
struct ListDait_Previews: PreviewProvider {
    static var previews: some View {
        ListDait()
    }
}

// new View for food👇🏻👇🏻//



struct List2500: View {
    var body: some View{
        ScrollView {
            ZStack{
                Color.theme.Primary .ignoresSafeArea(.all)
                
                
                VStack {
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
                    //End
                    HStack{
                        Text("نظام 30/50/20")
                        Spacer()
                        Text("نظام 50/20/30")
                        Spacer()
                        Text("نظام 20/40/40")
                    } .padding()
                        .frame(width: 410, height: 9)
                    
                    Text("الأفطار")
                        .font(.system(size: 25))
                    HStack{
                    VStack{
                        
                        HStack{
                            Spacer()
                                .frame(width:20)

                            Text("فطيرة صغيرة.")
                            Spacer()
                            Text("4بيض مسلوق.")
                            Spacer()
                            Text("2 بيض مسلوق.")
Spacer()
                                .frame(width:20)
                        }.frame(width: 415, height: 45)
                            .background(.black .opacity(0.3))
                        
                        HStack{
                            Spacer()
                                .frame(width:20)
                            Text("كوب من اللبن.")
                            Spacer()
                            Text("قطعة من الجبن الشيدر.")
                            Spacer()
                            Text("كوب واحد من الحليب.")
Spacer()
                                .frame(width:20)
                        }.frame(width: 415, height: 45)
                            .background(.white .opacity(0.3))

                        HStack{
                            Spacer()
                                .frame(width:20)

                            Text("شريحتين من اللحم المقدد.")
                            Spacer()
                            Text("شريحتان من التوست.")
                            Spacer()
                            Text("كوب من عصير التوت الازرق")
Spacer()
                                .frame(width:20)
                        }.frame(width: 415, height: 45)
                            .background(.black .opacity(0.3))

                        HStack{
                            Spacer()
                                .frame(width:20)
                            Text("كوب من الحليب.")
                            Spacer()
                            Text("ربع كوب من عصير الأفوكادو أو الحليب.")
                            Spacer()
                            Text("طبق صغير من الشوفان.")
Spacer()
                                .frame(width:20)
                        }.frame(width: 415, height: 45)
                            .background(.white .opacity(0.3))



                    }
                        
                        
                        
                    }
                    
                }//Endrael VStack
            }
        }
    }
}



// new View for food 👆🏻👆🏻//
