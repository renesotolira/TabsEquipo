//
//  ContentView.swift
//  Tabs
//
//  Created by MAESTRO603 on 31/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView { //sirve para hacer el menu en parte inferior
            Text("Welcome Screen")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                
                Text("Contador Screen")
            .tabItem {
                    Image(systemName: "clock")
                    Text("Contador")
                }
        }.accentColor(.blue)
    }
}

#Preview {
    ContentView()
}
