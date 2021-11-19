//
//  TabNavigationScreen.swift
//  Bonfire
//
//  Created by Sam Wafula on 19/11/2021.
//

import SwiftUI

struct TabNavigationScreen: View {
    var body: some View {
        // Tab views
        TabView {
            Text("First Tab")
                //.badge(10)
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            LocationDetailsScreen()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Details")
                }
            MapScreen()
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Map")
                }
            Text("Forth Tab")
                //.badge(10)
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("Fourth")
                }
        }
//        .onAppear() {
//            UITabBar.appearance().barTintColor = .yellow
//            UITabBar.appearance().backgroundColor = UIColor.red
//        }
//        .accentColor(.yellow)
//        .navigationTitle("TabView Demo")
    }
}

struct TabNavigationScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabNavigationScreen()
    }
}
