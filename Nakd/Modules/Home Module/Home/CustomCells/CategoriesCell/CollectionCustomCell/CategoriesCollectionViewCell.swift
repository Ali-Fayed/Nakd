//
//  CategoriesCollectionViewCell.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//
import UIKit
import Kingfisher

class CategoriesCollectionViewCell: UICollectionViewCell {
    var model = ["Intro".localized(), "Unit1".localized(), "Unit2".localized()]
    var desc = ["IntroDesc".localized(), "Unit1Desc".localized(), "Unit2Desc".localized()]
    var images = ["intro", "unit1", "unit2"]
    weak var delegate : DetailViewCellDelegate?
    @IBOutlet weak var descriptionTitle: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var catContentView: UIView!
    @IBOutlet weak var imgCategory: UIImageView!
    @IBOutlet weak var lblCategoryName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        continueButton.layer.cornerRadius = 10
        catContentView.layer.cornerRadius = 10
    }
    @IBAction func pressStartButton(_ sender: UIButton) {
        delegate?.didTapButton(cell: self, didTappedThe: sender as? UIButton)
    }
    func setData(indexPath: IndexPath) {
        lblCategoryName.text = model[indexPath.row]
        descriptionTitle.text = desc[indexPath.row]
        imgCategory.image = UIImage(named: images[indexPath.row])
    }
}
//MARK: - protocol
protocol DetailViewCellDelegate: AnyObject {
    func didTapButton(cell: CategoriesCollectionViewCell, didTappedThe button:UIButton?)
}
protocol HomeViewCellDelegate: AnyObject {
    func didTapButton(cell: CategoriesCollectionViewCell)
}
protocol FirstUnitDelegate: AnyObject {
    func didTapButton(cell: FirstUnitCollectionViewCell, didTappedThe button:UIButton?)
}
protocol SecondUnitDelegate: AnyObject {
    func didTapButton(cell: SecondUnitCollectionViewCell, didTappedThe button:UIButton?)
}
