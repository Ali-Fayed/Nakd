//
//  MoreViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import UIKit
import XCoordinator

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
        cell.delegate = self
        return cell
    }
 }
extension MoreViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}
extension MoreViewController: MoreDelegate {
    func didTapButton(cell: MoreCollectionsViewCell, didTappedThe button: UIButton?) {
        guard let indexPath = collectionView.indexPath(for: cell) else {
            return
        }
        if indexPath.row == 0 {
            viewModel.router?.trigger(.moreDetails(text: "GoalsDescr".localized()))
        } else if indexPath.row == 1 {
            viewModel.router?.trigger(.moreDetails(text: "WhyUsDescr".localized()))
        } else if indexPath.row == 2 {
            viewModel.router?.trigger(.moreDetails(text: "WhoUsDescr".localized()))
        } else if indexPath.row == 3 {
            viewModel.router?.trigger(.moreDetails(text: "ContactUsDescr".localized()))
        }
    }
    
}
