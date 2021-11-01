//
//  CategoriesCollectionViewCell.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import UIKit
import Kingfisher

class CategoriesCollectionViewCell: UICollectionViewCell {
    var model = ["Categories".localized()]
    @IBOutlet weak var catContentView: UIView!
    @IBOutlet weak var imgCategory: UIImageView!
    @IBOutlet weak var lblCategoryName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func setData() {
        lblCategoryName.text = model[0]
    }
}
