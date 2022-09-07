//
//  HomeOnHealth.swift
//  fitness
//
//  Created by Yasr Alajmi on 04/09/2022.
//

import SwiftUI

struct Homei: View {
    @StateObject var taskModel: TaskViewModel = TaskViewModel()
    @Namespace var animation
    @State var Photo1 = "For00"
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
            
            LazyVStack(spacing: 0, pinnedViews: [.sectionHeaders]) {
                
                Section {
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 10){
                            
                            ForEach(taskModel.currenWeek,id: \.self){day in
                                
                                VStack(spacing: 10){
                                    
                                    Text(taskModel.extractDate(date: day, format: "dd"))
                                        .font(.system(size: 15))
                                        .fontWeight(.semibold)
//                                        .foregroundColor(Color.theme.iColor)
                                    
                                    Text(taskModel.extractDate(date: day, format: "EEE"))
                                        .font(.system(size: 14))
//                                        .foregroundColor(Color.theme.iColor)
                                    Circle()
                                        .fill(.white)
                                        .frame(width: 8, height: 8)
                                        .opacity(taskModel.isTody(date: day) ? 1 : 0)
                                }
                                .foregroundStyle(taskModel.isTody(date: day) ? Color.theme.iColor : .secondary)
                                .foregroundColor(taskModel.isTody(date: day) ?  .white : .black)
                                .frame(width: 45, height: 90)
                                .background(
                                
                                    VStack{
                                  
                                        if taskModel.isTody(date: day){
                                            Capsule()
                                                .fill(Color.theme.iiColor)
                                                .matchedGeometryEffect(id: "CURRENTDAY", in: animation)
                                        }
                                    })
                                .contentShape(Capsule())
                                .onTapGesture {
                                    withAnimation{
                                        taskModel.currentDay = day
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                        
                    }.background(Color.theme.iColor)
                    
                    TasksView()
                    
                } header: {
                    HeaderView()
                    
                }

            }
        }
        .ignoresSafeArea(.container, edges: .top)
        .background(Color.theme.iiColor)
    }
    
    func TasksView()->some View{
        
        LazyVStack(spacing: 18){
            
            if let tasks = taskModel.filteredTasks{
                
                if tasks.isEmpty{
                    
                    VStack{
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
                    .background(Color.theme.Primary)
                    .cornerRadius(15)
                    .frame(width: 380, height: 210)
                    .background(Color.white)
                    .cornerRadius(15)
                                                      }
                                                      .frame(width: 385, height: 215)
                                                          .background(Color.red)
                                                      .cornerRadius(15)
                    .frame(width: 385, height: 215)
                        .background(Color.red)
                    .cornerRadius(15)
                    //
                    VStack {
                        VStack{
                                                    HStack{
                                                        HStack{
                                                        Text("تغير التمرين")
                                                        
                                                        Image(systemName: "arrowshape.turn.up.backward.2")
                                                        }
                                                        .frame(width: 130, height: 30)
                                                        .background(.red)
                                                        .cornerRadius(20)
                                                        
                                                        Spacer()
                                                        Text("تمرين الصباح")
                                                        
                                                    }.padding()
                                                    Divider()
                                                    HStack{
                                                        Image(systemName: "plus.circle.fill")
                                                            .font(.system(size: 35))
                                                            .foregroundColor(.red)
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
                    .frame(width: 385, height: 215)
                        .background(Color.red)
                    .cornerRadius(15)
                    //
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
        .padding(.top)
        .onChange(of: taskModel.currentDay){ newValue in
            taskModel.filterTodayTasks()
        }
        
    }
    
    
    func taskCardView(task: Task)->some View{
          
        HStack(alignment: .top, spacing: 30){
            VStack(spacing: 10){
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
            }
            .foregroundStyle(.white)
            .padding()
            .hLeading()
            .background(Color("black"))
            .cornerRadius(25)
        }
        .hLeading()
    }
    
    func HeaderView()->some View{
        
        HStack(spacing: 10){
            
            VStack(alignment: .leading, spacing: 10){
            Text(Date().formatted(date: .abbreviated, time: .omitted))
                .foregroundColor(.gray)
            
            Text("اليوم")
                .font(.largeTitle.bold())
                .foregroundColor(Color.theme.iiColor)
            }
            .hLeading()
            
            Button {
                
            } label: {
                Image(systemName: "fork.knife")
                    .font(.system(size: 60))
                    .foregroundColor(Color.theme.iiColor)
            }

        }
        .padding()
        .padding(.top,getSafeArea().top)
        .background(Color.theme.iColor)
    }
}

struct Homei_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Homei()
            Homei()
                .preferredColorScheme(.dark)
        }
    }
}



extension View{
    
    func hLeading()->some View{
        self
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    func hTrailing()->some View{
        self
            .frame(maxWidth: .infinity, alignment: .trailing)
    }
    func hCenter()->some View{
        self
            .frame(maxWidth: .infinity, alignment: .center)
    }
    
    func getSafeArea()->UIEdgeInsets{
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else{
            return .zero
        }
        
        guard let safeArea = screen.windows.first?.safeAreaInsets else{
            return .zero
        }
        
        return safeArea
    }
}

