//  InboxScreen.swift
//  Bonfire

import SwiftUI

struct InboxScreen: View {
    
    //alert
    @State private var createMessageAlert = false
    
    //types
    struct User: Identifiable {
        let id: Int
        let name: String
        let avatar: String
        let message: String
        let time: String
    }
    
    //data
    @State var users = [
       User(id: 1, name: "Cris Njoki", avatar: "sam", message: "See you soon...", time: "21:00"),
       User(id: 2, name: "Joy Kendi",  avatar: "sam", message: "See you soon...", time: "21:00"),
       User(id: 3, name: "Jay Take A Pic", avatar: "sam", message: "See you soon...", time: "21:00"),
       User(id: 4, name: "Patricia Kihoro", avatar: "sam", message: "See you soon...", time: "21:00"),
       User(id: 5, name: "Sharon Mundia", avatar: "sam", message: "See you soon...", time: "21:00"),
       User(id: 6, name: "Nancie Mwai", avatar: "sam", message: "See you soon...", time: "21:00"),
       User(id: 7, name: "Sharon Mwangi", avatar: "sam", message: "See you soon...", time: "21:00"),
     ]
    
    //@State private var selection: String? = nil
    
    
    var body: some View {
        
        NavigationView {
            // chat list
            List(users){ user in
                NavigationLink(destination: ChatView(),
                    label: {
                        ChatList(name: user.name)
                    }
                )
            }
            .navigationTitle("Messages")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button(action: { createMessageAlert = true }, label: { Image(systemName: "plus.message") }))
        }
        .alert(isPresented: $createMessageAlert) {
            Alert(
                title: Text("Notice").foregroundColor(.red),
                message: Text("Coming soon!")
            )
        }
    }
}

#if DEBUG
struct InboxScreen_Previews: PreviewProvider {
    static var previews: some View {
        InboxScreen()
    }
}
#endif
