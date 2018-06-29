//
//  CollectionViewController.swift
//  UIKitProgrammatically
//
//  Created by Dilip Kumar on 29/06/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    let items = ["Item1", "Item2", "Item3", "Item4"]

    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! myCustomCollectionViewCell
        cell.itemCellLabel.text = items[indexPath.row]
        return cell
        

    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segue4", sender: self)
    }

}
