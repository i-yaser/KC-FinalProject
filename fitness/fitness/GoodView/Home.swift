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
                                                .fill(.black)
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
                    //
                    
                    //
                    Text("لا يوجد وصفات اليوم")
                        .font(.system(size: 16))
                        .fontWeight(.light)
                        .offset(y: 100)
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
            
            Text("اليوم")
                .font(.largeTitle.bold())
            }
            .hLeading()
            
            Button {
                
            } label: {
                Image(systemName: "timer")
                    .font(.system(size: 60))
                    .foregroundColor(.black)
            }

        }
        .padding()
        .padding(.top,getSafeArea().top)
        .background(Color.white)
    }
}

struct Homei_Previews: PreviewProvider {
    static var previews: some View {
        Homei()
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

