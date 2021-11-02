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
        homeCoordinator.rootViewController.navigationBar.backgroundColor = UIColor.white
        homeCoordinator.rootViewController.navigationItem.largeTitleDisplayMode = .always
        homeCoordinator.rootViewController.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.font: UIFont.myBoldSystemFont(ofSize: 35), .foregroundColor: UIColor.black]
        homeCoordinator.rootViewController.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.myBoldSystemFont(ofSize: 15), .foregroundColor: UIColor.black]
        homeCoordinator.rootViewController.tabBarItem =
        UITabBarItem(title: "Home".localized(), image: UIImage(systemName: "homekit"), selectedImage: UIImage(systemName: "homekit"))
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.myBoldSystemFont(ofSize: 15)], for: .normal)
        //
        let moreCoordinator = MoreCoordinator()
        moreCoordinator.rootViewController.navigationBar.prefersLargeTitles = true
        moreCoordinator.rootViewController.navigationBar.backgroundColor = UIColor.white
        moreCoordinator.rootViewController.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.font: UIFont.myBoldSystemFont(ofSize: 35), .foregroundColor: UIColor.black]
        moreCoordinator.rootViewController.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.myBoldSystemFont(ofSize: 15), .foregroundColor: UIColor.black]
        moreCoordinator.rootViewController.navigationItem.largeTitleDisplayMode = .always
        moreCoordinator.rootViewController.tabBarItem =
        UITabBarItem(title: "More".localized(), image: UIImage(systemName: "line.3.horizontal.decrease"), selectedImage: UIImage(systemName: "line.3.horizontal.decrease"))
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.myBoldSystemFont(ofSize: 15)], for: .normal)
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
