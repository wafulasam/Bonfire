//  CircleImage.swift
//  Bonfire

import SwiftUI


struct CircleImage: View {
    
    var width: Int
    var height: Int
    var strokeColor: Color
    var lineWidth: Bool
    var shadow: Bool

    var body: some View {
        Image("sam")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(strokeColor, lineWidth: lineWidth ? 2 : 0))
            .shadow(radius: shadow ? 5 : 0)
    }
}

//struct CircleImage_Previews: PreviewProvider {
//    static var previews: some View {
//        CircleImage()
//    }
//}
