//
//  ProfilePresenterSpy.swift
//  ImageFeedTests
//
//  Created by Андрей Мерзликин on 16.10.2023.
//
@testable import ImageFeed
import UIKit

final class ProfilePresenterSpy: ProfilePresenterProtocol {
    var view: ProfileViewControllerProtocol?
    var viewDidLoadCalled: Bool = false
    var didLogoutCalled: Bool = false
    var clean: Bool = false
    var observe: Bool = false

    var profileService: ImageFeed.ProfileService
    
    init (profileService: ProfileService ) {
        self.profileService = profileService
    }
    
    func updateProfileDetails(profile: Profile?) {
        view?.configureViews()
        view?.configureConstraints()
    }
    
    func observeAvatarChanges() {
        observe = true
    }
    
    func logout() {
        didLogoutCalled = true
    }
    
    func cleanServicesData() {
        clean = true
    }
    
    func getUrlForProfileImage() -> URL? {
        return URL(string: "\(APIConstants.baseURL)")
    }
    
    func viewDidLoad() {
        viewDidLoadCalled = true
    }
    
    func makeAlert() -> UIAlertController {
        UIAlertController()
    }
}