//
//  TabBarVC.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import UIKit
import XCoordinator

class TabBarViewController: UITabBarController {
    var router: UnownedRouter<TabBarRoute>?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.tag == 0 {
            router?.trigger(.home)
        } else if item.tag == 1 {
            router?.trigger(.more)
        }
    }
}
