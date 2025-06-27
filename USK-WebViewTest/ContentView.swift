//
//  ContentView.swift
//  USK-WebViewTest
//
//  Created by Yusuke Sato on 16-10-2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                Text("USK-WebViewTestApp")

                NavigationLink("BUTTON", destination: InputView())
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }
            .padding(100)
        }
    }
}

#Preview {
    ContentView()
}
