//  LocationDetailsScreen.swift
//  Bonfire

import SwiftUI

struct LocationDetailsScreen: View {
    
    // state management
    @State private var isBooked = false
    
    var body: some View {
        VStack {
            
            // map
            MapView().frame(height: 200)
            
            // circle image
            CircleImage(
                width: 100,
                height: 100,
                strokeColor: .white,
                lineWidth:true,
                shadow: true
            )
                .offset(y: -70)
                //.padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                // title
                Text("Truck House")
                    // .font(.title)
                    .font(.system(size: 40, weight: .bold, design: .default))
                    .foregroundColor(Color.blue)
                HStack {
                    Text("Cool cottage in Kenya")
                        // .font(.subheadline)
                        .font(.system(size: 18, weight: .medium, design: .default))
                    Spacer()
                    Text("Machakos")
                        .foregroundColor(Color.red)
                }
                Divider()
                
                // content
                Text("When you apply a modifier to a layout view like a stack, SwiftUI applies the modifier to all the elements contained in the group.")
                    .font(.body)
                    .padding(.top,10)
            }.padding(20)
            
            // booking button
            Button(action: {
                isBooked.toggle()
            }) {
                PrimaryButton(
                    imageName: isBooked ? "scribble" : "",
                    label: isBooked ? "" : "Book Now",
                    textColor: .white,
                    backgroundColor:.red
                )
            }

        
            Spacer()
        }
    }
}

struct LocationDetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailsScreen()
    }
}
