//
//  TaskFilter.swift
//  TodoList
//
//  Created by Mac on 13/08/2024.
//

import SwiftUI

enum TaskFilter: String {
    static var allFilters: [TaskFilter] {
        return [.NonCompleted,.Completed,.OverDue,.All]
    }
    
    case All = "All"
    case NonCompleted = "To do"
    case Completed = "Completed"
    case OverDue = "Overdue"
}
