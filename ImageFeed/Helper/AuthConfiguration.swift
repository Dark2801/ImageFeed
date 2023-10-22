//
//  AuthConfiguration.swift
//  ImageFeed
//
//  Created by Андрей Мерзликин on 13.10.2023.
//
import Foundation

import Foundation
struct APIConstants {
    static let accessKey = "dkYxH36k-MNfmuNzyspSHV1qQQFdvMVctSsAyrbxuMo"
    static let secretKey = "Ovf-77vkqKCLYdupNIYP75vkogNQMODvJW9e-h1QL2Q"
    static let redirectURI = "urn:ietf:wg:oauth:2.0:oob"
    static let accessScope = "public+read_user+write_likes"
    static let defaultBaseURL = URL(string: "https://api.unsplash.com")!
    static let baseURL =  URL(string: "https://unsplash.com")!
    static let authorizeURLString = "https://unsplash.com/oauth/authorize"
    static let code = "code"
    static let authorizationPath = "/oauth/authorize/native"
    
}

struct AuthConfiguration {
    let accessKey: String
    let secretKey: String
    let redirectURI: String
    let accessScope: String
    let defaultBaseURL: URL
    let authURLString: String
    
    let code: String
    let authorizationPath: String
    let baseURL: URL
    
    static var standard: AuthConfiguration {
        return AuthConfiguration(accessKey: APIConstants.accessKey,
        secretKey: APIConstants.secretKey,
        redirectURI: APIConstants.redirectURI,
        accessScope: APIConstants.accessScope,
        defaultBaseURL: APIConstants.defaultBaseURL,
        authURLString: APIConstants.authorizeURLString,
        code: APIConstants.code,
        authorizationPath: APIConstants.authorizationPath,
        baseURL: APIConstants.baseURL)
    }
}
