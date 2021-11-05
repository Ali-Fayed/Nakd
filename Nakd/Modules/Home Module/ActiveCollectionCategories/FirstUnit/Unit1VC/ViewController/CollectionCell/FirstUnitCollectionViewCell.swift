//
//  FirstUnitCollectionViewCell.swift
//  Nakd
//
//  Created by Ali Fayed on 02/11/2021.
//

import UIKit
import Kingfisher

class FirstUnitCollectionViewCell: UICollectionViewCell {
    var model = ["EducationVideos".localized(), "EducationGraphs".localized(), "EducationQuizes".localized()]
    var desc = ["EducationVideosDesc".localized(), "EducationGraphsDesc".localized(), "EducationQuizesDesc".localized()]
    var images = ["videos", "graphs", "quiz"]
    weak var delegate: FirstUnitDelegate?
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
    @IBAction func buttonPressed(_ sender: UIButton) {
        delegate?.didTapButton(cell: self, didTappedThe: sender)
    }
    func setData(indexPath: IndexPath) {
        lblCategoryName.text = model[indexPath.row]
        descriptionTitle.text = desc[indexPath.row]
        imgCategory.image = UIImage(named: images[indexPath.row])
    }
}
