//
//  ContentView.swift
//  BillingAddressApp
//
//  Created by Revanth Pendyala on 11/19/24.
//

import SwiftUI

struct ContentView: View {
    @State private var inputText = ""
    @State var shouldOpen: Bool
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .onTapGesture {
                    shouldOpen = true
                }
            SquareTextField(text: $inputText, placeholder: "Placeholder")
            SquareDropdown(text: $inputText, placeholder: "Placeholder")
            
        }
        .sheet(isPresented: $shouldOpen, content: {
            NavigationView {
                BillingAddressView(viewModel: .init(billingAddressMode: .add))
            }
        })
        .padding()
    }
}

#Preview {
    @Previewable @State var shouldOpen: Bool = false
    ContentView(shouldOpen: shouldOpen)
}
