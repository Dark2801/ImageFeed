//
//  SingleImageViewController.swift
//  ImageFeed
//
//  Created by Андрей Мерзликин on 12.08.2023.
//

import UIKit
final class SingleImageViewController: UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    @IBOutlet var imageView: UIImageView!
}
