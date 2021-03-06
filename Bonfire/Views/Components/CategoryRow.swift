//  CategoryRow.swift
//  Bonfire

import SwiftUI

struct CategoryRow: View {
    
    //types
    struct Package: Hashable {
        let category: String
        let hotel: String
        let destination: String
        let imageName: String
        let description: String
        let rating: Double
    }
    
    //data
    @State var packages = [
       Package(
        category: "Christmas deal",
        hotel: "Palm Beach Resort",
        destination: "Diani",
        imageName: "diani",
        description: "Enjoy your Christmas in Diani",
        rating: 5
       ),
       Package(
        category: "Honeymoon deal",
        hotel: "Mapenzi Beach Resort",
        destination: "Zanzibar",
        imageName: "zanzibar",
        description: "Enjoy your honeymoon in Zanzibar",
        rating: 3
      ),
       Package(
        category: "Christmas deal",
        hotel: "Palm Beach Resort",
        destination: "Diani",
        imageName: "diani",
        description: "Enjoy your Christmas in Diani",
        rating: 5
       )
    ]
    
    //props
    var categoryTitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(categoryTitle)")
                .font(.title)
                .padding(.leading, 15)
                .padding(.top, 5)
                .foregroundColor(Color("red"))
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(packages, id: \.self) { package in
                        NavigationLink(
                            destination:
                                PackageDetails(
                                    category: package.category,
                                    hotel: package.hotel,
                                    destination: package.destination,
                                    imageName: package.imageName,
                                    description: package.description,
                                    rating: 5
                                ),
                            label: {
                                CategoryItem(
                                    imageName: package.imageName,
                                    hotel: package.hotel,
                                    description: package.description,
                                    destination: package.destination
                                )
                            }
                        )
                    }
                }
            }
            .frame(height: 185)
            .padding(.vertical)
        }
    }
}

//struct CategoryRow_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryRow()
//    }
//}
