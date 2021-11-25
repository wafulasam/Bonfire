//  ChatView.swift
//  Bonfire

import SwiftUI

struct ChatView: View {
    
    var username: String
    var avatar:String
    
    var body: some View {
        VStack {
            Text("Hi \(username) 👋")
        }
        .navigationTitle("\(username)")
        .navigationBarItems(
            trailing:
                CircleImage(
                imageName:avatar,
                width: 35,
                height: 35,
                strokeColor: .white,
                lineWidth:true,
                shadow: false
            )
        )
    }
}

//#if DEBUG
//struct ChatView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChatView(user: User[0])
//    }
//}
//#endif
