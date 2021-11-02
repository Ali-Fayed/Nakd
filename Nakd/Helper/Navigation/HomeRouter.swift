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
    case intro
    case unit1
    case unit2
}
class HomeCoordinator: NavigationCoordinator<HomeRoute> {
    init() {
        super.init(initialRoute: .home)
    }
    override func prepareTransition(for route: HomeRoute) -> NavigationTransition {
        switch route {
        case .home:
            let viewController = HomeViewController.instaintiate(on: .mainView)
            viewController.viewModel.router = unownedRouter
            return .push(viewController)
        case .intro:
            let viewController = IntroViewController.instaintiate(on: .intro)
            return .push(viewController)
        case .unit1:
            let viewController = FirstUnitViewController.instaintiate(on: .firstUnit)
            viewController.viewModel.router = unownedRouter
            return .push(viewController)
        case .unit2:
            let viewController = SecondUnitViewController.instaintiate(on: .secondUnit)
            viewController.viewModel.router = unownedRouter
            return .push(viewController)
        }
    }
}
