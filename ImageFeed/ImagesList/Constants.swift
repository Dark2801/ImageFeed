//
//  Constants.swift
//  ImageFeed
//
//  Created by Андрей Мерзликин on 26.08.2023.
//

import Foundation
struct APIConstants {
   static let accessKey = "dkYxH36k-MNfmuNzyspSHV1qQQFdvMVctSsAyrbxuMo"
   static let secretKey = "Ovf-77vkqKCLYdupNIYP75vkogNQMODvJW9e-h1QL2Q"
   static let redirectURL = "urn:ietf:wg:oauth:2.0:oob"
   static let accessScope = "public+read_user+write_likes"
   static let defaultBaseURL = URL(string: "https://api.unsplash.com")!
   static let baseURL =  URL(string: "https://unsplash.com")!
   static let authorizeURLString = "https://unsplash.com/oauth/authorize"
   static let code = "code"
   static let authorizationPath = "/oauth/authorize/native"
}
