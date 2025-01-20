//
//  LoadingView.swift
//  SwiftDemo
//
//  Created by Jacob Badiei on 2025-01-20.
//

import SwiftUI

struct LoadingView: View {
    let item: String  // Receive the item name
    @State private var showResult: Bool = false  // Control navigation to result screen

    var body: some View {
        VStack(spacing: 20) {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .scaleEffect(2)
                .padding()

            Text("Searching for \(item)...")
                .font(.title2)
                .foregroundColor(.gray)

            // Automatically navigate to a blank screen after 3 seconds
            NavigationLink(
                destination: Text("This is a blank scene for now!"),
                isActive: $showResult,
                label: { EmptyView() }
            )
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    showResult = true
                }
            }
        }
        .padding()
        .navigationTitle("Searching")
    }
}

