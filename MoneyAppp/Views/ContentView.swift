//
//  ContentView.swift
//  MoneyAppp
//
//  Created by Jhovany Gonzalez on 9/5/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @EnvironmentObject var auth: Auth
    
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("You are in :)")
            }
            .padding()
            .navigationTitle("Money App")
            
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Log Out") {
                        auth.updateValidation(success: false)
                    }
                }
            }
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
