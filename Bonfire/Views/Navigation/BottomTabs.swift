//  BottomTabs.swift
//  Bonfire

import SwiftUI

struct BottomTabs: View {
    var body: some View {
        StatusBar()
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(1)
            
            TripsAndBookings()
                .tabItem {
                    Image(systemName: "airplane.departure")
                    Text("Trips and Bookings")
                }
                .tag(2)
            
            Inbox()
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
                    Image(systemName: "person")
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
