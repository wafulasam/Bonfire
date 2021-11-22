
//  ChatList.swift
//  Bonfire

import SwiftUI

struct ChatList: View {
    
    var name: String
    
    var body: some View {
        HStack {
            CircleImage(
                width: 50,
                height: 50,
                strokeColor: .blue,
                lineWidth: false,
                shadow: false
            )
            
            VStack(alignment: .leading) {
                Text("\(name)")
                    .foregroundColor(.primary)
                    .fontWeight(.semibold)
                Text("See you soon...")
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Text("21:00")
                .foregroundColor(Color("red"))
        }.padding(.vertical)
    }
}

//struct ChatList_Previews: PreviewProvider {
//    static var previews: some View {
//        ChatList()
//    }
//}
