//  BackgroundView.swift
//  Bonfire

import SwiftUI

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
     
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [topColor, bottomColor]),
            startPoint: .topLeading, endPoint: .bottomTrailing
        )
    }
}
