//
//  LoginView.swift
//  MoneyAppp
//
//  Created by Jhovany Gonzalez on 9/6/22.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var loginVM = LoginViewModel()
    @EnvironmentObject var auth: Auth
    var body: some View {
        VStack {
            Text("Money App")
                .font(.largeTitle)
            TextField("Email", text: $loginVM.credentials.email)
                .keyboardType(.emailAddress)
            SecureField("Password", text: $loginVM.credentials.password)
            if (loginVM.showProgressView) {
                ProgressView()
            }
            
            Button("Log in") {
                loginVM.login { sucesss in
                    auth.updateValidation(success: sucesss)
                    
                }
            }
            .disabled(loginVM.loginDisabled)
            .padding(.bottom, 20)
        }
        .autocapitalization(.none)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
        .disabled(loginVM.showProgressView)
//        .alert(item: $loginVM.error) { error in
//            Alert(title: Text("Invalid Login"), message: Text(error.localizedDescription))
//        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
