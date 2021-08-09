//
//  ViewController.swift
//  AddcollectionView
//
//  Created by 羅珮珊 on 2021/8/6.
//

import UIKit

class ViewController: UIViewController{
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        print(UIScreen.main.bounds.width)
//        let yourWidth = (UIScreen.main.bounds.width) - 100
//        print(yourWidth)
//        return CGSize(width: yourWidth, height: 120)
//    }
    
    var floorImages:[String] = ["gym", "B1", "1F", "2F"]

    @IBOutlet weak var topCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let screenSize = UIScreen.main.bounds
        topCollectionView.dataSource = self
        topCollectionView.delegate = self
        print(screenSize)
        topCollectionView.frame.size.width = screenSize.width - 40
    
    }

}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return floorImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! floorCollectionViewCell
        
        cell.floorImageView.image = UIImage(named: floorImages[indexPath.row])
        cell.floorImageView.layer.cornerRadius = 5.0
        
        return cell
    }
}

extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(floorImages[indexPath.row])
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout{
//    let Clayout = UICollectionViewFlowLayout()
//    layout.sectionInset = UIEdgeInsetsMake(5, 5, 5, 5);

}

