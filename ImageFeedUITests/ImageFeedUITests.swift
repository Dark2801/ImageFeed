//
//  ImageFeedUITests.swift
//  ImageFeedUITests
//
//  Created by Андрей Мерзликин on 19.10.2023.
//

import XCTest

final class ImageFeedUITests: XCTestCase {
    private let app = XCUIApplication() // переменная приложения

    override func setUpWithError() throws {
       /** настройка выполнения тестов, которая прекратит выполнения тестов,
        если в тесте что то пошло не так
        */
        continueAfterFailure = false
      // запускает приложение перед каждым тестом
        app.launch()
       
    }

    func testAuth() throws {
    // тестируем сценарий авторизации
    }
    func testFeed() throws {
        // тестируем сценарий ленты
    }
    func testProfile() throws {
        // тестируем сценарий профиля
    }
}
