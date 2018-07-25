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

class PaintingTableViewCell: UITableViewCell {
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var artImage: UIImageView!
    
    @IBAction func likeButton(_ sender: Any) {
        delegate?.likeButtonWasTapped(on: self)
    }
    
    func updateViews() {
        guard let painting = painting else { return }
        artImage.image = painting.image
    }
    
}
