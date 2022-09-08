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
    
    struct HomeView: View {
        var body: some View{
            NavigationStack {
                ZStack {
                    Color.red
                }
                .navigationTitle("Home")
            }
        }
    }
    
    
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
            TabView{
                HomeView()
                    .tabItem{
                        Text("Home")
                        Image(systemName: "house")
                    }
                Text("Budget")
                    .tabItem{
                        Text("Budget")
                        Image(systemName: "plus.app.fill")
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
