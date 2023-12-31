//
//  ImageFeedUITests.swift
//  ImageFeedUITests
//
//  Created by Андрей Мерзликин on 21.10.2023.
//

import XCTest

 class ImageFeedUITests: XCTestCase {
     private let app = XCUIApplication() // переменная приложения
     private let login = ""
     private let password = ""
     private let userName = ""
     private let nickName = ""
    override func setUpWithError() throws {
       continueAfterFailure = false
        app.launch()
}
     func testAuth() throws {
         app.buttons["Authenticate"].tap()
         
         let webView = app.webViews["UnsplashWebView"]
         
         XCTAssertTrue(webView.waitForExistence(timeout: 5))
         
         let loginTextField = webView.descendants(matching: .textField).element
         XCTAssertTrue(loginTextField.waitForExistence(timeout: 5))
         
         loginTextField.tap()
         loginTextField.typeText(login)
         webView.swipeUp()
         
         let passwordTextField = webView.descendants(matching: .secureTextField).element
         XCTAssertTrue(passwordTextField.waitForExistence(timeout: 5))
         
         passwordTextField.tap()
         passwordTextField.typeText(password)
         webView.swipeUp()
         
         webView.buttons["Login"].tap()
         
         let tablesQuery = app.tables
         let cell = tablesQuery.children(matching: .cell).element(boundBy: 0)
         
         XCTAssertTrue(cell.waitForExistence(timeout: 5))
     }
     
     func testFeed() throws {
         let tablesQuery = app.tables
         
         let cell = tablesQuery.children(matching: .cell).element(boundBy: 0)
         cell.swipeUp()
         
         sleep(2)
         
         let cellToLike = tablesQuery.children(matching: .cell).element(boundBy: 1)
         
         cellToLike.buttons["likeButton"].tap()
         cellToLike.buttons["likeButton"].tap()
         
         sleep(2)
         
         cellToLike.tap()
         
         sleep(2)
         
         let image = app.scrollViews.images.element(boundBy: 0)
         // Zoom in
         image.pinch(withScale: 3, velocity: 1)
         // Zoom out
         image.pinch(withScale: 0.5, velocity: -1)
         
         let navBackButtonWhiteButton = app.buttons["backButton"]
         navBackButtonWhiteButton.tap()
     }
     func testProfile() throws {
         sleep(3)
         app.tabBars.buttons.element(boundBy: 1).tap()
         
         XCTAssertTrue(app.staticTexts["\(userName)"].exists)
         XCTAssertTrue(app.staticTexts["\(nickName)"].exists)
         
         app.buttons["logoutButton"].tap()
         
         app.alerts["Пока, пока!"].scrollViews.otherElements.buttons["Да"].tap()
         
         let authButton = app.buttons["Authenticate"]
         XCTAssertTrue(authButton.waitForExistence(timeout: 5))
         
     }
    
}
