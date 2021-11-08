//
//  MoreCollectionsViewCell.swift
//  Nakd
//
//  Created by Ali Fayed on 02/11/2021.
//

import UIKit
import Kingfisher

class MoreCollectionsViewCell: UICollectionViewCell {
    var model = ["Goals".localized(), "WhyUs?".localized(), "WhoUs?".localized(), "Contact".localized(), "MoreVideos".localized()]
    var images = ["goals", "whyUs?", "people", "why", "videos"]
    weak var delegate: MoreDelegate?
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
    @IBAction func pressMoreButton(_ sender: Any) {
        delegate?.didTapButton(cell: self, didTappedThe: sender as! UIButton)
    }
    func setData(indexPath: IndexPath) {
        lblCategoryName.text = model[indexPath.row]
        imgCategory.image = UIImage(named: images[indexPath.row])
    }
}
