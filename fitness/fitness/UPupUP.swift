//
//  UPupUP.swift
//  fitness
//
//  Created by Yasr Alajmi on 06/09/2022.
//

import SwiftUI

struct UPupUP: View {
    @State var index = "الصفحة الرئيسية"
    @State var show = false
    var body: some View {
        ZStack{
            (self.show ? Color.black.opacity(0.05) : Color.clear).edgesIgnoringSafeArea(.all)
            
            ZStack(alignment: .leading){
                VStack(alignment : .leading, spacing: 25) {

                    HStack(spacing:15){
                        Image("LOGO")
                            .resizable()
                            .frame(width: 65, height: 65)
                            .cornerRadius(30)
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Fitness")
                                .fontWeight(.bold)
                            Text("KW ,kuwait city")
                        }
                    }
                    .padding(.bottom, 50)
                    ForEach(IconeNo, id: \.self){ i in
                        
                        Button {

                            self.index = i

                            withAnimation(.spring()){
                                
                                self.show.toggle()
                            }

                        } label: {
                            HStack{
                                
                                Capsule()
                                    .fill(self.index == i ? Color.red : Color.clear)
                                    .frame(width: 5, height: 30)
                                
                                Text(i).padding(.leading)
                            }
                        }

                    }
                    
                    Spacer()
                }.padding(.leading)
                    .padding(.top)
                    .scaleEffect(self.show ? 1 : 0)
                
                ZStack(alignment: .topTrailing) {
                    
                    MainView(show: self.$show, index: self.$index)
                        .scaleEffect(self.show ? 0.8 : 1)
                        .offset(x: self.show ? 150 : 0,y: self.show ? 50 : 0)
                        .disabled(self.show ? true  : false)
                    
                    
                    
                    Button {
                        
                        withAnimation(.spring()){
                            
                            self.show.toggle()
                        }
                    } label: {
                        
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.black)
                        
                    }.offset(x: -60)
                    .padding()
                        .opacity(self.show ? 1 : 0)

                }
                

            }
        }
    }
}

struct UPupUP_Previews: PreviewProvider {
    static var previews: some View {
        UPupUP()
    }
}

struct MainView : View {
    @Binding var show : Bool
    @Binding var index : String
    var body : some View{
        
        VStack(spacing: 0){
            Spacer().frame(height: 100)
            ZStack{
                Color.theme.Primary.ignoresSafeArea()
                
                HStack{
                    
                    Button {
                        
                        withAnimation(.spring()){
                            
                            self.show.toggle()
                        }
                        
                    } label: {
                        Image(systemName: "list.bullet")
                        .font(.system(size: 23))  }
                    .foregroundColor(.black)
                    
                    Spacer()
                        .frame(width: 220)
                    Button {
                        
                    } label: {
                        Image(systemName: "circle.hexagongrid.fill")
                        .font(.system(size: 23))                    }
                    .foregroundColor(.black)


                }//end
                Text("Home")
                    .fontWeight(.bold)
                    .font(.title)
            }.frame(width: 420, height: 50)
            .padding(.horizontal)
            .padding(.vertical, 10)
            
            ZStack{
//                AppView().opacity(self.index == "الصفحة الرئيسية" ? 1 : 0)
                
                HealthyView().opacity(self.index == "صحه" ? 1 : 0)

                MTGR().opacity(self.index == "متجر" ? 1 : 0)
                
                BMR().opacity(self.index == "حاسبة السعرات" ? 1 : 0)
                
                Dr_Add().opacity(self.index == "Dr" ? 1 : 0)
                
                Injaz().opacity(self.index == "نقاطك" ? 1 : 0)
                
                ProfileView().opacity(self.index == "ملفك الشخصي" ? 1 : 0)
                
                
            }.frame(width: 400, height: 900)
            
        }.frame(height: 840)
        .background(Color.white)
    }
}

var IconeNo = ["الصفحة الرئيسية",
               "صحه",
               "حاسبة السعرات",
               "نقاطك",
               "ملفك الشخصي" ,
               "Dr"
               , "متجر"]

