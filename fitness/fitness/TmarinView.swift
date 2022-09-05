//
//  TmarinView.swift
//  fitness
//
//  Created by Yasr Alajmi on 04/09/2022.
//

import SwiftUI


struct TmarinView: View {
    @StateObject var taskModel: TaskViewModel = TaskViewModel()
    @Namespace var animation
    @State var Photo = "Sport-1"
    @State var Title = "مشي 30د"
    @State var Dis = "لا احد ينكر فادة المشي كل يوم ،ابدي صباح ب المشي القليل ل تكتسب الطاقه الكافيه لليوم..."
   var body: some View {
       
       ScrollView(.vertical, showsIndicators: false) {
           
           LazyVStack(spacing: 15, pinnedViews: [.sectionHeaders]) {
               
               Section {
                   
                   
                   ScrollView(.horizontal, showsIndicators: false) {
                       
                       HStack(spacing: 10){
                           
                           ForEach(taskModel.currenWeek,id: \.self){day in
                               
                               VStack(spacing: 10){
                                   
                                   Text(taskModel.extractDate(date: day, format: "dd"))
                                       .font(.system(size: 15))
                                       .fontWeight(.semibold)
                                   
                                   Text(taskModel.extractDate(date: day, format: "EEE"))
                                       .font(.system(size: 14))
                                   
                                   Circle()
                                       .fill(.white)
                                       .frame(width: 8, height: 8)
                                       .opacity(taskModel.isTody(date: day) ? 1 : 0)
                               }
                               .foregroundStyle(taskModel.isTody(date: day) ? .primary : .secondary)
                               .foregroundColor(taskModel.isTody(date: day) ?  .white : .black)
                               .frame(width: 45, height: 90)
                               .background(
                               
                                   VStack{
                                 
                                       if taskModel.isTody(date: day){
                                           Capsule()
                                               .fill(.red)
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
                   }
                   
                   TasksView()
                   
               } header: {
                   HeaderView()
                   
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
//                           Image(Photo)
//                               .resizable()
//                               .frame(width: 120, height: 120)
//                               .cornerRadius(15)
//
//                               Text(Title)
//                               .font(.system(size: 19))
//                               .offset(x: 20,y: -30)
//
//                           Text(Dis)
//                               .font(.system(size: 15))
//                               .foregroundColor(.gray)
//                               .multilineTextAlignment(.trailing)
//                               .offset( y: -20)
                           
                                                   HStack{
                                                       Button {
                                                          Photo = "kkd"
                                                           Title = "لمس القدم"
                                                           Dis = "تمرين سهل الممارسة، حيث يتم ممارسته من خلال"
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
                                                           Text(Title)
                                                               .font(.system(size: 19))
                                                               .offset(x: 20,y: -30)
                                                           Text(Dis)
                                                               .font(.system(size: 15))
                                                               .foregroundColor(.gray)
                                                               .multilineTextAlignment(.trailing)
                                                               .offset( y: -20)
                                                               
                                                       }
                                                       Spacer()
                                                       VStack{
//                                                           Image("Sport-1")
//                                                               .resizable()
//                                                               .frame(width: 120, height: 120)
//                                                               .cornerRadius(15)
                                                                                      Image(Photo)
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
       .frame(width: 390, height: 599)
       .padding(.top)
       .onChange(of: taskModel.currentDay){ newValue in
           taskModel.filterTodayTasks()
               
           
       }
       
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
   
   func HeaderView()->some View{
       
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


struct TmarinView_Previews: PreviewProvider {
    static var previews: some View {
        TmarinView()
    }
}
