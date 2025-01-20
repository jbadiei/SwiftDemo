//
//  ContentView.swift
//  SwiftDemo
//
//  Created by Jacob Badiei on 2025-01-19.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""  // Store user's name
    @State private var navigateToWelcome: Bool = false  // Control navigation

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Welcome to DuoOpinion!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                TextField("Enter your name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .autocapitalization(.words)

                // Navigation button
                NavigationLink(
                    destination: WelcomeView(userName: name),
                    isActive: $navigateToWelcome,
                    label: {
                        Text("Continue")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(name.isEmpty ? Color.gray : Color.blue)
                            .cornerRadius(10)
                    }
                )
                .disabled(name.isEmpty)

                Spacer()
            }
            .padding()
            .navigationTitle("Welcome")
        }
    }
}
