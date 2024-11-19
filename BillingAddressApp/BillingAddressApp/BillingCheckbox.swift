//
//  BillingCheckbox.swift
//  BillingAddressApp
//
//  Created by Revanth Pendyala on 11/19/24.
//

import SwiftUI

struct CheckBox: View {
    @Binding var isChecked: Bool
    var label: String
    
    var body: some View {
        HStack(spacing: 4) {
            Button(action: {
                isChecked.toggle()
            }) {
                Image(systemName: isChecked ? "checkmark.square" : "square")
                    .foregroundColor(isChecked ? .black : .gray)
                    .font(.system(size: 24))
            }
            Text(label)
                .font(.body)
                .foregroundColor(.primary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    @Previewable @State var isChecked = false
    
    CheckBox(isChecked: $isChecked, label: "Check me")
}
