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
    case unit1Videos
    case unit1Graphs
    case unit1ImageView(imageName: String)
    case unit1Quizes
    case unit2
    case unit2Videos
    case unit2Graphs
    case unit2ImageView
    case unit2Quizes
    case finalQuiz
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
        case .unit1:
            let viewController = FirstUnitViewController.instaintiate(on: .firstUnit)
            viewController.viewModel.router = unownedRouter
            viewController.navigationController?.navigationBar.prefersLargeTitles = true
            viewController.navigationItem.largeTitleDisplayMode = .always
            return .push(viewController)
        case .unit1Videos:
            let viewController = FirstUnitVideosViewController.instaintiate(on: .firstUnit)
            viewController.navigationController?.navigationBar.prefersLargeTitles = true
            viewController.navigationItem.largeTitleDisplayMode = .always
            return .push(viewController)
        case .unit1Graphs:
            let viewController = FirstUnitGraphsViewController.instaintiate(on: .firstUnit)
            viewController.router = unownedRouter
            viewController.navigationController?.navigationBar.prefersLargeTitles = true
            viewController.navigationItem.largeTitleDisplayMode = .always
            return .push(viewController)
        case .unit1Quizes:
            let viewController = FirstUnitFormViewController.instaintiate(on: .firstUnit)
            viewController.navigationController?.navigationBar.prefersLargeTitles = true
            viewController.navigationItem.largeTitleDisplayMode = .always
            return .push(viewController)
        case .unit2:
            let viewController = SecondUnitViewController.instaintiate(on: .secondUnit)
            viewController.navigationController?.navigationBar.prefersLargeTitles = true
            viewController.navigationItem.largeTitleDisplayMode = .always
            viewController.viewModel.router = unownedRouter
            return .push(viewController)
        case .unit2Videos:
            let viewController = SecondUnitVideosViewController.instaintiate(on: .secondUnit)
            viewController.navigationController?.navigationBar.prefersLargeTitles = true
            viewController.navigationItem.largeTitleDisplayMode = .always
            return .push(viewController)
        case .unit2Graphs:
            let viewController = SecondUnitGraphsViewController.instaintiate(on: .secondUnit)
            viewController.router = unownedRouter
            viewController.navigationController?.navigationBar.prefersLargeTitles = true
            viewController.navigationItem.largeTitleDisplayMode = .always
            return .push(viewController)
        case .unit2Quizes:
            let viewController = SecondUnitFormViewController.instaintiate(on: .secondUnit)
            viewController.navigationController?.navigationBar.prefersLargeTitles = true
            viewController.navigationItem.largeTitleDisplayMode = .always
            return .push(viewController)
        case .finalQuiz:
            let viewController = FinalQuizViewController.instaintiate(on: .mainView)
            viewController.navigationController?.navigationBar.prefersLargeTitles = true
            viewController.navigationItem.largeTitleDisplayMode = .always
            return .push(viewController)
        case .unit1ImageView(let imageName):
            let viewController = FirstUnitImageViewController.instaintiate(on: .firstUnit)
            viewController.imageName = imageName
            return .push(viewController)
        case .unit2ImageView:
            let viewController = SecondUnitImageViewController.instaintiate(on: .secondUnit)
            return .push(viewController)
        }
    }
}
