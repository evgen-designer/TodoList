//
//  DateHolder.swift
//  TodoList
//
//  Created by Mac on 10/08/2024.
//

import Foundation
import CoreData

class DateHolder: ObservableObject {
    
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
