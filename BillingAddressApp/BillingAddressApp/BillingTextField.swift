//
//  BillingTextField.swift
//  BillingAddressApp
//
//  Created by Revanth Pendyala on 11/19/24.
//

import SwiftUI

struct SquareTextField: View {
    @Binding var text: String
    var placeholder: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .padding(16)
            .overlay(
                RoundedRectangle(cornerRadius: 0)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .multilineTextAlignment(.leading)
    }
}

#Preview {
    SquareTextField(text: .constant(""), placeholder: "Placeholder")
        .padding()
}
