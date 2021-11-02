//
//  OthersCollectionViewCell.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import UIKit
import Kingfisher

class OthersCollectionViewCell: UICollectionViewCell {
    var model = ["MoreSoon".localized(), "MoreSoon".localized(), "MoreSoon".localized(), "MoreSoon".localized()]
    var desc = ["MoreContentSoon".localized(), "MoreContentSoon".localized(), "MoreContentSoon".localized(), "MoreContentSoon".localized()]
    var images = ["soon", "soon", "soon", "soon"]
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
    func setData(indexPath: IndexPath) {
        lblCategoryName.text = model[indexPath.row]
        descriptionTitle.text = desc[indexPath.row]
        imgCategory.image = UIImage(named: images[indexPath.row])
    }
}
