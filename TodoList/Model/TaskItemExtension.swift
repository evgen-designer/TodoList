//
//  TaskItemExtension.swift
//  TodoList
//
//  Created by Mac on 10/08/2024.
//

import SwiftUI

extension TaskItem {
    
    func isCompleted() -> Bool {
        return completedDate != nil
    }
    
}
