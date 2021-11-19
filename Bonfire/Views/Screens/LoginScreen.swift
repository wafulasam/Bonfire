//  LoginScreen.swift
//  Bonfire

import SwiftUI

struct LoginScreen: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
            VStack {
                Image("sam").resizable().scaledToFit()
                // text fields
                TextField("Email", text: $email).disableAutocorrection(true)
                SecureField("Password", text: $password).disableAutocorrection(true)
            }
            .textFieldStyle(.roundedBorder)
            .padding(40)
            
            Button(action: {}) {
                PrimaryButton(
                    imageName: "lock",
                    label: "Continue",
                    textColor: .white,
                    backgroundColor: .blue
                )
            }
        
        Text("Or")
            
            Button(action: {}) {
                SocialButton(
                    imageName: "mail",
                    label: "Login with Gmail",
                    textColor: .white,
                    backgroundColor: .red
                )
            }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
