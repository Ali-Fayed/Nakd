//
//  MoreCollectionsViewCell.swift
//  Nakd
//
//  Created by Ali Fayed on 02/11/2021.
//

import UIKit
import Kingfisher

class MoreCollectionsViewCell: UICollectionViewCell {
    var model = ["Goals".localized(), "WhyUs?".localized(), "WhoUs?".localized(), "Contact".localized()]
    var images = ["goals", "whyUs?", "people", "why"]
    @IBOutlet weak var descriptionTitle: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var catContentView: UIView!
    @IBOutlet weak var imgCategory: UIImageView!
    @IBOutlet weak var lblCategoryName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        continueButton.layer.cornerRadius = 10
        descriptionTitle.isHidden = true
        catContentView.layer.cornerRadius = 10
    }
    func setData(indexPath: IndexPath) {
        lblCategoryName.text = model[indexPath.row]
        imgCategory.image = UIImage(named: images[indexPath.row])
    }
}
