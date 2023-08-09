//
//  ImageListCell.swift
//  ImageFeed
//
//  Created by Андрей Мерзликин on 09.08.2023.
//

import UIKit
final class ImagesListCell: UITableViewCell {
    static let reuseIdentiFilter = "ImagesListCell"
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var dateLabel: UILabel!
}
