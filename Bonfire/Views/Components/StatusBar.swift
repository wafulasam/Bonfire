//  StatusBar.swift
//  Bonfire

import SwiftUI

struct StatusBar: View {
    var body: some View {
            HStack { Spacer()}
            .background(Color(.red))
            .padding(.top, (UIApplication.shared.windows.last?.safeAreaInsets.top)! + 10)
            .background(Color("red"))
            .edgesIgnoringSafeArea(.top)
            .statusBarStyle(.lightContent)
            .frame(height: 0)
    }
}

struct StatusBar_Previews: PreviewProvider {
    static var previews: some View {
        StatusBar()
    }
}
