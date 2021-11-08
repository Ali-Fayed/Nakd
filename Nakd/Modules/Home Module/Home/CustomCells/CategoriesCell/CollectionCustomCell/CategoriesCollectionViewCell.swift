//
//  CategoriesCollectionViewCell.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//
import UIKit
import Kingfisher

class CategoriesCollectionViewCell: UICollectionViewCell {
    var model = ["Unit1".localized(), "Unit2".localized(), "FinalQuiz".localized()]
    var desc = ["Unit1Desc".localized(), "Unit2Desc".localized(), "FinalQuizDesc".localized()]
    var images = ["unit1", "unit2", "exam"]
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
