//  BottomTabs.swift
//  Bonfire

import SwiftUI

struct BottomTabViews: View {
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
            Color("red")
                .edgesIgnoringSafeArea(.all)
                .overlay(ProfileScreen().foregroundColor(.white))
                .statusBarStyle(.lightContent) //set status bar style here
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
            
            //DARK TEXT ON WHITE BACKGROUND
//            Color.white
//                .edgesIgnoringSafeArea(.all)
//                .overlay(Text("Dark text"))
//                .statusBarStyle(.darkContent) //set status bar style here
//                // .badge(10)
//                .tabItem {
//                    Image(systemName: "person.circle")
//                    Text("Profile")
//                }
            
        }
        .accentColor(Color("red"))
//        .onAppear() {
//            UITabBar.appearance().barTintColor = .yellow
//        }
    }
}

struct BottomTabViews_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabViews()
    }
}
