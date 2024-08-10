//
//  TaskCell.swift
//  TodoList
//
//  Created by Mac on 10/08/2024.
//

import SwiftUI

struct TaskCell: View {
    @EnvironmentObject var dateHolder: DateHolder
    @ObservedObject var passedTaskItem: TaskItem
    
    var body: some View {
        CheckBoxView(passedTaskItem: passedTaskItem)
            .environmentObject(dateHolder)
        
        Text(passedTaskItem.name ?? "")
            .padding(.horizontal)
    }
}

#Preview {
    TaskCell(passedTaskItem: TaskItem())
}
