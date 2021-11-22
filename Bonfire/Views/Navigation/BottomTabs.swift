//  BottomTabs.swift
//  Bonfire

import SwiftUI

struct BottomTabs: View {
    var body: some View {
        TabView {
            
            //Tab  1 will have a light status bar
            Color("red")
                .edgesIgnoringSafeArea(.all)
                .overlay(ExploreScreen().foregroundColor(.white)) // render screen then style it
                .statusBarStyle(.lightContent) //set status bar style here
                .tabItem {
                    Image(systemName: "globe.europe.africa")
                    Text("Explore")
                }
            
            //Tab 2
            Color("red")
                .edgesIgnoringSafeArea(.all)
                .overlay(TripsAndBookings().foregroundColor(.white))
                .statusBarStyle(.lightContent) //set status bar style here
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Trips and Bookings")
                }
            
            //Tab 3
            Color("red")
                .edgesIgnoringSafeArea(.all)
                .overlay(InboxScreen().foregroundColor(.white))
                .statusBarStyle(.lightContent) //set status bar style here
                .tabItem {
                    Image(systemName: "message")
                    Text("Inbox")
                }
            
            //Tab 4
            Color.white
                .edgesIgnoringSafeArea(.all)
                .overlay(AuthScreen())
                .statusBarStyle(.darkContent) //set status bar style here
                // .badge(10)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
            
        }
        .accentColor(Color("red"))
//        .onAppear() {
//            UITabBar.appearance().barTintColor = .yellow
//        }
    }
}

struct BottomTabs_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabs()
    }
}
