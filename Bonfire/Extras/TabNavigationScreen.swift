//  TabNavigationScreen.swift
//  Bonfire

import SwiftUI

struct TabNavigationScreen: View {
    var body: some View {
        // Tab views
        TabView {
            Text("Destinations")
                //.badge(10)
                .tabItem {
                    Image(systemName: "globe.europe.africa")
                    Text("Explore")
                }
            DestinationScreen()
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Trips and Bookings")
                }
            Text("Deals")
                .tabItem {
                    Image(systemName: "giftcard")
                    Text("Deals")
                }
            Text("My Account")
                //.badge(10)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
        .accentColor(.red)
        .onAppear() {
            //UITabBar.appearance().barTintColor = .yellow
            UITabBar.appearance().backgroundColor = UIColor.white
        }
    }
}

struct TabNavigationScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabNavigationScreen()
    }
}
