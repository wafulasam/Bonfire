//  BottomTabsNavigation.swift
//  Bonfire

import SwiftUI

struct BottomTabsNavigation: View {
    var body: some View {
        // Tab views
        TabView {
            ExploreScreen()
                .tabItem {
                    Image(systemName: "globe.europe.africa")
                    Text("Explore")
                }
            TripsAndBookings()
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Trips and Bookings")
                }
            InboxScreen()
                // .badge(10)
                .tabItem {
                    Image(systemName: "message")
                    Text("Inbox")
                }
            AuthScreen()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
        .accentColor(.red)
        .onAppear() {
            //UITabBar.appearance().barTintColor = .yellow
            UITabBar.appearance().backgroundColor = UIColor.white
        }    }
}

struct BottomTabsNavigation_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabsNavigation()
    }
}
