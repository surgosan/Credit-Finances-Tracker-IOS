//
//  ContentView.swift
//  Credit for IOS
//
//  Created by Sergio Sanchez-Alvares on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "dollarsign")
                .imageScale(.large)
//                .foregroundStyle(.tint)
            Text("Credit Finances Tracker")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
