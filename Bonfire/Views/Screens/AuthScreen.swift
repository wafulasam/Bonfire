//  AuthScreen.swift
//  Bonfire

import SwiftUI

struct AuthScreen: View {
    
    var body: some View {
        
        ZStack {
            BackgroundView(topColor: Color("red"), bottomColor: Color("red"))
                .edgesIgnoringSafeArea(.all)
                .statusBarStyle(.lightContent) //set status bar style here
            
            VStack {
                
                Button(action: {}) {
                    SocialButton(
                        imageName: "lock.rotation",
                        label: "Login",
                        textColor: Color("red"),
                        backgroundColor: .white
                    )
                }.padding(.bottom)
                
                Button(action: {}) {
                    SocialButton(
                        imageName: "person.circle",
                        label: "Create Account",
                        textColor: Color("green"),
                        backgroundColor: .white
                    )
                }
                
            }
        }
        
}
}

struct AuthScreen_Previews: PreviewProvider {
    static var previews: some View {
        AuthScreen()
    }
}
