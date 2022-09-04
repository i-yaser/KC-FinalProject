//
//  Task.swift
//  fitness
//
//  Created by Yasr Alajmi on 04/09/2022.
//

import SwiftUI


//Task Model
struct Task: Identifiable{
    let id = UUID().uuidString
    var taskTitle: String
    var taskDescription: String
//    var taskPhoto: String
    var taskDate: Date
}
