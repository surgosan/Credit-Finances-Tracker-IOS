//
//  ContentView.swift
//  Credit for IOS
//
//  Created by Sergio Sanchez-Alvares on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Data()
                .tabItem {
                    Image(systemName: "chart.pie.fill")
                    Text("Data")
                }
            
            Home()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Settings()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

#Preview {
    ContentView()
}
