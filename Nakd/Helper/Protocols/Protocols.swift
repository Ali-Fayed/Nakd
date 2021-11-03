//
//  Protocols.swift
//  Nakd
//
//  Created by Ali Fayed on 03/11/2021.
//
import UIKit

protocol DetailViewCellDelegate: AnyObject {
    func didTapButton(cell: CategoriesCollectionViewCell, didTappedThe button:UIButton?)
}
protocol HomeViewCellDelegate: AnyObject {
    func didTapButton(cell: CategoriesCollectionViewCell)
}
protocol FirstUnitDelegate: AnyObject {
    func didTapButton(cell: FirstUnitCollectionViewCell, didTappedThe button:UIButton?)
}
protocol SecondUnitDelegate: AnyObject {
    func didTapButton(cell: SecondUnitCollectionViewCell, didTappedThe button:UIButton?)
}
