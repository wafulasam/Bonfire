//  Featured.swift
//  Bonfire

import SwiftUI

struct Featured: View {
    var body: some View {
        VStack {
            Image("diani")
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
        }
    }
}

struct Featured_Previews: PreviewProvider {
    static var previews: some View {
        Featured()
    }
}
