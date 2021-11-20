//  HomeScreen.swift
//  Bonfire

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Bonfire Adventures")
                .font(.title)
                .foregroundColor(.green)
                .font(.system(size: 32, weight: .bold, design: .default))
            Text("Experience Dignity. You'll Love it!")
                .font(.subheadline)
        }
            
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
