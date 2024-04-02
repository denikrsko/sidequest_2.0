//
//  Task_ToDo.swift
//  sidequest_2.0
//
//  Created by Denisa Kršková on 21/03/2024.
//

import Foundation
import SwiftData

@Model
class Task_ToDo {
    var name: String
    var deadline1: Date
    
    init(name: String, deadline: Date) {
        self.name = name
        self.deadline1 = deadline
    }
}

