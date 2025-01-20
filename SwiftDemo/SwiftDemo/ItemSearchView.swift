//
//  ItemSearchView.swift
//  SwiftDemo
//
//  Created by Jacob Badiei on 2025-01-20.
//
import SwiftUI

struct ItemSearchView: View {
    let userName: String  // Receive the user's name
    @State private var item: String = ""  // Store the entered item
    @State private var navigateToLoading: Bool = false  // Control navigation

    var body: some View {
        VStack(spacing: 20) {
            Text("What are you looking for, \(userName)?")
                .font(.title2)
                .padding()

            TextField("Enter item name", text: $item)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            // NavigationLink to loading screen
            NavigationLink(
                destination: LoadingView(item: item),
                isActive: $navigateToLoading,
                label: {
                    Text("Search")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(item.isEmpty ? Color.gray : Color.green)
                        .cornerRadius(10)
                }
            )
            .disabled(item.isEmpty)

            Spacer()
        }
        .padding()
        .navigationTitle("Search")
    }
}

