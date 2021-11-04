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
    case unit1Videos
    case unit1Graphs
    case unit1Quizes
    case unit2
    case unit2Videos
    case unit2Graphs
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
        case .intro:
            let viewController = IntroViewController.instaintiate(on: .intro)
            viewController.navigationController?.navigationBar.prefersLargeTitles = true
            viewController.navigationItem.largeTitleDisplayMode = .always
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
        }
    }
}
