//  HomeScreen.swift
//  Bonfire

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Bonfire Adventures")
                .font(.title)
                .foregroundColor(.green)
                .fontWeight(.bold)
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
