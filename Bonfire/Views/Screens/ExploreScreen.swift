//  ExploreScreen.swift
//  Bonfire

import SwiftUI

struct ExploreScreen: View {
    
    //types
    struct Package: Hashable {
        let imageName: String
        let headline: String
        let title: String
        let caption: String
        let description: String
    }
    
    //data
    @State var packages = [
       Package(
        imageName: "diani",
        headline: "Christmas deal",
        title: "Palm Beach Resort",
        caption: "Diani",
        description: "Enjoy your Christmas in Diani"
       ),
       Package(
        imageName: "zanzibar",
        headline: "Honeymoon deal",
        title: "Mapenzi Beach Resort",
        caption: "Zanzibar",
        description: "Enjoy your honeymoon in Zanzibar"
      )
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                // packages
                ForEach(packages, id: \.self) { package in
                    NavigationLink(destination: Text(package.title),
                        label: {
                            CardView(
                                imageName: package.imageName,
                                headline: package.headline,
                                title: package.title,
                                caption: package.caption,
                                description: package.description
                            )
                        }
                    )
                }
                .navigationTitle("Packages")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    leading: Button(action: {}, label: { Image(systemName: "list.bullet")}),
                    trailing: Button(action: {}, label: { Image(systemName: "magnifyingglass")})
                )
            }.background(Color("lightGray"))
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

struct ExploreScreen_Previews: PreviewProvider {
    static var previews: some View {
        ExploreScreen()
    }
}
