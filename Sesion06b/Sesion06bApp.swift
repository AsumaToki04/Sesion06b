//
//  Sesion06bApp.swift
//  Sesion06b
//
//  Created by DAMII on 3/12/24.
//

import SwiftUI

@main
struct Sesion06bApp: App {
    let persistenceController = PersistenceController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(
                    \.managedObjectContext,
                     persistenceController.container.viewContext
                )
        }
    }
}
