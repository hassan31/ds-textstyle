//
//  UIFont+DynamicType.swift
//  DSTextStyle
//
//  Created by Muhammad Hassan on 2025-04-17.
//

import UIKit
import DSColors

public extension UIFont {
    class func preferredFont(ofSize fontSize: CGFloat,
                             maxFontSize: CGFloat? = nil,
                             weight: UIFont.Weight = .regular) -> UIFont {
        let font: UIFont = .systemFont(ofSize: fontSize, weight: weight)
        if ThemeProvider.isDynamicTypeEnabled {
            if let maxFontSize {
                return UIFontMetrics.default.scaledFont(for: font, maximumPointSize: maxFontSize)
            } else {
                return UIFontMetrics.default.scaledFont(for: font)
            }
        } else {
            return font
        }
    }
}
