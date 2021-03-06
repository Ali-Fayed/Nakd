//
//  HapticsManger.swift
//  Nakd
//
//  Created by Ali Fayed on 09/11/2021.
//

import UIKit

final class HapticsManger {
    static let shared = HapticsManger()
    private init () {
    }
    
    public func selectionVibrate () {
        DispatchQueue.main.async {
            let selectionHapticFeedbackGenerator = UISelectionFeedbackGenerator()
            selectionHapticFeedbackGenerator.prepare()
            selectionHapticFeedbackGenerator.selectionChanged()
        }
    }
    
    public func selectionVibrate (for type: UIImpactFeedbackGenerator.FeedbackStyle) {
        DispatchQueue.main.async {
            let notifcationFeedbackGenrator = UIImpactFeedbackGenerator(style: .medium)
            notifcationFeedbackGenrator.impactOccurred()
            notifcationFeedbackGenrator.prepare()
        }
    }
}
