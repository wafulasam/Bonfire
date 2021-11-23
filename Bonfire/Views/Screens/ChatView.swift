//  ChatView.swift
//  Bonfire

import SwiftUI

struct ChatView: View {
    
    //types

    let username: String
    
    //var selected:String?
    //@Binding var selectedUser: String?
    //var user: User
    
    var body: some View {
        VStack {
            Text("Hi \(username) 👋")
        }
        .navigationTitle("\(username)")
    }
}

//#if DEBUG
//struct ChatView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChatView(user: User[0])
//    }
//}
//#endif
