//  ExploreScreen.swift
//  Bonfire

import SwiftUI

struct ExploreScreen: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: Color("lightGray"), bottomColor: Color("lightGray"))
            
            ScrollView {
                VStack {
                    
                   CardView(
                    imageName: "diani",
                    headline: "Christmas deal",
                    title: "Palm Beach Resort",
                    caption: "Diani",
                    description: "Enjoy your Christmas in Diani"
                   )
                    CardView(
                    imageName: "zanzibar",
                     headline: "Honeymoon deal",
                     title: "Mapenzi Beach Resort",
                     caption: "Zanzibar",
                     description: "Enjoy your honeymoon in Diani"
                    )
                    
                }
            }
        }
    }
}

struct ExploreScreen_Previews: PreviewProvider {
    static var previews: some View {
        ExploreScreen()
    }
}
