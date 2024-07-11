//
//  ContentView.swift
//  Credit for IOS
//
//  Created by Sergio Sanchez-Alvares on 7/8/24.
//

/*
 extension Color {
     static var dynamicTheme: Color {
         return Color("dynamicTheme")
     } // Method to call when wanting to get the Dynamic Theme color
 }

 struct ContentView: View {
     @Environment(\.colorScheme) var colorScheme // Setting the users setting as an environment variable

     var dynamicTheme: Color { // Checks if colorScheme == dark. If it is, return orange, else return blue
         colorScheme == .dark ?
         Color(red: 214/255, green: 90/255, blue: 49/255) :
         Color(red: 93/255, green: 139/255, blue: 244/255)
     }
*/

import SwiftUI

extension Color { // Defining Color extension to return a color named accent
    static var accent: Color {
        return Color(red: 0/255, green: 0/255, blue: 128/255)
    }
}

struct ContentView: View { // STRUCT
    var body: some View { // BODY
        GeometryReader { geometry in // GEOMETRY READER
            VStack(spacing: 0) { // MAIN
                Spacer() // Empty space for header
                    .frame(height: geometry.safeAreaInsets.top)
                
                // HEADER
                VStack {
                    Text("$1058.63")
                        .foregroundColor(.white)
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    Text("out of $1500")
                        .font(.footnote)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                .padding(.bottom, 4)
                .background(Color.accentColor)
                
                // Spacer to push content to the top
                Spacer()
                
                // TAB VIEW
                TabView {
                    Home()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    
                    Data()
                        .tabItem {
                            Image(systemName: "chart.pie.fill")
                            Text("Data")
                        }
                    
                    Settings()
                        .tabItem {
                            Image(systemName: "gear")
                            Text("Settings")
                        }
                } // TAB VIEW
                
            } // MAIN
            .edgesIgnoringSafeArea(.top) // Ignore safe area to place the header at the very top
        } // GEOMETRY READER
        .accentColor(.accent) // Using color extension that returned accent
    } // BODY
} // STRUCT

#Preview {
    ContentView()
}
