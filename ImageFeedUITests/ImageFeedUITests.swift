//
//  ImageFeedUITests.swift
//  ImageFeedUITests
//
//  Created by Андрей Мерзликин on 21.10.2023.
//

import XCTest

 class ImageFeedUITests: XCTestCase {
     private let app = XCUIApplication() // переменная приложения

    override func setUpWithError() throws {
       continueAfterFailure = true
        app.launch()
}
     func testAuth() throws {
         app.buttons["Authenticate"].tap()
         
         let webView = app.webViews["UnsplashWebView"]
         
         XCTAssertTrue(webView.waitForExistence(timeout: 5))
         
         let loginTextField = webView.descendants(matching: .textField).element
         XCTAssertTrue(loginTextField.waitForExistence(timeout: 5))
         
         loginTextField.tap()
         loginTextField.typeText("ripper2801@mail.ru")
         webView.swipeUp()
         
         let passwordTextField = webView.descendants(matching: .secureTextField).element
         XCTAssertTrue(passwordTextField.waitForExistence(timeout: 5))
         
         passwordTextField.tap()
         passwordTextField.typeText("230710sva")
         webView.swipeUp()
         
         webView.buttons["Login"].tap()
         
         let tablesQuery = app.tables
         let cell = tablesQuery.children(matching: .cell).element(boundBy: 0)
         
         XCTAssertTrue(cell.waitForExistence(timeout: 5))
     }
    
}