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
    var viewModel: HomeViewModel?
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
         cell?.delegate = self
         return cell!
     }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            print("intro")
        } else if indexPath.row == 1 {
            print("unit1")
        } else if indexPath.row == 2 {
            print("unit2")
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat(100), height: CGFloat(100))
    }
 }
extension CategoriesTableViewCollectionCell : DetailViewCellDelegate {
    func didTapButton(cell: CategoriesCollectionViewCell, didTappedThe button: UIButton?) {
        guard let indexPath = collectionView.indexPath(for: cell) else {
            return
        }
        if indexPath.row == 0 {
            print("intro")
        } else if indexPath.row == 1 {
            print("unit1")
        } else if indexPath.row == 2 {
            print("unit2")
        }
    }
}
