//
//  MoreViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import UIKit

class MoreViewController: UIViewController {
    var viewModel = MoreViewModel()
    @IBOutlet weak var collectionView: UICollectionView!
    func UIconfig () {
        title = "More".localized()
        tabBarController?.tabBar.barTintColor = UIColor.white
        tabBarController?.tabBar.backgroundColor = UIColor.white
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        UIconfig ()
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        collectionView.register( UINib(nibName: "MoreCollectionsViewCell", bundle: nil), forCellWithReuseIdentifier: "MoreCollectionsViewCell")
    }

}
//MARK: - CollectionView
extension MoreViewController: UICollectionViewDelegate, UICollectionViewDataSource {
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
     }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MoreCollectionsViewCell", for: indexPath) as! MoreCollectionsViewCell
        cell.setData(indexPath: indexPath)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
      
    }
 }
extension MoreViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}
