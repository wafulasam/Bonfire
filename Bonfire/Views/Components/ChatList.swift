
//  ChatList.swift
//  Bonfire

import SwiftUI

struct ChatList: View {
    
    var avatar: String
    var name: String
    var message: String
    var time: String
    
    var body: some View {
        HStack {
            CircleImage(
                imageName: avatar,
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
                Text("\(message)")
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Text("\(time)")
                .foregroundColor(Color("red"))
        }.padding(.vertical)
    }
}

//struct ChatList_Previews: PreviewProvider {
//    static var previews: some View {
//        ChatList()
//    }
//}
