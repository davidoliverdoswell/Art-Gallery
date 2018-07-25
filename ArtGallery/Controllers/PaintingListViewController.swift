//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by David Oliver Doswell on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let paintingController = PaintingController()
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        let indexPath = tableView.indexPath(for: cell)
        guard let likedPainting = indexPath else { return }
        paintingController.toggleIsLiked(for: paintingController.paintings[(likedPainting.row)])
        tableView.reloadRows(at: [indexPath!], with: .fade)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PaintingTableViewCell
                
        let painting = paintingController.paintings[indexPath.row]
        cell.painting = painting
        cell.delegate = self
        
        return cell
    }

}
