//  CardView.swift
//  Bonfire

import SwiftUI

struct CardView: View {
    
    var imageName: String
    var headline: String
    var title: String
    var caption: String
    var description: String
    
    var body: some View {
        
        VStack {
            Image("\(imageName)")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack (alignment: .leading) {
                    Text("\(headline)".uppercased())
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text("\(title)")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text("\(caption)")
                        //.font(.caption)
                        .foregroundColor(Color("green"))
                    Text("\(description)")
                        .font(.caption)
                        .foregroundColor(.primary)
                }
                .layoutPriority(100)
                
                Spacer()
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView()
//    }
//}
