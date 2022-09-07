//
//  AppView.swift
//  fitness
//
//  Created by Yasr Alajmi on 28/08/2022.
//

import SwiftUI

struct AppView: View {
    var body: some View {
//        NavigationView {
        ZStack{
//            Color.theme.Primary .ignoresSafeArea()
//
            RoundedRectangle(cornerRadius: 30,style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.pink,Color.theme.Primary], startPoint: .topLeading, endPoint: .bottomLeading))
                .frame(width: 910, height: 920)
                .rotationEffect(.degrees(135))
                .offset( y: 0)
           
            VStack(spacing: 10){
                Spacer().frame(height:100)
                Text("نصائح وتحفيز")
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 150, height: 30)
                ScrollView (.horizontal){
                    
                        HStack {
                            Text(" فوائد الرياضة الوقاية من أمراض القلب والسكتة الدماغية")
//                                .fontWeight(.bold)
                                .foregroundColor(Color.theme.Outline3)
                                .font(.system(size: 18))
                                .multilineTextAlignment(.center)
                        .frame(width: 300, height: 50)
                        .background(Color.theme.PrimaryContainer)
                            .cornerRadius(20)
                        //
                       Image(systemName: "timelapse")
                            Text("فوائد المشي: الحفاظ على وزن صحي وخسارة دهون الجسم")
//                                .fontWeight(.bold)
                                .foregroundColor(Color.theme.Outline3)
                                .font(.system(size: 18))
                                .multilineTextAlignment(.center)
                        .frame(width: 300, height: 50)
                            .background(Color.theme.PrimaryContainer)
                            .cornerRadius(20)
                        //
                            Image(systemName: "timelapse")
                            Text("أثبتت دراسة بريطانية أن الرياضة تساعد على إفراز المخ لمواد كيميائية مثل «الاندرفينس» التي تجعل الإنسان يشعر بأنه في حال أفضل")
//                                .fontWeight(.bold)
                                .foregroundColor(Color.theme.Outline3)
                                .font(.system(size: 13))
                                .multilineTextAlignment(.center)
                        .frame(width: 300, height: 50)
                            .background(Color.theme.PrimaryContainer)
                            .cornerRadius(20)
                            //
                            Image(systemName: "timelapse")
                            Text("لقد دعا الإسلام إلى ممارسة الأنشطة الرياضية المفيدة، ورغب النبي بها وكان يوجه الصحابة إليها، لما فيها من تقوية للأجساد والمحافظة على سلامتها")
//                                .fontWeight(.bold)
                                .foregroundColor(Color.theme.Outline3)
                                .font(.system(size: 13))
                                .multilineTextAlignment(.center)
                        .frame(width: 300, height: 50)
                            .background(Color.theme.PrimaryContainer)
                            .cornerRadius(20)
                            //
                            Image(systemName: "timelapse")
                            Text("فوائدها التغديه: المساعدة على فقدان الوزن. تحسين أداء الجهاز الهضمي والحد من حدوث الإمساك. تخليص الجسم من السموم ومنح الجلد النضارة. تعزيز مستويات الطاقة، ورفع معدل إنتاج خلايا الدم والعضلات")
                                
                                .foregroundColor(Color.theme.Outline3)
                                .font(.system(size: 13))
                                .multilineTextAlignment(.center)
                        .frame(width: 300, height: 50)
                            .background(Color.theme.PrimaryContainer)
                            .cornerRadius(20)
                            //
                            
                    }
                    }.frame(width: 405, height: 100)
                    .background(Color.theme.Bg)
                    .cornerRadius(10)
                
            VStack(spacing: 10){
                Divider()
            
            
//                Spacer()
   
                        
                
                    ScrollView(.horizontal){
                        HStack(spacing: 10) {
                            VStack(spacing: 10){
                               Text("اخصائين تغذيه")
                                    .font(.system(size: 20))
                                Text("")
                                
                                HStack(spacing: -10){
                                    ForEach(["سامي زهير البدر","ليليان سليم زاهر","نور العمر"],id: \.self){user in
                                        
                                        Image(user)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 45, height: 45)
                                            .clipShape(Circle())
                                            .background(
                                            Circle()
                                                .stroke(.black,lineWidth: 5)
                                            )
                                    }
                                    
                                }
                            }.padding()
                            
                            
                            
                            
                            
                            
                            
                            Spacer() .frame(width: 60)
                            NavigationLink(destination: takk()) {
                                VStack(spacing: 80){
                                    
                                    HStack {
                                        Text("نبذه عن التغذية")
                                            .font(.system(size: 18))
                                            .foregroundColor(.black)
                                      
                                        NavigationLink(destination: takk()) {
                                            Image(systemName: "arrow.up.forward.circle")
                                                .font(.system(size: 29))
                                                .foregroundColor(.black)
                                        }

                                      
                                        
                                
                                    }
                                    
                                    HStack {
                                        Text("دكاترة التغذية")
                                            .font(.system(size: 18))
                                            .foregroundColor(.red)
                                        NavigationLink(destination: Dr_Add()) {
                                            Image(systemName: "arrow.down.right.circle")
                                                .font(.system(size: 29))
                                                .foregroundColor(.red)

                                        }
                                    }
                                
                                }
                            }


                            
                        }
//                        .frame(width: 380, height: 180)
                    
                }//ScrollV
                    
                    .frame(width: 380, height: 180)
                }
                .frame(width: 390, height: 170)
                .background(Color.white)
                .cornerRadius(25)
            
                Divider()
                VStack{
                    Text("القوائم المهمه")
                        .font(.title3)
                        .foregroundColor(Color.theme.Bg)
                        
                    
                    
                   
                        ScrollView{
                            
//                            VStack{
//                                    ForEach(HomePhoto){ Qphoto in
//
//                                        HStack{
//
//                                            Image(Qphoto.photo1)
//                                                .resizable()
//                                                .frame(width: 200, height: 200)
//                                                .cornerRadius(38)
//
//
//
//
//                                        Image(Qphoto.photo2)
//                                            .resizable()
//                                            .frame(width: 200, height: 200)
//                                            .cornerRadius(38)
//
//
//                                    }
//
//
//
//                                }
//
//
//                            }
                            
                            HStack(spacing: 10) {
                                VStack(spacing: 10){
                                    
                                    Image("BBMRu")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .cornerRadius(20)
                                    
                                    
                                    
                                    
                                    
                                }                            .padding()
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        Spacer() .frame(width: 5)
                                NavigationLink(destination: BMR()) {
                                    VStack(spacing: 20){
                                        
                                        HStack {
                                            Text("حاسبة السعرات")
                                                .font(.system(size: 18))
                                                .foregroundColor(.black)
                                            Button {
                                            
                                            
                                        } label: {
                                            Image(systemName: "arrow.up.forward.circle")
                                                .font(.system(size: 29))
                                                .foregroundColor(.black)
                                            
                                            
                                        }
                                            
                                        }
//                                                            Spacer() .frame( height:20)
//                                                            Text("حاسبة السعرات الحرارية (BMR) هي عملية حسابية تقوم على حساب عدد السعرات الحرارية المستهلكة يوميا للشخص (ذكر /أنثى) بناء على عدة عوامل")
//                                                                .multilineTextAlignment(.center)
//                                                                .font(.system(size: 14))
//

                                    }.padding()
            
                                }
                                                 

                                                        
                            }
                            .background(Color.white)                                .cornerRadius(20)
                            .frame(width: 370, height: 150)
                            .frame(width: 371, height: 158)
                            .background(.red).cornerRadius(20)

//                                .accessibilityElement().frame(width: 390, height: 190)

                                .cornerRadius(20)
 
                            HStack(spacing: 10) {
                                VStack(spacing: 10){
                                    
                                    Image("LOGO")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .cornerRadius(20)
                                    
                                    
                                    
                                    
                                    
                                }                            .padding()
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        Spacer() .frame(width: 5)
                                NavigationLink(destination: BMR()) {
                                    VStack(spacing: 20){
                                        
                                        HStack {
                                            Text("مدربين مختصين")
                                                .font(.system(size: 18))
                                                .foregroundColor(.black)
                                            Button {
                                            
                                            
                                        } label: {
                                            Image(systemName: "arrow.up.forward.circle")
                                                .font(.system(size: 29))
                                                .foregroundColor(.black)
                                            
                                        }
                                            
                                        }

                                    }.padding()
            
                                }
                                                 

                                                        
                            }.background(Color.white)                                .cornerRadius(20)
                                .frame(width: 370, height: 150)
                                .frame(width: 371, height: 158)
                                .background(.red).cornerRadius(20)
//                                .accessibilityElement().frame(width: 390, height: 190)
                            
                        }.frame(width: 420, height: 350)
                            .background(Color.clear)
                            .cornerRadius(25)
                    Spacer()
                        .frame(height: 120)
//                    لازم اعدل وافهم شلون تشتغل //
//                    TabView(){
//
//
//                        HealthyView()
//                            .tabItem{
//                                Image(systemName: "bolt.heart")
//                                Text("Healthy")
//                            }
//
//                        AppView()
//                            .tabItem {
//                                Image(systemName: "house")
//                                Text("Home")
//                            }
//
//                        ProfileView()
//                            .tabItem {
//                                Image(systemName: "person.crop.circle")
//                                Text("Profile")
//                            }
//
//                    }
                    
                    
                    
                    
                   
                    
                    }
                
               
                    
                }
                
            .navigationBarTitle("الصفحة الرئيسية")
            .navigationBarTitleDisplayMode(.inline)

            .navigationBarItems(leading: Image("LOGO")
                .resizable() .frame(width: 80, height: 80), trailing:                Image(systemName:"house"))

            
            
            }//ZStack 1
            
//        }//Navig
        
        
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AppView()
                .preferredColorScheme(.light)
            .previewDevice("iPhone 11")
            AppView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 11")
        }
    }
}
