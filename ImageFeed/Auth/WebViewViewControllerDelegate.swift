//
//  WebViewViewControllerDelegate.swift
//  ImageFeed
//
//  Created by Андрей Мерзликин on 27.08.2023.
//

import UIKit

protocol WebViewViewControllerDelegate: AnyObject {
    func webViewViewController(_ vc: WebViewViewController, didAuthenticateWithCode code: String)
    func webViewViewControllerDidCancel(_ vc: WebViewViewController)
}
