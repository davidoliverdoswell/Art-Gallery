//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by David Oliver Doswell on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let paintingController = PaintingController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        paintingController.loadPaintingsFromAssets()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PaintingTableViewCell
        
        let painting = paintingController.paintings[indexPath.row]
        cell.artImage.image = painting.image
        
        return cell
    }

}
