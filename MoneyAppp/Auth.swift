//
//  Auth.swift
//  MoneyAppp
//
//  Created by Jhovany Gonzalez on 9/6/22.
//

import SwiftUI

class Auth: ObservableObject {
    @Published var isValidated = false
    
    enum AuthError: Error, LocalizedError, Identifiable {
        case invalidCredentials
        
        var id: String {
            self.localizedDescription
        }
        var errorDescription: String? {
            switch self {
            case .invalidCredentials:
                return NSLocalizedString("Wrong email or password", comment: "")
            }
        }
    }
    
    func updateValidation(success: Bool) {
        withAnimation {
            isValidated = success
        }
    }
}
