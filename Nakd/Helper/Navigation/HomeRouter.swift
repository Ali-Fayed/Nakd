//
//  HomeRouter.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import Foundation
import XCoordinator
import SafariServices
// make route has tab controller or navigation controller or a new root view controller
enum HomeRoute: Route {
    case home
    case unit1
}
class HomeCoordinator: NavigationCoordinator<HomeRoute> {
    init() {
        super.init(initialRoute: .home)
    }
    override func prepareTransition(for route: HomeRoute) -> NavigationTransition {
        switch route {
        case .home:
            let viewController = HomeViewController.instaintiate(on: .mainView)
            viewController.viewModel.router = strongRouter
            return .push(viewController)
        case .unit1:
            let viewC = FirstUnitViewController.instaintiate(on: .firstUnit)
            viewC.viewModel.router = unownedRouter
            return .push(viewController)
        }
    }
}
