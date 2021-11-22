//  InboxScreen.swift
//  Bonfire

import SwiftUI

struct InboxScreen: View {
    
    let users: [String] = ["Cris Njoki", "Joy Kendi", "Jay Take A Pic", "Patricia Kihoro", "Sharon Mundia"]
    
    var body: some View {
        
        NavigationView {
            // chat list
            List(users, id:\.self) {
                user in
                NavigationLink(
                    destination: ChatView(),
                    label: {
                        ChatList(name: user)
                    }
                )
            }
            .navigationTitle("Messages")
        }
    }
}

struct InboxScreen_Previews: PreviewProvider {
    static var previews: some View {
        InboxScreen()
    }
}
