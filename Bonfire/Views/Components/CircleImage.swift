//  CircleImage.swift
//  Bonfire

import SwiftUI


struct CircleImage: View {
    
    var imageName: String
    var width: Double
    var height: Double
    var strokeColor: Color
    var lineWidth: Bool
    var shadow: Bool

    var body: some View {
        Image("\(imageName)")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: width, height: height)
            .overlay(Circle().stroke(strokeColor, lineWidth: lineWidth ? 2 : 0))
            .shadow(radius: shadow ? 5 : 0)
    }
}

//struct CircleImage_Previews: PreviewProvider {
//    static var previews: some View {
//        CircleImage()
//    }
//}
