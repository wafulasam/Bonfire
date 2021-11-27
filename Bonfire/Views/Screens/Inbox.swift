//  InboxScreen.swift
//  Bonfire

import SwiftUI

struct Inbox: View {
    
    //alert
    @State private var createMessageAlert = false
    
    //types
    struct User: Identifiable, Hashable {
        let id: Int
        let name: String
        let avatar: String
        let message: String
        let time: String
    }
    
    //data
    @State var users = [
       User(id: 1, name: "Cris Njoki", avatar: "crisnjoki", message: "See you soon...", time: "13:00"),
       User(id: 2, name: "Joy Kendi",  avatar: "joykendi", message: "Alright then", time: "09:00"),
       User(id: 3, name: "Jay Take A Pic", avatar: "sam", message: "Cool.", time: "23:00"),
       User(id: 4, name: "Patricia Kihoro", avatar: "sam", message: "Tomorrow morning", time: "21:00"),
       User(id: 5, name: "Sharon Mundia", avatar: "sam", message: "Wednesday morning.", time: "11:37"),
       User(id: 6, name: "Nancie Mwai", avatar: "sam", message: "Next week Friday.", time: "22:42"),
       User(id: 7, name: "Sharon Mwangi", avatar: "sam", message: "Welcome", time: "21:32"),
     ]
    
    //@State private var selection: String? = nil
    
    
    var body: some View {
        
        NavigationView {
            // chat list
            List(users, id:\.self){ user in
                NavigationLink(destination: ChatView(username: user.name, avatar: user.avatar),
                    label: {
                        ChatList(
                            avatar: user.avatar,
                            name: user.name,
                            message: user.message,
                            time: user.time
                        )
                    }
                )
            }
            .navigationTitle("Messages")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: Button(
                    action: {},
                    label: { Image("logoWhite").resizable().scaledToFit().frame(width: 30, height: 30)}
                ),
                trailing: Button(action: { createMessageAlert = true }, label: { Image(systemName: "plus.message")})
            )
        }
        .onAppear {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color("red"))
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
        .accentColor(Color(.white))
        
        .alert(isPresented: $createMessageAlert) {
            Alert(
                title: Text("Notice").foregroundColor(.red),
                message: Text("Coming soon!")
            )
        }
    }
}

#if DEBUG
struct Inbox_Previews: PreviewProvider {
    static var previews: some View {
        Inbox()
    }
}
#endif
