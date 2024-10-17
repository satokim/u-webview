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
    @State private var url: URL?
    @State private var isWebViewVisible: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("USK-WebView")
                
                TextField("Enter URL", text: $urlString)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .keyboardType(.URL)
                    .padding()
                
                
                Button("Load URL") {
                    if let url = URL(string: urlString), UIApplication.shared.canOpenURL(url) {
                        self.url = url
                        isWebViewVisible = true
                    } else {
                        urlString = ""
                    }
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding()
            .navigationDestination(isPresented: $isWebViewVisible) {
                if let url = url, isWebViewVisible {
                    CustomWebView(url: url)
                }
            }
        }
    }
}

#Preview {
    InputView()
}
