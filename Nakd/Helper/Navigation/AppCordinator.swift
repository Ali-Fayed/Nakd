//
//  AppCordinator.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import UIKit
import Foundation
import XCoordinator

enum AppRoute: Route {
    case home
}

class AppCoordinator: NavigationCoordinator<AppRoute> {
    // MARK: Initialization
    init() {
        super.init(initialRoute: .home)
    }
    // MARK: Overrides
    override func prepareTransition(for route: AppRoute) -> NavigationTransition {
        switch route {
        case .home:
            let tabCoordinator = HomeTabBarCoordinator()
            tabCoordinator.rootViewController.navigationController?.navigationBar.prefersLargeTitles = true
            tabCoordinator.rootViewController.navigationItem.largeTitleDisplayMode = .always
            tabCoordinator.rootViewController.viewController.modalPresentationStyle = .fullScreen
            return .present(tabCoordinator)
        }
    }
}
