//
//  SingleImageViewController.swift
//  ImageFeed
//
//  Created by Андрей Мерзликин on 12.08.2023.
//

import UIKit

final class SingleImageViewController: UIViewController {
    var image: UIImage! {
        didSet {
            guard isViewLoaded else { return }
            imageView.image = image
        }
    }

    @IBOutlet private var imageView: UIImageView!
    @IBAction private func didTapBackButton() {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    }
}
