//
//  SecondUnitImageViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 05/11/2021.
//

import UIKit

class SecondUnitImageViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var imageName: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let imageName = imageName else {
            return
        }
        imageView.image = UIImage(named: imageName)
    }
}
