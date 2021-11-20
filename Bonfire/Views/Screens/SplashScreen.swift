//  SplashScreen.swift
//  Bonfire

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        VStack {
            Text("Bonfire Adventures")
                // .font(.title)
                .font(.system(size: 32, weight: .bold, design: .default))
                .foregroundColor(.blue)
            Text("Experience Dignity. You'll Love it!")
                .font(.subheadline)
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
