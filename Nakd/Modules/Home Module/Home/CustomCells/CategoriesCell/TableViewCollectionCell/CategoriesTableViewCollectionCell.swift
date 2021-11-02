//
//  CollectionViewCellTableViewCell.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import UIKit

class CategoriesTableViewCollectionCell: UITableViewCell {
    //MARK: - props
    @IBOutlet weak var collectionView: UICollectionView!
    let data = ["dd", "dd"]
    //MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register( UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoriesCollectionViewCell")
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
//MARK: - CollectionView
extension CategoriesTableViewCollectionCell: UICollectionViewDelegate, UICollectionViewDataSource {
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
     }
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath) as? CategoriesCollectionViewCell
         cell?.setData(indexPath: indexPath)
         return cell!
     }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
//        collectionView.deselectItem(at: indexPath, animated: true)
        print("CategoriesCollectionViewCell")
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat(100), height: CGFloat(100))
    }
 }
