//  StatusBar.swift
//  Bonfire

import SwiftUI

struct StatusBar: View {
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Spacer()
            }
        }
        .padding((UIApplication.shared.windows.last?.safeAreaInsets.top)! + 10)
        .background(Color("red"))
        .edgesIgnoringSafeArea(.top)
    }
}

struct StatusBar_Previews: PreviewProvider {
    static var previews: some View {
        StatusBar()
    }
}

// light or dark content
class Host : UIHostingController<ContentView> {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
