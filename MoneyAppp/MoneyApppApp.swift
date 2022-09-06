//
//  MoneyApppApp.swift
//  MoneyAppp
//
//  Created by Jhovany Gonzalez on 9/5/22.
//

import SwiftUI

@main
struct MoneyApppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
