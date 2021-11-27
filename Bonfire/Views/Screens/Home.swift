//  ExploreScreen.swift
//  Bonfire

import SwiftUI

struct Home: View {
    
    @State private var showSearchBar: Bool = false

    var body: some View {
        NavigationView {
            ScrollView {
                
                //search
                showSearchBar ? SearchBar() : nil
                
                // items
                Featured()
                CategoryRow(categoryTitle: "Jamuhuri Offer")
                CategoryRow(categoryTitle: "Christmas Deals")
                CategoryRow(categoryTitle: "Honeymoon Deals")
                
                // navigation bar
                .navigationTitle("Packages")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    leading: Button(
                        action: {},
                        label: { Image("logoWhite").resizable().scaledToFit().frame(width: 30, height: 30)}
                    ),
                    trailing: Button(
                        action: { showSearchBar.toggle() },
                        label: { Image(systemName: "magnifyingglass")}
                    )
                )
                
            }
        }
        .onAppear {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color("red"))
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
        .accentColor(Color(.white))
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
