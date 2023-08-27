//
//  WebViewViewController.swift
//  ImageFeed
//
//  Created by Андрей Мерзликин on 26.08.2023.
//

import UIKit
import WebKit

fileprivate let unsplashAuthorizeURLString = "https://unsplash.com/oath/authorize"


final class WebViewViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    @IBAction private func didTapBackButton(_ sender: Any?) {
        delegate?.webViewViewControllerDidCancel(self)
    }
    weak var delegate: WebViewViewControllerDelegate?
    override func viewDidLoad() {
        webView.navigationDelegate = self
        super.viewDidLoad()
      
        var urlComponents = URLComponents(string: unsplashAuthorizeURLString)!
        urlComponents.queryItems = [
        URLQueryItem(name: "client_id", value: accessKey),
        URLQueryItem(name: "redirect_url", value: redirectURL),
        URLQueryItem(name: "response_type", value: "code"),
        URLQueryItem(name: "scope", value: accessScope)
        ]
        let url = urlComponents.url!
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
extension WebViewViewController: WKNavigationDelegate {
    func webView(
        _ webView: WKWebView,
        decidePolicyFor navigationAction: WKNavigationAction,
        decisionHandler: @escaping (WKNavigationActionPolicy) -> Void
    ) {
        if let code = code(from: navigationAction) {
            delegate?.webViewViewController(self, didAuthenticateWithCode: code)
            decisionHandler(.cancel)
        } else {
            decisionHandler(.allow)
        }
    }

    private func code(from navigationAction: WKNavigationAction) -> String? {
        if
            let url = navigationAction.request.url,
            let urlComponents = URLComponents(string: url.absoluteString),
            urlComponents.path == "/oauth/authorize/native",
            let items = urlComponents.queryItems,
            let codeItem = items.first(where: { $0.name == "code" })
        {
            return codeItem.value
        } else {
            return nil
        }
    }
}
