//
//  WebViewViewControllerSpy.swift
//  ImageFeedTests
//
//  Created by Андрей Мерзликин on 16.10.2023.
//
@testable import ImageFeed
import UIKit

final class WebViewViewControllerSpy: WebViewViewControllerProtocol {
    var presenter: ImageFeed.WebViewPresenterProtocol?
    
    var loadRequestCalled: Bool = false
    
    func load(request: URLRequest) {
        loadRequestCalled = true
    }
    
    func setProgressValue(_ newValue: Float) {
        
    }
    
    func setProgressHidden(_ isHidden: Bool) {
        
    }
    
    
}
