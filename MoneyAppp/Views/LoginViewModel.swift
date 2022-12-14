//
//  LoginViewModel.swift
//  MoneyAppp
//
//  Created by Jhovany Gonzalez on 9/6/22.
//



import Foundation


class LoginViewModel: ObservableObject {
    @Published var credentials = Credentials()
    @Published var showProgressView = false
    @Published var error: Auth.AuthError?
    
    
    var loginDisabled: Bool {
        credentials.email.isEmpty || credentials.password.isEmpty
    }
    
    func login(completion: @escaping (Bool) -> Void ){
        showProgressView = true
        APIService.shared.login(credentials: credentials) { [unowned self] (result: Result<Bool, Auth.AuthError>) in
            showProgressView = false
            switch result {
            case .success:
                completion(true)
            case .failure(let authError):
                credentials = Credentials()
                error = authError
                completion(false)
            }
        }
    }
}
