//  LoginScreen.swift
//  Bonfire

import SwiftUI

struct LoginScreen: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            // text fields
            TextField("Email", text: $email).disableAutocorrection(true)
            SecureField("Password", text: $password).disableAutocorrection(true)
        }
        .textFieldStyle(.roundedBorder)
        .padding(40)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
