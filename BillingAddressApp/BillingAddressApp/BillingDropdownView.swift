//
//  BillingDropdownView.swift
//  BillingAddressApp
//
//  Created by Revanth Pendyala on 11/19/24.
//

import SwiftUI

struct SquareDropdown: View {
    @Binding var text: String
    var placeholder: String
    
    var body: some View {
        HStack(spacing: 0) {
            Text(text.isEmpty ? placeholder : text)
                .foregroundColor(text.isEmpty ? .lightGray : .black)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            Image(systemName: "chevron.down")
        }
        .padding(16)
        .overlay(
            RoundedRectangle(cornerRadius: 0)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
}

#Preview {
    SquareDropdown(text: .constant(""), placeholder: "Placeholder")
        .padding()
}
