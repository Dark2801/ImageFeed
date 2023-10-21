//
//  WebViewPresenterSpy.swift
//  ImageFeedTests
//
//  Created by Андрей Мерзликин on 16.10.2023.
//
@testable import ImageFeed
import Foundation

final class WebViewPresenterSpy: WebViewPresenterProtocol {
    
    var viewDidLoadCalled: Bool = false
    var view: WebViewViewControllerProtocol?
    
    func viewDidLoad() {
        viewDidLoadCalled = true
    }
    
    func didUpdateProgressValue(_ newValue: Double) {
    
    }
    
    func fetchCode(from url: URL) -> String? {
        return nil
    }
}