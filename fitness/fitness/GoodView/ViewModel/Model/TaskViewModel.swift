//
//  TaskViewModel.swift
//  fitness
//
//  Created by Yasr Alajmi on 04/09/2022.
//

import SwiftUI



class TaskViewModel: ObservableObject{
    
    // Sample Task
    @Published var storedTaskks: [Task] = [
        
        Task(taskTitle: " no meet", taskDescription: "the mr.good are need you meet now",
             taskDate: .init(timeIntervalSince1970: 1641645497))
//        Task(taskTitle: "كرات اللحم مع الأرز", taskDescription: "تعتبر اللحوم الحمراء مصدر غني  بالفيتامينات والمعادن حيث...",
//             taskDate: .init(timeIntervalSince1970: 1641649097)),
//        Task(taskTitle: "بيض اومليت + خبر ", taskDescription: "الطماطم مصدر ممتاز لفيتامين ج ومضادات الأكسده أما البيض...",
//             taskDate: .init(timeIntervalSince1970: 1641652697)),
//        Task(taskTitle: "كرات اللحم مع الأرز", taskDescription: "تعتبر اللحوم الحمراء مصدر غني  بالفيتامينات والمعادن حيث...",
//             taskDate: .init(timeIntervalSince1970: 1641656297)),
//        Task(taskTitle: "بيض اومليت + خبر ", taskDescription: "الطماطم مصدر ممتاز لفيتامين ج ومضادات الأكسده أما البيض...",
//             taskDate: .init(timeIntervalSince1970: 1641661897)),     Task(taskTitle: "كرات اللحم مع الأرز", taskDescription: "تعتبر اللحوم الحمراء مصدر غني  بالفيتامينات والمعادن حيث...",
//                                                                           taskDate: .init(timeIntervalSince1970: 1641641897)),
//        Task(taskTitle: "بيض اومليت + خبر ", taskDescription: "الطماطم مصدر ممتاز لفيتامين ج ومضادات الأكسده أما البيض...",
//             taskDate: .init(timeIntervalSince1970: 1641677897)), Task(taskTitle: "App Proposeal", taskDescription: "Meet client for next app pro..", taskDate: .init(timeIntervalSince1970: 1641681497))
    ]
    
    @Published var currenWeek: [Date] = []
    
    @Published var currentDay: Date = Date()
    
    @Published var filteredTasks: [Task]?
    
    init(){
        fetchCurrentWeek()
        filterTodayTasks()
    }
    
    func filterTodayTasks(){
        
        DispatchQueue.global(qos: .userInteractive).async {
            let calendar = Calendar.current
            
            let filtered = self.storedTaskks.filter{
                return calendar.isDate($0.taskDate, inSameDayAs: self.currentDay)
            }
            
            DispatchQueue.main.async {
                withAnimation{
                    self.filteredTasks = filtered
                    
                }
            }
        }
    }
    
    func fetchCurrentWeek(){
        
        let today = Date()
        let calender = Calendar.current
        
        let week = calender.dateInterval(of: .weekOfMonth, for: today)
        
        guard let firstWeekDay = week?.start else{
            return
        }
        
        (-1...9).forEach { day in
            
            if let weekday = calender.date(byAdding: .day, value: day, to: firstWeekDay){
                currenWeek.append(weekday)
            }
        }


    }
    
    func extractDate(date: Date,format: String) -> String{
        let formatter = DateFormatter()
        
        formatter.dateFormat = format
        
        return formatter.string(from: date)
    }
    
    func isTody(date: Date)->Bool{
        
        let Calender = Calendar.current
        
        return Calender.isDate(currentDay, inSameDayAs: date)
    }
    
    func isCurrentHour(date: Date)->Bool{
        
        let calender = Calendar.current
        
        let hour = calender.component(.hour, from: date)
        let currentHour = calender.component(.hour, from: Date())
        
        return hour == currentHour
    }
    
}
//.init(timeIntervalSince1970: 1641645497)





class iTaskViewModel: ObservableObject{
    
@Published var icurrenWeek: [Date] = []

@Published var icurrentDay: Date = Date()

@Published var filteredTasks: [Task]?

init(){
    fetchCurrentWeek()
}

func fetchCurrentWeek(){
    
    let today = Date()
    let calender = Calendar.current
    
    let week = calender.dateInterval(of: .weekOfMonth, for: today)
    
    guard let firstWeekDay = week?.start else{
        return
    }
    
    (0...2).forEach { iday in
        
        if let weekday = calender.date(byAdding: .day, value: iday, to: firstWeekDay){
            icurrenWeek.append(weekday)
        }
    }
}

func extractDate(date: Date,format: String) -> String{
    let formatter = DateFormatter()
    
    formatter.dateFormat = format
    
    return formatter.string(from: date)
}

func isTody(date: Date)->Bool{
    
    let Calender = Calendar.current
    
    return Calender.isDate(icurrentDay, inSameDayAs: date)
}

func isCurrentHour(date: Date)->Bool{
    
    let calender = Calendar.current
    
    let hour = calender.component(.hour, from: date)
    let currentHour = calender.component(.hour, from: Date())
    
    return hour == currentHour
}

}

