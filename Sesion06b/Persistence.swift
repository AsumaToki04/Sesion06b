//
//  Persistence.swift
//  Sesion06b
//
//  Created by DAMII on 3/12/24.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "Sesion06b")
        container.loadPersistentStores {_, error in
            if let er = error as NSError? {
                fatalError("Error al conectarse a la BD, \(er)")
            }
        }
    }
}
