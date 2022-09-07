//
//  ProfileView.swift
//  fitness
//
//  Created by Yasr Alajmi on 29/08/2022.
//

import SwiftUI

struct ProfileView: View {
    @State var Name = ""
    @State var Email = ""
    @State var NNN = 0.0
    
    var body: some View {
        
        NavigationView {
            ZStack{
//                Color.black .ignoresSafeArea()
//
                RoundedRectangle(cornerRadius: 30,style: .continuous)
                    .foregroundStyle(.linearGradient(colors: [.pink,.red], startPoint: .topLeading, endPoint: .bottomLeading))
                    .frame(width: 1500, height: 1475)
                    .rotationEffect(.degrees(135))
                    .offset( y: -350)
                
//                Color.theme.Primary .ignoresSafeArea()
//
//                Ellipse()
//                    .scale(1.1)
//                    .foregroundColor(Color.theme.PrimaryOn .opacity(0.15))
//
//                Ellipse()
//                    .scale()
//                    .foregroundColor(Color.theme.PrimaryContainer)
//
                VStack {
                    
                    VStack{
                        
    //                    HStack{
    //                        Spacer()
    //                            .frame(width: 28, height: 0)
    //
    //                        Image("LOGO")
    //                            .resizable()
    //                            .frame(width: 80, height: 80)
    //
    //                        Spacer()
    //
    //                        Text("ملفك الشخصي")
    //                            .font(.title)
    //
    //    //                    Image(systemName: "person.crop.circle")
    //    //                        .font(.system(size: 30))
    //                        Spacer()
    //
    //                    } //HStack 1
                            Divider()
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 110))
//                        Text("اهلا بك يا \(Name)")
                        
                        Text(Name)
                            .font(.system(size: 18))
                            .frame(width: 300, height: 40)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(18)
                        
                        Text(Email)
                            .font(.system(size: 18))
                            .frame(width: 300, height: 40)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(18)
                        Text("\(NNN)")
                            .font(.system(size: 18))
                            .frame(width: 300, height: 40)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(18)
                        Divider()
                        Text("اذا كنت تريد حاسبة السعرات الحراريه \n اتجه الى القائمة الرئيسيه")
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)

                        //u معلومات المستخدم
                        
                        VStack{
                          
                            HStack{
                                
                                Text("الشروط والأحكام")
                                    .foregroundColor(.white)
                                Spacer()
                                
                                Link("اضغط هنا", destination: URL(string: "https://www.youtube.com/watch?v=8TqH661a2Uc&list=RD38y_Znfe-rw&index=31")!)
                                    .frame(width: 140, height: 40)
        //                            .background(Color.white) .cornerRadius(50)
                            }//HStack 2
                            .padding()
                            .background(.white .opacity(0.11))
                            
                            HStack{
                                Text("سياسة التطبيق")
                                    .foregroundColor(.white)

                                Spacer()
                                
                                Link("اضغط هنا", destination: URL(string: "https://www.youtube.com/watch?v=8TqH661a2Uc&list=RD38y_Znfe-rw&index=31")!)
                                    .frame(width: 140, height: 40)
        //                            .background(Color.white) .cornerRadius(50)
                            }//HStack 2
                            .padding()
                            .background(.white .opacity(0.11))
                            
//                            HStack{
//                                VStack{
//                               Image("TW")
//                                        .resizable()
//                                        .frame(width: 30, height: 30 )
//                                    Spacer()
//                                             .frame(height:1)
//
//                                Link("اضغط هنا", destination: URL(string: "https://linktr.ee/fitness000")!)
//                                    .frame(width: 140, height: 40)
//        //                            .background(Color.white) .cornerRadius(50)
//                                }
//                                VStack{
//                                Image("IN")
//                                        .resizable()
//                                        .frame(width: 30, height: 30 )
//                                    Spacer()
//                                             .frame(height:1)
//
//
//                                Link("اضغط هنا", destination: URL(string: "https://linktr.ee/fitness000")!)
//                                    .frame(width: 140, height: 40)
//        //                            .background(Color.white) .cornerRadius(50)
//                                }
//                                VStack{
//                               Image("WW")
//                                        .resizable()
//                                        .frame(width: 30, height: 30)
//                               Spacer()
//                                        .frame(height:1)
//
//                                Link("اضغط هنا", destination: URL(string: "https://linktr.ee/fitness000")!)
//                                    .frame(width: 140, height: 40)
//        //                            .background(Color.white) .cornerRadius(50)
//                                }
//                            }//HStack 2
//                            .padding()
//                            .background(.white .opacity(0.11))
                            Spacer()
                                .frame(height: 90)
                           
                        }//VStack 2
                        .padding()
                        
                        .navigationBarTitle("ملفك الشخصي")
                        .navigationBarTitleDisplayMode(.inline)

                        .navigationBarItems(leading: Image("LOGO")
                            .resizable() .frame(width: 80, height: 80), trailing:
                                                NavigationLink(destination: {
                            UpNadi()
                        }, label: {
                            Image(systemName:"person.crop.circle")

                        })
                        )
                        
                        
                        
                    }//VStack 1
                    .frame(width:420)
                    
                }
            }
        }//ZStack 1
            
        
    }

}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ProfileView()
                .previewDevice("iPhone 11")
                .preferredColorScheme(.light)
            ProfileView()
                .previewDevice("iPhone 11")
                .preferredColorScheme(.dark)
        }
    }
}
