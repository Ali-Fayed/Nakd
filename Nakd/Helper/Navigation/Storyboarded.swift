//
//  Storyboarded.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import UIKit
import Foundation

protocol Storyboarded {
    static func instaintiate(on storyboard: AppStoryboards) -> Self
}
enum AppStoryboards: String {
    case mainView = "Main"
    case intro = "Intro"
    case firstUnit = "Unit1"
    case secondUnit = "Unit2"
}

extension Storyboarded where Self: UIViewController {
    static func instaintiate(on storyboard: AppStoryboards) -> Self {
        let vcID = String(describing: self)
        let storyBoard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        return storyBoard.instantiateViewController(identifier: vcID) as! Self
    }
}
extension UIViewController: Storyboarded {}
