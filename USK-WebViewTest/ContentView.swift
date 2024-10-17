//
//  ContentView.swift
//  USK-WebViewTest
//
//  Created by Yusuke Sato on 16-10-2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("USK-WebViewTestApp")
                NavigationLink(destination: InputView()) {
                    Text("BUTTON")
                        .padding()
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
            }
            .padding(100)
        }
    }
}

#Preview {
    ContentView()
}
