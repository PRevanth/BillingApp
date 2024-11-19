//
//  BillingAddressView.swift
//  BillingAddressApp
//
//  Created by Revanth Pendyala on 11/19/24.
//

import SwiftUI

struct BillingAddressView: View {
    @ObservedObject var viewModel: BillingAddressViewModel
    
    @Environment(\.dismiss) var dimsiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("* Required fields")
                    SquareTextField(text: $viewModel.billingAddress, placeholder: "BILLING ADRESS NAME (HOME, WORK) *")
                    SquareDropdown(text: $viewModel.countryDropDown, placeholder: "COUNTRY *")
                    CheckBox(isChecked: $viewModel.isUSMilitaryChecked, label: "US military address")
                    SquareTextField(text: $viewModel.addressLine1, placeholder: "ADDRESS LINE 1 *")
                    SquareTextField(text: $viewModel.addressLine2, placeholder: "ADDRESS LINE 2")
                    SquareTextField(text: $viewModel.city, placeholder: "CITY *")
                    SquareTextField(text: $viewModel.state, placeholder: "STATE *")
                    Button {
                        if viewModel.validate() {
                            viewModel.saveBillingAddress()
                        }
                    } label: {
                        Text("SAVE BILLING ADDRESS")
                            .foregroundStyle(.newWhite)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .frame(height: 50)
                            .background(.newBlack)
                    }
                    
                    Button {
                        dimsiss()
                    } label: {
                        Text("CANCEL")
                            .foregroundStyle(.newBlack)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .frame(height: 50)
                            .background(.clear)
                    }
                    
                    
                    Spacer()
                }
                .padding()
            }
            .backgroundStyle(.newWhite)
            .toolbar {
                if viewModel.isEditMode {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                        } label: {
                            Image(systemName: "trash")
                                .resizable()
                                .foregroundStyle(.newBlack)
                                .frame(width: 20, height: 20)
                        }
                    }
                }
            }
            .navigationTitle(viewModel.isEditMode ? "EDIT BILLING ADDRESS" : "NEW BILLING ADDRESS")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationView {
        BillingAddressView(viewModel: .init(billingAddressMode: .add))
    }
}
