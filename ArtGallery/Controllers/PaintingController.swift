//
//  PaintingController.swift
//  ArtGallery
//
//  Created by David Oliver Doswell on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingController: UIViewController {
    
    var paintings : [Painting] = []
    
    func loadPaintingsFromAssets() {
        for number in 1...12 {
            if number > 0 {
                guard let image = UIImage(named: "Image\(number)") else { return }
                let painting = Painting(image: image)
                paintings.append(painting)
            }
        }
    }
    
    func toggleIsLiked(for painting: Painting) {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        loadPaintingsFromAssets()
    }
    
}



