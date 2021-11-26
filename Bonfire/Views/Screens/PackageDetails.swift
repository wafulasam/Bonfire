//  PackageDetails.swift
//  Bonfire

import SwiftUI

struct PackageDetails: View {
    
    let category: String
    let hotel: String
    let destination: String
    let imageName: String
    let description: String
    let rating: Double
    
    // state management
    @State private var isBooked = false
    
    var body: some View {
        ScrollView {
            VStack {
                // poster image
                VStack {
                    Image("\(imageName)")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 200)
                        .clipped()
                }
                
                // circle image
                CircleImage(
                    imageName:"sam",
                    width: 100,
                    height: 100,
                    strokeColor: .white,
                    lineWidth:true,
                    shadow: true
                ).offset(y: -70).padding(.bottom, -70)
                

                
                VStack(alignment: .leading) {
                    // title
                    Text("\(hotel)")
                        // .font(.title)
                        .font(.system(size: 40, weight: .semibold, design: .default))
                    HStack {
                        Text("\(destination)")
                            // .font(.subheadline)
                            .font(.system(size: 18, weight: .medium, design: .default))
                            .foregroundColor(Color.blue)
                        Spacer()
                        // ratings
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.red)
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.red)
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.red)
                        Image(systemName: "star.fill")
                            .foregroundColor(Color("red"))
                    }
                    Divider()
                    
                    // content
                    Text("\(description)")
                        .font(.body)
                        .padding(.top,10)
                }.padding(20)
                
                // booking button
                Button(action: {
                    isBooked.toggle()
                }) {
                    PrimaryButton(
                        imageName: isBooked ? "checkmark.circle.fill" : "",
                        label: isBooked ? "Done" : "Book Now",
                        textColor: .white,
                        backgroundColor:Color("green")
                    )
                }

                Spacer()
                
                // map
                MapView().frame(height: 200)
                
            }
        }
        .navigationTitle("\(hotel)")
    }
}

//struct PackageDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        PackageDetails()
//    }
//}
