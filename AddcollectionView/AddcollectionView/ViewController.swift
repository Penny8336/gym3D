//
//  ViewController.swift
//  AddcollectionView
//
//  Created by 羅珮珊 on 2021/8/6.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return floorImages.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! floorCollectionViewCell
        
        cell.floorImageView.image = UIImage(named: floorImages[indexPath.row])
        cell.floorImageView.layer.cornerRadius = 5.0
        
        return cell
    }
    
    var floorImages:[String] = ["gym", "B1", "1F", "2F"]

    @IBOutlet weak var topCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        topCollectionView.dataSource = self
        topCollectionView.delegate = self
    }


}

