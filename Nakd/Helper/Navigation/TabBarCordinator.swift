//
//  TabBarCordinator.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import Foundation
import XCoordinator
enum TabBarRoute: Route {
    case home
    case more
}
class HomeTabBarCoordinator: TabBarCoordinator<TabBarRoute> {
    private let homeRouter: StrongRouter<HomeRoute>
    private let moreRouter: StrongRouter<MoreRoute>
    // MARK: - Initialization
    convenience init() {
        let homeCoordinator = HomeCoordinator()
        homeCoordinator.rootViewController.navigationBar.prefersLargeTitles = true
        homeCoordinator.rootViewController.navigationItem.largeTitleDisplayMode = .always
        homeCoordinator.rootViewController.tabBarItem =
        UITabBarItem(title: "Home".localized(), image: UIImage(systemName: "homekit"), selectedImage: UIImage(systemName: "homekit"))
        //
        let moreCoordinator = MoreCoordinator()
        moreCoordinator.rootViewController.navigationBar.prefersLargeTitles = true
        moreCoordinator.rootViewController.navigationItem.largeTitleDisplayMode = .always
        moreCoordinator.rootViewController.tabBarItem =
        UITabBarItem(title: "More".localized(), image: UIImage(systemName: "line.3.horizontal.decrease"), selectedImage: UIImage(systemName: "line.3.horizontal.decrease"))
        //
        self.init(homeRouter: homeCoordinator.strongRouter,
                  moreRouter: moreCoordinator.strongRouter)
    }
    init(homeRouter: StrongRouter<HomeRoute>, moreRouter: StrongRouter<MoreRoute>) {
        self.homeRouter = homeRouter
        self.moreRouter = moreRouter
        super.init(tabs: [homeRouter, moreRouter], select: homeRouter)
    }
    // MARK: - Overrides
    override func prepareTransition(for route: TabBarRoute) -> TabBarTransition {
        switch route {
        case .home:
            return .select(homeRouter)
        case .more:
            return .select(moreRouter)
        }
    }
 }
