//
//  TextViewModifier.swift
//  DSTextStyle
//
//  Created by Muhammad Hassan on 2025-04-17.
//

import SwiftUI
import DSColors
import Foundation

struct TextStyleModifier: ViewModifier {
    let color: Color
    let font: Font
    let lineLimit: Int?
    let minimumScaleFactor: CGFloat?
    
    init(color: Color = ThemeColors.text.primary.color,
         font: Font,
         lineLimit: Int? = nil,
         minimumScaleFactor: CGFloat? = nil) {
        self.color = color
        self.font = font
        self.lineLimit = lineLimit
        self.minimumScaleFactor = minimumScaleFactor
    }
    
    func body(content: Content) -> some View {
        if let minimumScaleFactor {
            content
                .foregroundStyle(color)
                .font(font)
                .lineLimit(lineLimit)
                .minimumScaleFactor(minimumScaleFactor)
        } else {
            content
                .foregroundStyle(color)
                .font(font)
                .lineLimit(lineLimit)
        }
    }
}

public extension View {
    func textStyle(_ style: TextStyle) -> some View {
        modifier(
            TextStyleModifier(
                color: style.color(),
                font: style.font(),
                lineLimit: style.lineLimit,
                minimumScaleFactor: style.minimumScaleFactor
            )
        )
    }
}

public extension View {
    func largeTitle(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.largeTitle().font()))
    }
    
    func largeTitleBold(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.largeTitleBold().font()))
    }
    
    func title1(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.title1().font()))
    }
    
    func title2(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.title2().font()))
    }
    
    func title3(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.title3().font()))
    }
    
    func headline(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.headline().font()))
    }
    
    func body(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.body().font()))
    }
    
    func callout(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.callout().font()))
    }
    
    func subheadline(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.subheadline().font()))
    }
    
    func footnote(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.footnote().font()))
    }
    
    func caption1(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.caption1().font()))
    }
    
    func caption2(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.caption2().font()))
    }
    
    func bodyBold(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.bodyBold().font()))
    }
    
    func bodyLinkBold(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.bodyLinkBold().font()))
    }
    
    func calloutBold(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.calloutBold().font()))
    }
    
    func subheadlineBold(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.subheadlineBold().font()))
    }
    
    func subheadlineLinkBold(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.subheadlineLinkBold().font()))
    }
    
    func footnoteBold(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.footnoteBold().font()))
    }
    
    func caption1Bold(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.caption1Bold().font()))
    }
    
    func caption2Bold(color: Color = ThemeColors.text.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.caption2Bold().font()))
    }
    
    // Text components
    func regularBoldLink(color: Color = ThemeColors.link.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.regularBoldLink().font()))
    }
    
    func mediumBoldLink(color: Color = ThemeColors.link.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.mediumBoldLink().font()))
    }
    
    func smallBoldLink(color: Color = ThemeColors.link.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.smallBoldLink().font()))
    }
    
    func superscriptTitle(color: Color = ThemeColors.link.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.superscriptTitle().font()))
    }
    
    func superscriptTitleLink(color: Color = ThemeColors.link.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.superscriptTitleLink().font()))
    }
    
    func superscripBody(color: Color = ThemeColors.link.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.superscripBody().font()))
    }
    
    func superscriptBodyLink(color: Color = ThemeColors.link.primary.color) -> some View {
        modifier(TextStyleModifier(color: color, font: TextStyle.superscriptBodyLink().font()))
    }
}
