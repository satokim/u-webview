//
//  CustomWebView.swift
//  USK-WebViewTest
//
//  Created by Yusuke Sato on 10/17/24.
//

import SwiftUI
import WebKit

struct CustomWebView: View {
    
    @State var url: URL?
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                WebView(url: url)
                    .frame(width: geometry.size.width, height: geometry.size.height)  // WebView를 화면 크기에 맞게 확장
            }
            .edgesIgnoringSafeArea(.bottom)  // 하단 안전 영역 무시
        }
    }
}




// WebView를 SwiftUI에서 사용하기 위한 UIViewRepresentable
struct WebView: UIViewRepresentable {
    let url: URL?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = url {
            
            uiView.load(URLRequest(url: url))
        }
    }
}





#Preview {
    CustomWebView(url: URL(string: "https://www.google.com/maps")!)
}
