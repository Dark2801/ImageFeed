//
//  OAuth2TokenStorage.swift
//  ImageFeed
//
//  Created by Андрей Мерзликин on 28.08.2023.
//

import UIKit

class OAuth2TokenStorage {
    var bearerToken = "Token"
    
    var token: String? {
        set {
            return UserDefaults.standard.set(newValue, forKey: bearerToken)
        }
        get {
            UserDefaults.standard.string(forKey: bearerToken)
        }
    }
}
