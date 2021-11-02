//
//  SecondUnitViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 02/11/2021.
//

import UIKit

class SecondUnitViewController: UIViewController {
    var viewModel = SecondUnitViewModel()
    @IBOutlet weak var collectionView: UICollectionView!
    let data = ["dd", "dd"]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Unit2".localized()
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        collectionView.register( UINib(nibName: "SecondUnitCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SecondUnitCollectionViewCell")
        // Do any additional setup after loading the view.
    }

}
//MARK: - CollectionView
extension SecondUnitViewController: UICollectionViewDelegate, UICollectionViewDataSource {
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
     }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondUnitCollectionViewCell", for: indexPath) as! SecondUnitCollectionViewCell
        cell.setData(indexPath: indexPath)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
      
    }
 }
extension SecondUnitViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}
