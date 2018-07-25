//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by David Oliver Doswell on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

private let liked = "Liked"
private let notLiked = "Not Liked"

class PaintingTableViewCell: UITableViewCell {
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
   
    weak var delegate: PaintingTableViewCellDelegate?
    
    
    @IBOutlet weak var artImage: UIImageView!
    
    @IBOutlet weak var isLikedText: UIButton!
    
    @IBAction func likeButton(_ sender: Any) {
        delegate?.likeButtonWasTapped(on: self)
        
        if painting?.self.isLiked == true {
            isLikedText.titleLabel?.text = liked
        } else {
            isLikedText.titleLabel?.text = notLiked
        }
    }
    
    func updateViews() {
        guard let painting = painting else { return }
        artImage.image = painting.image
    }
    
}
