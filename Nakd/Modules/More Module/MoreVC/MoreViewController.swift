//
//  MoreViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import UIKit
import XCoordinator

class MoreViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    static let moreTableCell = "MoreCollectionsViewCell"
    var router: StrongRouter<MoreRoute>?
    override func viewDidLoad() {
        super.viewDidLoad()
        UIconfig ()
    }
    func UIconfig () {
        title = "More".localized()
        tabBarController?.tabBar.barTintColor = UIColor.white
        tabBarController?.tabBar.backgroundColor = UIColor.white
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        collectionView.register( UINib(nibName: MoreViewController.moreTableCell, bundle: nil), forCellWithReuseIdentifier: MoreViewController.moreTableCell)
    }
}
//MARK: - CollectionView
extension MoreViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
     }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MoreViewController.moreTableCell, for: indexPath) as! MoreCollectionsViewCell
        cell.setData(indexPath: indexPath)
        cell.delegate = self
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
 }
//MARK: - MoreDelegate
extension MoreViewController: MoreDelegate {
    func didTapButton(cell: MoreCollectionsViewCell, didTappedThe button: UIButton?) {
        guard let indexPath = collectionView.indexPath(for: cell) else {return}
        if indexPath.row == 0 {
            router?.trigger(.moreDetails(text: "GoalsDescr".localized()))
        } else if indexPath.row == 1 {
            router?.trigger(.moreDetails(text: "WhyUsDescr".localized()))
        } else if indexPath.row == 2 {
            router?.trigger(.moreDetails(text: "WhoUsDescr".localized()))
        } else if indexPath.row == 3 {
            router?.trigger(.moreDetails(text: "ContactUsDescr".localized()))
        }  else if indexPath.row == 4 {
            router?.trigger(.moreVideos)
        }
    }
}
