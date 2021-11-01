//
//  MoreViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import UIKit

class MoreViewController: UIViewController {
    lazy var viewModel = MoreViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "More".localized()
    }
    
}
