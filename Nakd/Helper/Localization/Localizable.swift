//
//  Localizable.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import Foundation
extension String {
    func localized () -> String {
        return NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: self, comment: self
        )
    }
}
