//
//  OthersTableViewCollectionCell.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import UIKit

class OthersTableViewCollectionCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    let data = ["dd", "dd"]
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register( UINib(nibName: "OthersCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "OthersCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
//MARK: - CollectionView
extension OthersTableViewCollectionCell: UICollectionViewDelegate, UICollectionViewDataSource {
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
     }
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OthersCollectionViewCell", for: indexPath) as! OthersCollectionViewCell
         cell.setData(indexPath: indexPath)
         return cell
     }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
//        collectionView.deselectItem(at: indexPath, animated: true)
        print("CategoriesCollectionViewCell")
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat(50), height: CGFloat(50))
    }
     
 }
