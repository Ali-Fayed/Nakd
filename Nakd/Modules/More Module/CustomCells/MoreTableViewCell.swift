//
//  MoreTableViewCell.swift
//  Nakd
//
//  Created by Ali Fayed on 02/11/2021.
//

import UIKit

class MoreTableViewCell: UITableViewCell {
    var data = ["الأهداف", "لماذا ناقد", "من نحن", "تواصل معنا"]
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func setData (indexPath: IndexPath) {
        textLabel?.text = data[indexPath.row]
    }
}
