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
            WelcomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                
                CounterView()
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
