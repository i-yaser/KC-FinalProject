//
//  TmarinView.swift
//  fitness
//
//  Created by Yasr Alajmi on 04/09/2022.
//

import SwiftUI


struct iTmarinView: View {
    @StateObject var taskModel: iTaskViewModel = iTaskViewModel()
    @Namespace var animation
    @State var Photo1 = "Sport-1"
    @State var Title1 = "مشي 30د"
    @State var Dis1 = "لا احد ينكر فائدة المشي كل يوم ،ابدي صباح ب المشي القليل ل تكتسب الطاقه الكافيه لبقيت اليوم..."
    @State var Photo2 = "Sport-2"
    @State var Title2 = "تمرين الانحناء"
    @State var Dis2 = "يساعد هذا التمرين على تقوية العضلات الأساسية ومنع إصابة أسفل الظهر ,ابدا بلاستلقاء على ظهرك  مع ثني الركبتين والقدمين على الأرض"
    @State var Photo3 = "Sport3"
    @State var Title3 = "تمارين الضغط"
    @State var Dis3 = "يعتبر تمرين الضغط من أكثر التمارين التي ينتشر تأديتها، والتي يمكنها أن تفرد عضلاتك وتعمل على تقويتها،"
    

   var body: some View {
       
       ScrollView(.vertical, showsIndicators: false) {
           
           LazyVStack(spacing: 15, pinnedViews: [.sectionHeaders]) {
               
               Section {
                   

                   
                   VStack {
                       ScrollView(.horizontal, showsIndicators: false) {
                           //play
                           HStack {
                               HStack{
                                   VStack(spacing: 10){
                                       
                                       ForEach(taskModel.icurrenWeek,id: \.self){iday in
                                           
                                           VStack(spacing: 10){
                                               
                                               Text(taskModel.extractDate(date: iday, format: "dd"))
                                                   .font(.system(size: 15))
                                                   .fontWeight(.semibold)
                                               
                                               Text(taskModel.extractDate(date: iday, format: "EEE"))
                                                   .font(.system(size: 14))
                                               
                                               Circle()
                                                   .fill(.white)
                                                   .frame(width: 8, height: 8)
                                                   .opacity(taskModel.isTody(date: iday) ? 1 : 0)
                                           }
                                           .foregroundStyle(taskModel.isTody(date: iday) ? .primary : .secondary)
                                           .foregroundColor(taskModel.isTody(date: iday) ?  .white : .black)
                                           .frame(width: 45, height: 90)
                                           .background(
                                            
                                            VStack{
                                                
                                                if taskModel.isTody(date: iday){
                                                    Capsule()
                                                        .fill(.red)
                                                        .matchedGeometryEffect(id: "CURRENTDAY", in: animation)
                                                }
                                            })
                                           .contentShape(Capsule())
                                           .onTapGesture {
                                               withAnimation{
                                                   taskModel.icurrentDay = iday
                                               }
                                           }
                                       }
                                   }
                                   .padding(.horizontal)
                                   .background(.white)
                                   .cornerRadius(20)
                               }
                               //end
                               HStack {
                                   HStack(spacing: 0) {
                                       
                                       
                                       HStack(spacing: 10){
                                           
                                           VStack(alignment: .leading, spacing: 10){
                                               Text(Date().formatted(date: .abbreviated, time: .omitted))
                                                   .foregroundColor(.gray)
                                               
                                               
                                               Text("تمارين رياضيه")
                                                   .font(.largeTitle.bold())
                                           }
                                           .hLeading()
                                           
                                           Button {
                                               
                                           } label: {
                                               Image(systemName: "bolt")
                                                   .font(.system(size: 60))
                                                   .foregroundColor(.black)
                                                   .offset(x: 122, y: 6)
                                               Image(systemName: "bolt")
                                                   .font(.system(size: 60))
                                                   .foregroundColor(.red)
                                                   .offset(x: 61, y: 3)
                                               Image(systemName: "bolt")
                                                   .font(.system(size: 60))
                                                   .foregroundColor(.black)
                                           }
                                           
                                       }
                                       .padding()
                                       .padding(.top,getSafeArea().top)
                                       .background(Color.white)
                                       
                                       
                                       
                                       
                                   }
                               }
                           }.frame(width: 413, height: 280)
                       }//mmmmmm
                       
                   }
                   
                   TasksView()
                   
               } header: {
                   
               }

           }
       }
       .ignoresSafeArea(.container, edges: .top)
   }
   
   func TasksView()->some View{
       
       LazyVStack(spacing: 18){
           
           if let tasks = taskModel.filteredTasks{
               
               if tasks.isEmpty{
                   
                   VStack {
                       VStack{

                           
                                                   HStack{
                                                       Button {
                                                           Photo1 = "kkd"
                                                           Title1 = "لمس القدم"
                                                           Dis1 = "من أهم التمارين الرياضية البسيطة والصحية للجسم، هو تمرين لمس أصابع القدم، بحيث يجلس الشخص ويمدد قدميه أمامه ويقوم لفرد ذراعيه كي يلمس بيديه أطراف أصابع القدم مع فرد الظهر، ويستمر"
                                                       } label: {
                                                           HStack{
                                                               Text("تغير التمرين")
                                                               
                                                               Image(systemName: "arrowshape.turn.up.backward.2")
                                                           }
                                                           .frame(width: 130, height: 30)
                                                           .background(.red)
                                                           .cornerRadius(20)
                                                           .foregroundColor(.black)
                                                       }
                                                       Button {
                                                           Photo1 = "Sport-1"
                                                           Title1 = "مشي 30د"
                                                           Dis1 = "لا احد ينكر فائدة المشي كل يوم ،ابدي صباح ب المشي القليل ل تكتسب الطاقه الكافيه لبقيت اليوم..."
                                                       } label: {
                                                           Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                                               .foregroundColor(.black)
                                                           
                                                       }

                                                       
                                                       
                                                       Spacer()
                                                       Text("تمرين الصباح")
                                                       
                                                   }.padding()
                                                   Divider()
                                                   HStack{
                                                       VStack {
                                                           Image(systemName: "plus.circle.fill")
                                                               .font(.system(size: 25))
                                                               .foregroundColor(.red)
                                                           Spacer()
                                                                                                                  }

                                                       VStack{
                                                           Text(Title1)
                                                               .font(.system(size: 19))
                                                               .offset(x: 20,y: -30)
                                                           Text(Dis1)
                                                               .font(.system(size: 15))
                                                               .foregroundColor(.gray)
                                                               .multilineTextAlignment(.trailing)
                                                               .offset( y: -20)
                                                               
                                                       }
                                                       Spacer()
                                                       VStack{
    
                                                           Image(Photo1)
                                                               .resizable()
                                                               .frame(width: 120, height: 120)
                                                               .cornerRadius(15)
                                                           
                                                       }
                                                       
                                                   }.padding()
                           
                                               }                .frame(width: 380, height: 210)
                                                   .background(Color.white)
                                               .cornerRadius(15)
                   }
                   .frame(width: 385, height: 215)
                       .background(Color.red)
                   .cornerRadius(15)
                   //
                   VStack {
                                          VStack{
                                              
                                                                      HStack{
                                                                          Button {
                                                                              Photo2 = "kkd2"
                                                                              Title2 = "القرفصاء او Squat"
                                                                              Dis2 = "يساعد هذا التمرين على علاج تقوس الظهر ،قم بالوقوف مع قدميك بعرض كتفيك، ثم مد ذراعيك للامام "                                                                          } label: {
                                                                              HStack{
                                                                                  Text("تغير التمرين")
                                                                                  
                                                                                  Image(systemName: "arrowshape.turn.up.backward.2")
                                                                              }
                                                                              .frame(width: 130, height: 30)
                                                                              .background(.red)
                                                                              .cornerRadius(20)
                                                                              .foregroundColor(.black)
                                                                          }
                                                                          Button {
                                                                               Photo2 = "Sport-2"
                                                                               Title2 = "تمرين الانحناء"
                                                                               Dis2 = "يساعد هذا التمرين على تقوية العضلات الأساسية ومنع إصابة أسفل الظهر ,ابدا بلاستلقاء على ظهرك  مع ثني الركبتين والقدمين على الأرض"

                                                                          } label: {
                                                                              Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                                                                  .foregroundColor(.black)
                                                                          }

                                                                          
                                                                          
                                                                          Spacer()
                                                                          Text("تمرين الصباح")
                                                                          
                                                                      }.padding()
                                                                      Divider()
                                                                      HStack{
                                                                          VStack {
                                                                              Image(systemName: "plus.circle.fill")
                                                                                  .font(.system(size: 25))
                                                                                  .foregroundColor(.red)
                                                                                    Spacer()                                                 }

                                                                          VStack{
                                                                              Text(Title2)
                                                                                  .font(.system(size: 19))
                                                                                  .offset(x: 20,y: -30)
                                                                              Text(Dis2)
                                                                                  .font(.system(size: 15))
                                                                                  .foregroundColor(.gray)
                                                                                  .multilineTextAlignment(.trailing)
                                                                                  .offset( y: -20)
                                                                                  
                                                                          }
                                                                          Spacer()
                                                                          VStack{
                      
                                                                              Image(Photo2)
                                                                                  .resizable()
                                                                                  .frame(width: 120, height: 120)
                                                                                  .cornerRadius(15)
                                                                              
                                                                          }
                                                                          
                                                                      }.padding()
                                              
                                                                  }                .frame(width: 380, height: 210)
                                                                      .background(Color.white)
                                                                  .cornerRadius(15)
                                      }
                                      .frame(width: 385, height: 215)
                                          .background(Color.red)
                                      .cornerRadius(15)
                   //2
                   VStack {
                                          VStack{
                                                                      HStack{
                                                                          Button {
                                                                              Photo3 = "kkd3"
                                                                              Title3 = "تمرين بلانك"
                                                                              Dis3 = " يساعد تمرين بلانك في شد عضلات الأرداف والذراعين والكتفين والبطن ويساعد في تقوية العضلات ،استلقي على بطنك واتكي على الساعدين ثم قم برفع الجسم."                                                                          } label: {
                                                                              HStack{
                                                                                  Text("تغير التمرين")
                                                                                  
                                                                                  Image(systemName: "arrowshape.turn.up.backward.2")
                                                                              }
                                                                              .frame(width: 130, height: 30)
                                                                              .background(.red)
                                                                              .cornerRadius(20)
                                                                              .foregroundColor(.black)
                                                                          }
                                                                          Button {
                                                                              Photo3 = "Sport3"
                                                                               Title3 = "تمارين الضغط"
                                                                              Dis3 = "يعتبر تمرين الضغط من أكثر التمارين التي ينتشر تأديتها، والتي يمكنها أن تفرد عضلاتك وتعمل على تقويتها،"
                                                                          } label: {
                                                                              Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                                                                  .foregroundColor(.black)
                                                                          }

                                                                          
                                                                          
                                                                          Spacer()
                                                                          Text("تمرين الصباح")
                                                                          
                                                                      }.padding()
                                                                      Divider()
                                                                      HStack{
                                                                          VStack {
                                                                              Image(systemName: "plus.circle.fill")
                                                                                  .font(.system(size: 25))
                                                                                  .foregroundColor(.red)
                                                                                   Spacer()                                                  }


                                                                          VStack{
                                                                              Text(Title3)
                                                                                  .font(.system(size: 19))
                                                                                  .offset(x: 20,y: -30)
                                                                              Text(Dis3)
                                                                                  .font(.system(size: 15))
                                                                                  .foregroundColor(.gray)
                                                                                  .multilineTextAlignment(.trailing)
                                                                                  .offset( y: -20)
                                                                                  
                                                                          }
                                                                          Spacer()
                                                                          VStack{
                                 
                                                                              Image(Photo3)
                                                                                  .resizable()
                                                                                  .frame(width: 120, height: 120)
                                                                                  .cornerRadius(15)
                                                                              
                                                                          }
                                                                          
                                                                      }.padding()
                                              
                                                                  }                .frame(width: 380, height: 210)
                                                                      .background(Color.white)
                                                                  .cornerRadius(15)
                                      }
                                      .frame(width: 385, height: 215)
                                          .background(Color.red)
                                      .cornerRadius(15)
                   //3//
                   VStack {
                                                             VStack{
                                                                 
                                                                                         HStack{
                                                                                             Button {
                                                                                                 Photo2 = "kkd2"
                                                                                                 Title2 = "القرفصاء او Squat"
                                                                                                 Dis2 = "يساعد هذا التمرين على علاج تقوس الظهر ،قم بالوقوف مع قدميك بعرض كتفيك، ثم مد ذراعيك للامام "                                                                          } label: {
                                                                                                 HStack{
                                                                                                     Text("تغير التمرين")
                                                                                                     
                                                                                                     Image(systemName: "arrowshape.turn.up.backward.2")
                                                                                                 }
                                                                                                 .frame(width: 130, height: 30)
                                                                                                 .background(.red)
                                                                                                 .cornerRadius(20)
                                                                                                 .foregroundColor(.black)
                                                                                             }
                                                                                             Button {
                                                                                                  Photo2 = "Sport-2"
                                                                                                  Title2 = "تمرين الانحناء"
                                                                                                  Dis2 = "يساعد هذا التمرين على تقوية العضلات الأساسية ومنع إصابة أسفل الظهر ,ابدا بلاستلقاء على ظهرك  مع ثني الركبتين والقدمين على الأرض"

                                                                                             } label: {
                                                                                                 Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                                                                                     .foregroundColor(.black)
                                                                                             }

                                                                                             
                                                                                             
                                                                                             Spacer()
                                                                                             Text("تمرين الصباح")
                                                                                             
                                                                                         }.padding()
                                                                                         Divider()
                                                                                         HStack{
                                                                                             VStack {
                                                                                                 Image(systemName: "plus.circle.fill")
                                                                                                     .font(.system(size: 25))
                                                                                                     .foregroundColor(.red)
                                                                                                       Spacer()                                                 }

                                                                                             VStack{
                                                                                                 Text(Title2)
                                                                                                     .font(.system(size: 19))
                                                                                                     .offset(x: 20,y: -30)
                                                                                                 Text(Dis2)
                                                                                                     .font(.system(size: 15))
                                                                                                     .foregroundColor(.gray)
                                                                                                     .multilineTextAlignment(.trailing)
                                                                                                     .offset( y: -20)
                                                                                                     
                                                                                             }
                                                                                             Spacer()
                                                                                             VStack{
                                         
                                                                                                 Image(Photo2)
                                                                                                     .resizable()
                                                                                                     .frame(width: 120, height: 120)
                                                                                                     .cornerRadius(15)
                                                                                                 
                                                                                             }
                                                                                             
                                                                                         }.padding()
                                                                 
                                                                                     }                .frame(width: 380, height: 210)
                                                                                         .background(Color.white)
                                                                                     .cornerRadius(15)
                                                         }
                                                         .frame(width: 385, height: 215)
                                                             .background(Color.red)
                                                         .cornerRadius(15)
                   //4
               }
               
               else{
                   
                   VStack {
                       ForEach(tasks){task in
                           taskCardView(task: task)
                           
                       }
                       
                   }
               }
                   
           }
           
           else{
               ProgressView()
                   .offset(y:100)
           }
           
       }
       .padding()
       .frame(width: 390, height: 599)
       .padding(.top)
               
           
       }
       
   
   
   
   func taskCardView(task: Task)->some View{
         
       HStack(alignment: .top, spacing: 30){
           VStack(spacing: 10){
               Text(task.taskTitle)

               Circle()
               .fill(.black)
               .frame(width: 15, height: 15)
               .background(
               
               Circle()
                   .stroke(.black,lineWidth: 1)
                   .padding(-3)
               )
               
               Rectangle()
                   .fill()
                   .frame(width: 3)
               
           }
           VStack{
               HStack(alignment: .top, spacing: 10) {
                                       
                   VStack(alignment: .leading, spacing: 12){
                       
                       Text(task.taskTitle)
                           .font(.title2.bold())
                       
                       Text(task.taskDescription)
                           .font(.callout)
                           .foregroundColor(.secondary)
                   }
                   .hLeading()
                   
                   Text(task.taskDate.formatted(date: .omitted, time: .shortened))
                   
               }
             //g الساعه بوقتها
               if taskModel.isCurrentHour(date: task.taskDate){
                   HStack(spacing: 0){
                       
                       HStack(spacing: -10){
                           ForEach(["For00","For99","For00"],id: \.self){user in
                               
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
                       .hLeading()
                       
                       Button {
                           
                       } label: {
                           Image(systemName: "checkmark")
                               .foregroundStyle(.black)
                               .padding(10)
                               .background(Color.white,in: RoundedRectangle(cornerRadius: 10))
                       }

                   }
                   .padding(.top)
               }
           }
           .foregroundStyle(.white)
           .padding()
           .hLeading()
           .background(Color("black"))
           .cornerRadius(25)
       }
       .hLeading()
   }

//   func HeaderView()->some View{
//
//}
}

struct iTmarinView_Previews: PreviewProvider {
    static var previews: some View {
        iTmarinView()
    
        
    }
}

