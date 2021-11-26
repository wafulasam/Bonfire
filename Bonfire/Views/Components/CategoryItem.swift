//  CategoryItem.swift
//  Bonfire

import SwiftUI

struct CategoryItem: View {
    

    var imageName: String
    var hotel: String
    var description: String
    var destination: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("\(imageName)")
                .resizable()
                .frame(width: 200, height: 155)
                .cornerRadius(5)
            Text("\(hotel)")
                .foregroundColor(Color("secondary"))
                .fontWeight(.bold)
            Text("\(description)")
                .font(.caption)
            Text("\(destination)")
                .foregroundColor(Color("green"))
        }
        .padding(.leading, 15)
        .foregroundColor(Color("primary"))
    }
}

//struct CategoryItem_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryItem()
//    }
//}
