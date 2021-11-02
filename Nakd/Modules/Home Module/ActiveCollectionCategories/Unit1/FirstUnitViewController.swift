//
//  FirstUnitViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 02/11/2021.
//

import UIKit

class FirstUnitViewController: UIViewController {
    var viewModel = FirstUnitViewModel()
    @IBOutlet weak var collectionView: UICollectionView!
    let data = ["dd", "dd"]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Unit1".localized()
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        collectionView.register( UINib(nibName: "FirstUnitCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FirstUnitCollectionViewCell")
        // Do any additional setup after loading the view.
    }
    



}
//MARK: - CollectionView
extension FirstUnitViewController: UICollectionViewDelegate, UICollectionViewDataSource {
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
     }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstUnitCollectionViewCell", for: indexPath) as! FirstUnitCollectionViewCell
        cell.setData(indexPath: indexPath)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
      
    }
 }
extension FirstUnitViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}
