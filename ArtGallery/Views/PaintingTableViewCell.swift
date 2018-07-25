//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by David Oliver Doswell on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var artImage: UIImageView!
    
    @IBAction func likeButton(_ sender: Any) {
        
    }
    
    func updateViews() {
        
    }
    
    
    
}
