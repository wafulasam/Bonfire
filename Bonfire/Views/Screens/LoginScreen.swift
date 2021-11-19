//  LoginScreen.swift
//  Bonfire

import SwiftUI

struct LoginScreen: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Text("Welcome back!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            // image
            CircleImage(
                width: 100,
                height: 100,
                strokeColor: .blue,
                lineWidth: false,
                shadow: false
            )
            
            // text fields
            TextField("Email", text: $email).disableAutocorrection(true)
            SecureField("Password", text: $password).disableAutocorrection(true)
            
        }
        .textFieldStyle(.roundedBorder)
        .padding(40)
            
        Button(action: {}) {
            PrimaryButton(
                imageName: "lock.rotation",
                label: "Login",
                textColor: .white,
                backgroundColor: .blue
            )
        }
        
        Text("Or")
        
        // social button
        Button(action: {}) {
            SocialButton(
                imageName: "envelope.fill",
                label: "Login with Gmail",
                textColor: .white,
                backgroundColor: .red
            )
        }
        
        // Link
        Link("Forgot Password",
             destination: URL(string: "https://designcode.io")!
        )
}
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
