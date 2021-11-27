//  AuthScreen.swift
//  Bonfire

import SwiftUI

struct AuthScreen: View {
    
    var body: some View {
        
        ZStack {
            //BackgroundView(topColor: Color("red"), bottomColor: Color("red"))
            BackgroundView(topColor: .black, bottomColor: .black)
                .edgesIgnoringSafeArea(.all)
                .statusBarStyle(.lightContent) //set status bar style here
            
            VStack ( spacing: 20){
                
                // logo
                Image("logoWhite")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding(.bottom,100)
                
                Button(action: {}) {
                    PrimaryButton(
                        imageName: "lock.rotation",
                        label: "Login",
                        textColor: .white,
                        backgroundColor: Color("red")
                    )
                }.padding(.bottom)
                
                Button(action: {}) {
                    PrimaryButton(
                        imageName: "person.circle",
                        label: "Create Account",
                        textColor: .white,
                        backgroundColor: Color("green")
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
