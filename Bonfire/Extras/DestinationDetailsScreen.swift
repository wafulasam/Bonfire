//  DestinationDetailsScreen.swift
//  Bonfire

import SwiftUI

struct DestinationDetailsScreen: View {
    
    // state management
    @State private var isBooked = false
    
    var body: some View {
        VStack {
            
            // map
            MapView().frame(height: 200)
            
            // circle image
            CircleImage(
                imageName:"sam",
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
                Text("Palm Ridge Resort")
                    // .font(.title)
                    .font(.system(size: 40, weight: .bold, design: .default))
                    .foregroundColor(Color.blue)
                HStack {
                    Text("Diani, Kenya")
                        // .font(.subheadline)
                        .font(.system(size: 18, weight: .medium, design: .default))
                    Spacer()
                    // ratings
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.red)
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.red)
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.red)
                    Image(systemName: "star.fill")
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
                    imageName: isBooked ? "checkmark.circle.fill" : "",
                    label: isBooked ? "Done" : "Book Now",
                    textColor: .white,
                    backgroundColor:Color("red")
                )
            }

            Spacer()
            
        }
        .navigationTitle("Palm Ridge Resort")
    }
}

struct DestinationDetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        DestinationDetailsScreen()
    }
}
