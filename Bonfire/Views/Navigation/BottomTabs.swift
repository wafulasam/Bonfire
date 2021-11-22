//  BottomTabs.swift
//  Bonfire

import SwiftUI

struct BottomTabs: View {
    var body: some View {
        TabView {
            //Tab  1 will have a light status bar
            Color.black
                .edgesIgnoringSafeArea(.all)
                .overlay(Text("Light Status Bar").foregroundColor(.white))
                .statusBarStyle(.lightContent) //set status bar style here
                .tabItem { Text("Tab 1") }
            
            //Tab 2 will have a dark status bar
            Color.white
                .edgesIgnoringSafeArea(.all)
                .overlay(Text("Dark Status Bar"))
                .statusBarStyle(.darkContent) //set status bar style here
                .tabItem { Text("Tab 2") }
        }
    }
}

struct BottomTabs_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabs()
    }
}
