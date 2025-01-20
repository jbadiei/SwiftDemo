//
//  WelcomeView.swift
//  SwiftDemo
//
//  Created by Jacob Badiei on 2025-01-20.
//

import SwiftUI

struct WelcomeView: View {
    let userName: String  // Receive the user's name
    @State private var navigateToItemSearch: Bool = false  // Control navigation

    var body: some View {
        VStack(spacing: 20) {
            Spacer()

            Text("Welcome, \(userName)!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Text("We're happy to have you here!")
                .font(.title2)
                .foregroundColor(.gray)
                .padding()

            Spacer()

            // Automatically navigate to the next scene after 2 seconds
            NavigationLink(
                destination: ItemSearchView(userName: userName),
                isActive: $navigateToItemSearch,
                label: { EmptyView() }
            )
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    navigateToItemSearch = true
                }
            }
        }
        .padding()
        .navigationTitle("Welcome")
    }
}
