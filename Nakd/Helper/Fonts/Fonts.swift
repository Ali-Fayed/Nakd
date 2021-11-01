//
//  Fonts.swift
//  Nakd
//
//  Created by Ali Fayed on 01/11/2021.
//

import Foundation
import UIKit

struct AppFontName {
    static let regular = "Tajawal-Regular"
    static let medium = "Tajawal-Medium"
    static let bold = "Tajawal-Bold"
}

extension UIFontDescriptor.AttributeName {
    static let nsctFontUIUsage = UIFontDescriptor.AttributeName(rawValue: "NSCTFontUIUsageAttribute")
}

extension UIFont {
    static var isOverrided: Bool = false
    @objc class func mySystemFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.regular, size: size) ?? UIFont.systemFont(ofSize: size)
    }

    @objc class func myBoldSystemFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.bold, size: size) ?? UIFont.boldSystemFont(ofSize: size)
    }

    @objc class func myMediumSystemFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: AppFontName.medium, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    @objc convenience init(myCoder aDecoder: NSCoder) {
        guard
            let fontDescriptor = aDecoder.decodeObject(forKey: "UIFontDescriptor") as? UIFontDescriptor,
            let fontAttribute = fontDescriptor.fontAttributes[.nsctFontUIUsage] as? String else {
                self.init(myCoder: aDecoder)
                return
        }
        var fontName = ""
        switch fontAttribute {
        case "Tajawal-Medium":
            fontName = AppFontName.medium
        case "Tajawal-Bold":
            fontName = AppFontName.bold
        default:
            fontName = AppFontName.regular
        }
        self.init(name: fontName, size: fontDescriptor.pointSize)!
    }
    class func overrideInitialize() {
        guard self == UIFont.self, !isOverrided else { return }
        isOverrided = true
        if let systemFontMethod = class_getClassMethod(self, #selector(mySystemFont(ofSize:))),
            let mySystemFontMethod = class_getClassMethod(self, #selector(systemFont(ofSize:))) {
            method_exchangeImplementations(systemFontMethod, mySystemFontMethod)
        }
        if let boldSystemFontMethod = class_getClassMethod(self, #selector(myBoldSystemFont(ofSize:))),
            let myBoldSystemFontMethod = class_getClassMethod(self, #selector(myBoldSystemFont(ofSize:))) {
            method_exchangeImplementations(boldSystemFontMethod, myBoldSystemFontMethod)
        }
        if let italicSystemFontMethod = class_getClassMethod(self, #selector(myMediumSystemFont(ofSize:))),
            let myItalicSystemFontMethod = class_getClassMethod(self, #selector(myMediumSystemFont(ofSize:))) {
            method_exchangeImplementations(italicSystemFontMethod, myItalicSystemFontMethod)
        }
        if let initCoderMethod = class_getInstanceMethod(self, #selector(UIFontDescriptor.init(coder:))),
            let myInitCoderMethod = class_getInstanceMethod(self, #selector(UIFont.init(myCoder:))) {
            method_exchangeImplementations(initCoderMethod, myInitCoderMethod)
        }
    }
}
