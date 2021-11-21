//  TopBar.swift
//  Bonfire

import SwiftUI

struct TopBar: View {
    
    var title: String
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("\(title)")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Spacer()
            }
        }
        .padding()
        .padding(.top, (UIApplication.shared.windows.last?.safeAreaInsets.top)! + 10)
        .background(Color("red"))
        .edgesIgnoringSafeArea(.top)
    }
}

//struct TopBar_Previews: PreviewProvider {
//    static var previews: some View {
//        TopBar()
//    }
//}

// light or dark content
class Host : UIHostingController<ContentView> {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
