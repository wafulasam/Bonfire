//  BottomTabs.swift
//  Bonfire

import SwiftUI

struct BottomTabs: View {
    var body: some View {
        StatusBar()
        TabView {
            ExploreScreen()
                .tabItem {
                    Image(systemName: "globe.europe.africa")
                    Text("Explore")
                }
                .tag(1)
            
            TripsAndBookings()
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Trips and Bookings")
                }
                .tag(2)
            
            InboxScreen()
                //.edgesIgnoringSafeArea(.top)
                //.statusBarStyle(.lightContent) //set status bar style here
            
                .tabItem {
                    Image(systemName: "message")
                    Text("Inbox")
                }
                .tag(3)
                //.badge(10)
            
            ProfileScreen()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
                .tag(4)
        }
        .accentColor(Color("red"))
        //.onAppear() { UITabBar.appearance().barTintColor = .yellow }
    }
}

struct BottomTabs_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabs()
    }
}
