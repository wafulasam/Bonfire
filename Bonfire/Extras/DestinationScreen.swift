//  DestinationScreen.swift
//  Bonfire

import SwiftUI

struct DestinationScreen: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: DestinationDetailsScreen(),
                    label: {
                        Text("hello")
                    }
                )
                NavigationLink(
                    destination: DestinationDetailsScreen(),
                    label: {
                        Label("Palm Ridge Resort", systemImage: "location")
                    }
                )
               
            }
        }
    }
}

struct DestinationScreen_Previews: PreviewProvider {
    static var previews: some View {
        DestinationScreen()
    }
}
