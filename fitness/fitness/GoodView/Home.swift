//
//  HomeOnHealth.swift
//  fitness
//
//  Created by Yasr Alajmi on 04/09/2022.
//

import SwiftUI

struct Homei: View {
    @State var alert971 = false
    @State var alert972 = false
    @State var alert973 = false
    @State var alert974 = false
    @State var alert975 = false
    @StateObject var taskModel: TaskViewModel = TaskViewModel()
    @Namespace var animation
    @State var Photo1 = "For99"
    @State var Title1 = "بيض اومليت + خبر "
    @State var Dis1 = "الطماطم مصدر ممتاز لفيتامين ج ومضادات الأكسده أما البيض (160 سعرًا حراريًا)"
    @State var i9771 = ""
    //
    @State var Photo2 = "food2"
    @State var Title2 = "كوب من الفشار بنقطة من الزيت "
    @State var Dis2 = "(55 سعرًا حراريًا)"
    @State var i9772 = ""
//    "كوب من الفشار بنقطة من الزيت وقليل من الملح (55 سعرًا حراريًا)"
    @State var Photo3 = "food5"
    @State var Title3 = "سلطة التاكو"
    @State var Dis3 = "(1857  سعرة)"
    @State var i9773 = ""
    //
    @State var Photo4 = "food8"
    @State var Title4 = "عيدان الخضروات بليس اوريجينال"
    @State var Dis4 = "135 جم"
    @State var i9774 = ""
    //
    @State var Photo5 = "food10"
    @State var Title5 = "سلطة السلمون المشوي"
    @State var Dis5 = "(112.22 سعر حراري)"
    @State var i9775 = ""
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
                                                .fill(Color.theme.Primary)
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
                    
                    ScrollView {
                        TasksView()
                    }
                    
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
                                            Photo1 = "food1"
                                            Title1 = "بانكيك القمح الكامل بالتوت الأزرق"
                                            Dis1 = "بانكيك نانو المخبوز بحبوب القمح الكامل والمحشو بالتوت الازرق سناك طري ولذيذ عالي البروتين، قليل السعرات وخالي من السكر المضاف."
                                        } label: {
                                            HStack{
                                                Text("تغير")
                                                
                                                Image(systemName: "arrowshape.turn.up.backward.2")
                                            }
                                            .frame(width: 130, height: 30)
                                            .background(Color.theme.Primary)
                                            .cornerRadius(20)
                                            .foregroundColor(.black)
                                        }
                                        Button {
                                            Photo1 = "For99"
                                            Title1 = "بيض اومليت + خبر "
                                            Dis1 = "الطماطم مصدر ممتاز لفيتامين ج ومضادات الأكسده أما البيض..."
                                        } label: {
                                            Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                                .foregroundColor(.black)
                                            
                                        }
                                        
                                        
                                        
                                        Spacer()
                                        Text("فطور اليوم")
                                            .foregroundColor(.black)
                                    }.padding()
                                    Divider()
                                    HStack{
                                        
                                        Button {
                                          i9771 = "checkmark.square"
                                            alert971.toggle()
                                        } label: {
                                            VStack {
                                                Image(systemName: "plus.circle.fill")
                                                    .font(.system(size: 25))
                                                    .foregroundColor(.black)
                                                Spacer()
                                               
                                                Image(systemName: "\(i9771)")
                                                    .resizable()
                                                    .frame(width: 30, height: 30)
                                                    .foregroundColor(.green)
                                        }
                                        }.alert(isPresented: $alert971){
                                            Alert(title: Text("تم كسب 200 نقطه"), message: Text("استمر هذي البدايه😎"), dismissButton: .default(Text("كمل")))
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
                        .background(Color.theme.Primary)
                        .cornerRadius(15)
                        .frame(width: 385, height: 215)
                        .background(Color.red)
                    .cornerRadius(15)
                        //
                    
                    


                    //

                    VStack {
                        VStack{
                            
                            HStack {
                                
                                Button {
                                    Photo2 = "food3"
                                    Title2 = "كوب زبادي كامل الدسم"
                                    Dis2 = "الطماطم مصدر ممتاز لفيتامين ج ومضادات الأكسده أما البيض..."

                                } label: {
                                    HStack{
                                        Text("تغير")
                                        
                                        Image(systemName: "arrowshape.turn.up.backward.2")
                                    }
                                    .frame(width: 130, height: 30)
                                    .background(Color.theme.Primary)
                                    .cornerRadius(20)
                                    .foregroundColor(.black)

                                }
                                
                                Button {
                                    
                                    Photo2 = "food2"
                                    Title2 = "كوب من الفشار بنقطة من الزيت "
                                    Dis2 = "(55 سعرًا حراريًا)"
                                } label: {
                                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                        .foregroundColor(.black)
                                    
                                }
                                
                                Spacer()
                                Text("سناك بعد الفطور")
                                    .foregroundColor(.black)
                            }.padding()
                            
                            
                            
                            
                            Divider()
                            HStack{
                                VStack{
                                    Button {
                                        i9772 = "checkmark.square"
                                        alert972.toggle()
                                    } label: {
                                        VStack{
                                        Image(systemName: "plus.circle.fill")
                                            .font(.system(size: 25))
                                            .foregroundColor(.black)
                                        Spacer()
                                       
                                        Image(systemName: "\(i9772)")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.green)
                                        }

                                    }.alert(isPresented: $alert972){
                                    Alert(title: Text("تم كسب 150 نقطة"), message: Text("كفو عليك استمتع ب النقاط 😌"), dismissButton: .default(Text("كمل")))
                                    }
                                }.frame(width: 30, height: 130)
                                
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
                                }.padding()

                                
                            }
                            
                        }
                        .frame(width: 385, height: 215)
                        .background(Color.white)
                        .cornerRadius(15)
                        .frame(width: 380, height: 210)
                        .background(Color.theme.Primary)
                        .cornerRadius(15)
                    }
                    .frame(width: 385, height: 215)
                    .background(Color.theme.Primary)
                    .cornerRadius(15)
                    .frame(width: 385, height: 215)
                    .background(Color.red)
                    .cornerRadius(15)
                    //
                    
                    VStack {
                        VStack{
                            VStack{
                            //
                                HStack{
                                    Button {
                                        Photo3 = "food6"
                                        Title3 = "صدر دجاج مشوي"
                                        Dis3 = "(165 سعرُه)"
                                    } label: {
                                        HStack{
                                            Text("تغير")
                                            
                                            Image(systemName: "arrowshape.turn.up.backward.2")
                                        }
                                        .frame(width: 130, height: 30)
                                        .background(Color.theme.Primary)
                                        .cornerRadius(20)
                                        .foregroundColor(.black)
                                    }
                                    Button {
                                         Photo3 = "food5"
                                         Title3 = "سلطة التاكو"
                                          Dis3 = "(1857  سعرة)"
                                        
                                    } label: {
                                        Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                            .foregroundColor(.black)
                                        
                                    }
                                    
                                    
                                    
                                    Spacer()
                                    Text("وجبة الغداء")
                                        .foregroundColor(.black)
                                }.padding()
                                Divider()
                                HStack{
                                    
                                    Button {
                                        i9773 = "checkmark.square"
                                        alert973.toggle()
                                    } label: {
                                        VStack {
                                            Image(systemName: "plus.circle.fill")
                                                .font(.system(size: 25))
                                                .foregroundColor(.black)
                                            Spacer()
                                            
                                            Image(systemName: "\(i9773)")
                                                .resizable()
                                                .frame(width: 30, height: 30)
                                                .foregroundColor(.green)
                                        }
                                    }.alert(isPresented: $alert973){
                                        Alert(title: Text("تم كسب 400 نقطة🥳"), dismissButton: .default(Text("كمل")))
                                    }
                                    
                                    
                                    
                                    
                                    
                                    VStack{
                                        Text(Title3)
                                            .font(.system(size: 19))
                                            .offset(x: 80,y: -30)
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
                                
                                //
                            }
                            
                        }             .frame(width: 385, height: 215)
                            .background(Color.white)
                            .cornerRadius(15)
                            .frame(width: 380, height: 210)
                            .background(Color.theme.Primary)
                            .cornerRadius(15)
                        
                        }                  .frame(width: 385, height: 215)
                            .background(Color.theme.Primary)
                            .cornerRadius(15)
                            .frame(width: 385, height: 215)
                            .background(Color.red)
                        .cornerRadius(15)
                    
                        //
                    VStack{
                        VStack {
                            VStack{
                                
                                
                                HStack{
                                    Button {
                                        Photo4 = "food9"
                                        Title4 = "30 حبة عنب"
                                        Dis4 = "( 67 سعرا حراريا)يمثل الماء 80% من حبة العنب، ويحتوي على، الكالسيوم والبوتاسيوم، ويعزز عمل الكلى."
                                    } label: {
                                        HStack{
                                            Text("تغير")
                                            
                                            Image(systemName: "arrowshape.turn.up.backward.2")
                                        }
                                        .frame(width: 130, height: 30)
                                        .background(Color.theme.Primary)
                                        .cornerRadius(20)
                                        .foregroundColor(.black)
                                    }
                                    Button {
                                        //
                                   Photo4 = "food8"
                                        Title4 = "عيدان الخضروات بليس اوريجينال"
                                      Dis4 = "135 جم"
                                    } label: {
                                        Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                            .foregroundColor(.black)
                                        
                                    }
                                    
                                    
                                    
                                    Spacer()
                                    Text("سناك الغداء")
                                        .foregroundColor(.black)
                                }.padding()
                                Divider()
                                HStack{
                                    
                                    Button {
                                      i9774 = "checkmark.square"
                                        alert974.toggle()
                                    } label: {
                                        VStack {
                                            Image(systemName: "plus.circle.fill")
                                                .font(.system(size: 25))
                                                .foregroundColor(.black)
                                            Spacer()
                                           
                                            Image(systemName: "\(i9774)")
                                                .resizable()
                                                .frame(width: 30, height: 30)
                                                .foregroundColor(.green)
                                    }
                                    }.alert(isPresented: $alert974){
                                        Alert(title: Text("تم كسب 150 نقطة👏🏻"), dismissButton: .default(Text("كمل")))
                                    }
                                    
                                    
                                    
                                    
                                    
                                    VStack{
                                        Text(Title4)
                                            .font(.system(size: 19))
                                            .offset(x: 20,y: -30)
                                        Text(Dis4)
                                            .font(.system(size: 15))
                                            .foregroundColor(.gray)
                                            .multilineTextAlignment(.trailing)
                                            .offset( y: -20)
                                    }
                                    Spacer()
                                    VStack{
                                        
                                        Image(Photo4)
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
                    .background(Color.theme.Primary)
                    .cornerRadius(15)
                    .frame(width: 385, height: 215)
                    .background(Color.red)
                .cornerRadius(15)
//
                    //
                VStack{
                    VStack {
                        VStack{
                            
                            
                            HStack{
                                Button {
                                    Photo5 = "food9"
                                    Title5 = "30 حبة عنب"
                                    Dis5 = "( 67 سعرا حراريا)يمثل الماء 80% من حبة العنب، ويحتوي على، الكالسيوم والبوتاسيوم، ويعزز عمل الكلى."
                                } label: {
                                    HStack{
                                        Text("تغير")
                                        
                                        Image(systemName: "arrowshape.turn.up.backward.2")
                                    }
                                    .frame(width: 130, height: 30)
                                    .background(Color.theme.Primary)
                                    .cornerRadius(20)
                                    .foregroundColor(.black)
                                }
                                Button {
                                    //
                                 Photo5 = "food10"
                                 Title5 = "سلطة السلمون المشوي"
                                Dis5 = "(112.22 سعر حراري)"
                                } label: {
                                    Image(systemName: "arrowshape.turn.up.right.circle.fill")
                                        .foregroundColor(.black)
                                    
                                }
                                
                                
                                
                                Spacer()
                                Text("وجبة العشاء")
                                    .foregroundColor(.black)
                            }.padding()
                            Divider()
                            HStack{
                                
                                Button {
                                  i9775 = "checkmark.square"
                                    alert975.toggle()
                                } label: {
                                    VStack {
                                        Image(systemName: "plus.circle.fill")
                                            .font(.system(size: 25))
                                            .foregroundColor(.black)
                                        Spacer()
                                       
                                        Image(systemName: "\(i9775)")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.green)
                                }
                                }.alert(isPresented: $alert975){
                                    Alert(title: Text("تم كسب 400 نقطة"), message: Text("اول يوم💪🏻"), dismissButton: .default(Text("كمل")))
                                }
                                
                                
                                
                                
                                
                                VStack{
                                    Text(Title5)
                                        .font(.system(size: 19))
                                        .offset(x: 20,y: -30)
                                    Text(Dis5)
                                        .font(.system(size: 15))
                                        .foregroundColor(.gray)
                                        .multilineTextAlignment(.trailing)
                                        .offset( y: -20)
                                }
                                Spacer()
                                VStack{
                                    
                                    Image(Photo5)
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
                .background(Color.theme.Primary)
                .cornerRadius(15)
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
                    .frame(width: 00, height: 0)
                    .offset(y:100)
            }
            
        }
        .padding()
        .background()
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
                .foregroundColor(Color.theme.Primary)
            }
            .hLeading()
            
            Button {
                
            } label: {
                Image(systemName: "fork.knife")
                    .font(.system(size: 60))
                    .foregroundColor(Color.theme.Primary)
//                    .offset(x: 123, y: 6)
//                Image(systemName: "fork.knife")
//                    .font(.system(size: 60))
//                    .foregroundColor(Color.theme.iiColor)
//                    .offset(x: 60, y: 20)
//                Image(systemName: "fork.knife")
//                    .font(.system(size: 60))
//                    .foregroundColor(Color.theme.Primary)

                
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

