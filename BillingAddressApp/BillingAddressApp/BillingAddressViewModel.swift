//
//  BillingAddressViewModel.swift
//  BillingAddressApp
//
//  Created by Revanth Pendyala on 11/19/24.
//

import Foundation

class BillingAddressViewModel: ObservableObject {
    enum BillingAddressMode {
        case add
        case edit
    }
    
    let billingAddressMode: BillingAddressMode
    @Published var billingAddress = ""
    @Published var countryDropDown = ""
    @Published var isUSMilitaryChecked = false
    @Published var addressLine1 = ""
    @Published var addressLine2 = ""
    @Published var city = ""
    @Published var state = ""
    
    var isEditMode: Bool {
        billingAddressMode == .edit
    }
    
    init(billingAddressMode: BillingAddressMode) {
        self.billingAddressMode = billingAddressMode
    }
    
    func validate() -> Bool {
        true
    }
    
    func saveBillingAddress() {
        // convert to model if required and then save.
    }
}
