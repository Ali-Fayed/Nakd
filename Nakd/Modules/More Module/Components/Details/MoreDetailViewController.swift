//
//  MoreDetailViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 05/11/2021.
//

import UIKit

class MoreDetailViewController: UIViewController {
    @IBOutlet weak var detailLabel: UILabel!
    var detailText: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = detailText
    }
}
