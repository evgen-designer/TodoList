//
//  FloatingButton.swift
//  TodoList
//
//  Created by Mac on 09/08/2024.
//

import SwiftUI

struct FloatingButton: View {
    @EnvironmentObject var dateHolder: DateHolder
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                NavigationLink(destination: TaskEditView(passedTaskItem: nil, initialDate: dateHolder.date).environmentObject(dateHolder)) {
                    Text("+ New task")
                        .font(.headline)
                }
                .padding(15)
                .foregroundColor(.white)
                .background(Color.accentColor)
                .cornerRadius(30)
                .padding(30)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 3, y: 3)
            }
        }
    }
}

#Preview {
    FloatingButton()
}
