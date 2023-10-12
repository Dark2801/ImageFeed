//
//  ImageListCell.swift
//  ImageFeed
//
//  Created by Андрей Мерзликин on 09.08.2023.
//
import UIKit

protocol ImagesListCellDelegate: AnyObject {
    func imageListCellDidTapLike(_ cell: ImagesListCell)
}

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"
    weak var delegate: ImagesListCellDelegate?
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var dateLabel: UILabel!
    @IBAction private func likeButtonTapped(_ sender: UIButton) {
        delegate?.imageListCellDidTapLike(self)
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        cellImage.kf.cancelDownloadTask()
    }
    
    public func setIsLiked(isLiked: Bool) {
        let likeImage = isLiked ? UIImage(named: "Like") : UIImage(named: "NO_Like")
        likeButton.imageView?.image = likeImage
        likeButton.setImage(likeImage, for: .normal)
    }
}
