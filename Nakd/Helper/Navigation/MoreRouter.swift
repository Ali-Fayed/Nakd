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
    case more
    case moreDetails(text: String)
}
class MoreCoordinator: NavigationCoordinator<MoreRoute> {
    init() {
        super.init(initialRoute: .more)
    }
    override func prepareTransition(for route: MoreRoute) -> NavigationTransition {
        switch route {
        case .more:
            let viewController = MoreViewController.instaintiate(on: .mainView)
            viewController.viewModel.router = strongRouter
            return .push(viewController)
        case .moreDetails(let text):
            let viewController = MoreDetailViewController.instaintiate(on: .mainView)
            viewController.detailText = text
            return .push(viewController)
        }
    }
}
