//
//  InputView.swift
//  USK-WebViewTest
//
//  Created by Yusuke Sato on 16-10-2024.
//

import Foundation
import SwiftUI
import WebKit

struct InputView: View {
    @State private var urlString: String = ""
    @State private var url: URL? = nil
    @State private var isWebViewVisible = false

    var body: some View {
        NavigationStack {
            VStack {
                TextField("Enter URL", text: $urlString)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button("Load URL") {
                    if let validURL = URL(string: urlString), UIApplication.shared.canOpenURL(validURL) {
                        url = validURL
                        isWebViewVisible = true
                    } else {
                        url = nil
                    }
                    let _ = print("isWebViewVisible:", isWebViewVisible)
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .navigationDestination(isPresented: $isWebViewVisible) {
                    if let validURL = url {
                        CustomWebView(url: validURL)
                    }
                }
            }
            .navigationTitle("USK-WebView")
            .padding()
        }
    }
}


#Preview {
    InputView()
}
