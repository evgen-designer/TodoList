//
//  DateHolder.swift
//  TodoList
//
//  Created by Mac on 10/08/2024.
//

import Foundation
import CoreData

class DateHolder: ObservableObject {
    @Published var date = Date()
    
    let calendar: Calendar = Calendar.current
    
    func moveDate(_ days: Int,_ context: NSManagedObjectContext) {
        date = calendar.date(byAdding: .day, value: days, to: date)!
    }
    
    init(_ context: NSManagedObjectContext) {
        
    }
    
    func saveContext(_ context: NSManagedObjectContext) {
        do {
            try context.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
}
