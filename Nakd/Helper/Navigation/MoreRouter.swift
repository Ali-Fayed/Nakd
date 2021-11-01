//
//  MoreRouter.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import Foundation
import XCoordinator
import SafariServices
// make route has tab controller or navigation controller or a new root view controller
enum MoreRoute: Route {
    case home
}
class MoreCoordinator: NavigationCoordinator<MoreRoute> {
    init() {
        super.init(initialRoute: .home)
    }
    override func prepareTransition(for route: MoreRoute) -> NavigationTransition {
        switch route {
        case .home:
            let viewController = MoreViewController.instaintiate(on: .mainView)
            viewController.viewModel.router = strongRouter
            return .push(viewController)
        }
    }
}
