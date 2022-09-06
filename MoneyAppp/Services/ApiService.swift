//
//  ApiService.swift
//  MoneyAppp
//
//  Created by Jhovany Gonzalez on 9/5/22.
//

import Foundation

class APIService {
    static let shared = APIService()
   
    
    func login(credentials: Credentials, completion: @escaping(Result<Bool, Auth.AuthError>) -> Void ){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            if credentials.password == "password" {
                completion(.success(true))
            }
            else {
                completion(.failure(.invalidCredentials))
            }
        }
        
    }
}
