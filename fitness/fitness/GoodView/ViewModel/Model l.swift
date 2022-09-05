//
//  Model l.swift
//  fitness
//
//  Created by Yasr Alajmi on 05/09/2022.
//

import SwiftUI





class TaskNoOne: ObservableObject{
    
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

