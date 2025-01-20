//
//  ContentView.swift
//  SwiftDemo
//
//  Created by Jacob Badiei on 2025-01-19.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, GitHub!")
                .font(.largeTitle)
                .padding()
            Text("This is my first SwiftUI app linked with GitHub.")
                .foregroundColor(.gray)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
