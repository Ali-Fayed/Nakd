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
        cell.delegate = self
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            viewModel.router?.trigger(.unit1Videos)
        } else if indexPath.row == 1 {
            viewModel.router?.trigger(.unit1Graphs)
        } else if indexPath.row == 2 {
            viewModel.router?.trigger(.unit1Quizes)
        } else if indexPath.row == 3 {
            viewModel.router?.trigger(.unit1About)
        }
    }
 }
extension FirstUnitViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}
extension FirstUnitViewController: FirstUnitDelegate {
    func didTapButton(cell: FirstUnitCollectionViewCell, didTappedThe button: UIButton?) {
        if cell.lblCategoryName.text ==  "EducationVideos".localized() {
            viewModel.router?.trigger(.unit1Videos)
        } else if cell.lblCategoryName.text ==  "EducationGraphs".localized() {
            viewModel.router?.trigger(.unit1Graphs)
        } else if cell.lblCategoryName.text ==  "EducationQuizes".localized() {
            viewModel.router?.trigger(.unit1Quizes)
        } else if cell.lblCategoryName.text ==  "AboutUs".localized() {
            viewModel.router?.trigger(.unit1About)
        }
    }
}
