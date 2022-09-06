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
    
    @StateObject var auth = Auth()

    var body: some Scene {
        WindowGroup {
            if auth.isValidated {
                ContentView()
                    .environmentObject(auth)
            }
            else {
                LoginView()
                    .environmentObject(auth)
            }
        }
    }
}
