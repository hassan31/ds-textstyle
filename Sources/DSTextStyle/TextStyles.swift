//
//  TextStyles.swift
//  DSTextStyle
//
//  Created by Muhammad Hassan on 2025-04-17.
//

import SwiftUI
import DSColors
import Foundation

public enum TextStyle: Hashable, Sendable {
    // Typography
    case largeTitle(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case largeTitleBold(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    
    case title1(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case title2(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case title3(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    
    case headline(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case body(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case callout(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case subheadline(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case footnote(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    
    case caption1(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case caption2(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    
    case bodyBold(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case bodyLinkBold(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    
    case calloutBold(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case subheadlineBold(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case subheadlineLinkBold(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    
    case footnoteBold(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case caption1Bold(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case caption2Bold(color: Color = .dsTextPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    
    // Text components
    case regularBoldLink(color: Color = .dsLinkPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case mediumBoldLink(color: Color = .dsLinkPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case smallBoldLink(color: Color = .dsLinkPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case superscriptTitle(color: Color = .dsLinkPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case superscriptTitleLink(color: Color = .dsLinkPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case superscripBody(color: Color = .dsLinkPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
    case superscriptBodyLink(color: Color = .dsLinkPrimary, lineLimit: Int? = nil, minimumScaleFactor: CGFloat? = nil)
}

// MARK: - Color Access
extension TextStyle {
    public func color() -> Color {
        switch self {
        case .largeTitle(let color, _, _),
                .largeTitleBold(let color, _, _),
                .title1(let color, _, _),
                .title2(let color, _, _),
                .title3(let color, _, _),
                .headline(let color, _, _),
                .body(let color, _, _),
                .callout(let color, _, _),
                .subheadline(let color, _, _),
                .footnote(let color, _, _),
                .caption1(let color, _, _),
                .caption2(let color, _, _),
                .bodyBold(let color, _, _),
                .bodyLinkBold(let color, _, _),
                .calloutBold(let color, _, _),
                .subheadlineBold(let color, _, _),
                .subheadlineLinkBold(let color, _, _),
                .footnoteBold(let color, _, _),
                .caption1Bold(let color, _, _),
                .caption2Bold(let color, _, _),
                .regularBoldLink(let color, _, _),
                .mediumBoldLink(let color, _, _),
                .smallBoldLink(let color, _, _),
                .superscriptTitle(let color, _, _),
                .superscriptTitleLink(let color, _, _),
                .superscripBody(let color, _, _),
                .superscriptBodyLink(let color, _, _):
            return color
        }
    }
}

// MARK: - Line Limit Access
extension TextStyle {
    public var lineLimit: Int? {
        switch self {
        case .largeTitle(_, let limit, _),
                .largeTitleBold(_, let limit, _),
                .title1(_, let limit, _),
                .title2(_, let limit, _),
                .title3(_, let limit, _),
                .headline(_, let limit, _),
                .body(_, let limit, _),
                .callout(_, let limit, _),
                .subheadline(_, let limit, _),
                .footnote(_, let limit, _),
                .caption1(_, let limit, _),
                .caption2(_, let limit, _),
                .bodyBold(_, let limit, _),
                .bodyLinkBold(_, let limit, _),
                .calloutBold(_, let limit, _),
                .subheadlineBold(_, let limit, _),
                .subheadlineLinkBold(_, let limit, _),
                .footnoteBold(_, let limit, _),
                .caption1Bold(_, let limit, _),
                .caption2Bold(_, let limit, _),
                .regularBoldLink(_, let limit, _),
                .mediumBoldLink(_, let limit, _),
                .smallBoldLink(_, let limit, _),
                .superscriptTitle(_, let limit, _),
                .superscriptTitleLink(_, let limit, _),
                .superscripBody(_, let limit, _),
                .superscriptBodyLink(_, let limit, _):
            return limit
        }
    }
}

// MARK: - Minimum Scale Factor Access
extension TextStyle {
    public var minimumScaleFactor: CGFloat? {
        switch self {
        case .largeTitle(_, _, let factor),
                .largeTitleBold(_, _, let factor),
                .title1(_, _, let factor),
                .title2(_, _, let factor),
                .title3(_, _, let factor),
                .headline(_, _, let factor),
                .body(_, _, let factor),
                .callout(_, _, let factor),
                .subheadline(_, _, let factor),
                .footnote(_, _, let factor),
                .caption1(_, _, let factor),
                .caption2(_, _, let factor),
                .bodyBold(_, _, let factor),
                .bodyLinkBold(_, _, let factor),
                .calloutBold(_, _, let factor),
                .subheadlineBold(_, _, let factor),
                .subheadlineLinkBold(_, _, let factor),
                .footnoteBold(_, _, let factor),
                .caption1Bold(_, _, let factor),
                .caption2Bold(_, _, let factor),
                .regularBoldLink(_, _, let factor),
                .mediumBoldLink(_, _, let factor),
                .smallBoldLink(_, _, let factor),
                .superscriptTitle(_, _, let factor),
                .superscriptTitleLink(_, _, let factor),
                .superscripBody(_, _, let factor),
                .superscriptBodyLink(_, _, let factor):
            return factor
        }
    }
}

// MARK: - Font Definitions
extension TextStyle {
    @MainActor
    public func font() -> Font {
        let isDynamicTypeEnabled = FontProvider.isDynamicTypeEnabled
        
        switch self {
        case .largeTitle:
            return Font.system(size: 34)
        case .largeTitleBold:
            return Font.system(size: 34).weight(.bold)
        case .title1:
            return isDynamicTypeEnabled ?
            Font.system(.title).weight(.bold) :
            Font.system(size: 28).weight(.bold)
        case .title2:
            return isDynamicTypeEnabled ?
            Font.system(.title2).weight(.bold) :
            Font.system(size: 22).weight(.bold)
        case .title3:
            return isDynamicTypeEnabled ?
            Font.system(.title3).weight(.semibold) :
            Font.system(size: 20).weight(.semibold)
        case .headline:
            return isDynamicTypeEnabled ?
            Font.system(.headline).weight(.semibold) :
            Font.system(size: 17).weight(.semibold)
        case .body:
            return isDynamicTypeEnabled ?
            Font.system(.body) :
            Font.system(size: 17)
        case .callout:
            return isDynamicTypeEnabled ?
            Font.system(.callout).weight(.semibold) :
            Font.system(size: 16).weight(.semibold)
        case .subheadline:
            return isDynamicTypeEnabled ?
            Font.system(.subheadline) :
            Font.system(size: 15)
        case .footnote:
            return isDynamicTypeEnabled ?
            Font.system(.footnote) :
            Font.system(size: 13)
        case .caption1:
            return isDynamicTypeEnabled ?
            Font.system(.caption) :
            Font.system(size: 12)
        case .caption2:
            return isDynamicTypeEnabled ?
            Font.system(.caption2) :
            Font.system(size: 11)
        case .bodyBold:
            return isDynamicTypeEnabled ?
            Font.system(.body).weight(.semibold) :
            Font.system(size: 17).weight(.semibold)
        case .bodyLinkBold:
            return isDynamicTypeEnabled ?
            Font.system(.body).weight(.bold) :
            Font.system(size: 17).weight(.bold)
        case .calloutBold:
            return isDynamicTypeEnabled ?
            Font.system(.callout).weight(.semibold) :
            Font.system(size: 16).weight(.semibold)
        case .subheadlineBold:
            return isDynamicTypeEnabled ?
            Font.system(.subheadline).weight(.semibold) :
            Font.system(size: 15).weight(.semibold)
        case .subheadlineLinkBold:
            return isDynamicTypeEnabled ?
            Font.system(.subheadline).weight(.bold) :
            Font.system(size: 15).weight(.bold)
        case .footnoteBold:
            return isDynamicTypeEnabled ?
            Font.system(.caption).weight(.semibold) :
            Font.system(size: 13).weight(.semibold)
        case .caption1Bold:
            return isDynamicTypeEnabled ?
            Font.system(.caption).weight(.semibold) :
            Font.system(size: 12).weight(.semibold)
        case .caption2Bold:
            return isDynamicTypeEnabled ?
            Font.system(.caption2).weight(.semibold) :
            Font.system(size: 11).weight(.semibold)
        case .regularBoldLink:
            return isDynamicTypeEnabled ?
            Font.system(.body).weight(.bold) :
            Font.system(size: 17).weight(.bold)
        case .mediumBoldLink:
            return isDynamicTypeEnabled ?
            Font.system(.subheadline).weight(.bold) :
            Font.system(size: 15).weight(.bold)
        case .smallBoldLink:
            return isDynamicTypeEnabled ?
            Font.system(.footnote).weight(.bold) :
            Font.system(size: 13).weight(.bold)
        case .superscriptTitle:
            return isDynamicTypeEnabled ?
            Font.system(.footnote) :
            Font.system(size: 13)
        case .superscriptTitleLink:
            return isDynamicTypeEnabled ?
            Font.system(.footnote).weight(.bold) :
            Font.system(size: 13).weight(.bold)
        case .superscripBody:
            return isDynamicTypeEnabled ?
            Font.system(.caption2) :
            Font.system(size: 11)
        case .superscriptBodyLink:
            return isDynamicTypeEnabled ?
            Font.system(.caption2).weight(.bold) :
            Font.system(size: 11).weight(.bold)
        }
    }
}

// MARK: - UIFont Definitions
extension TextStyle {
    @MainActor
    public func uiFont() -> UIFont {
        switch self {
        case .largeTitle:
            return UIFont.preferredFont(ofSize: 34)
        case .largeTitleBold:
            return UIFont.preferredFont(ofSize: 34, weight: .bold)
        case .title1:
            return UIFont.preferredFont(ofSize: 28, weight: .bold)
        case .title2:
            return UIFont.preferredFont(ofSize: 22, weight: .bold)
        case .title3:
            return UIFont.preferredFont(ofSize: 20, weight: .bold)
        case .headline:
            return UIFont.preferredFont(ofSize: 17, weight: .semibold)
        case .body:
            return UIFont.preferredFont(forTextStyle: .body)
        case .callout:
            return UIFont.preferredFont(forTextStyle: .callout)
        case .subheadline:
            return UIFont.preferredFont(forTextStyle: .subheadline)
        case .footnote:
            return UIFont.preferredFont(forTextStyle: .footnote)
        case .caption1:
            return UIFont.preferredFont(forTextStyle: .caption1)
        case .caption2:
            return UIFont.preferredFont(forTextStyle: .caption2)
        case .bodyBold:
            return UIFont.preferredFont(ofSize: 17, weight: .semibold)
        case .bodyLinkBold:
            return UIFont.preferredFont(ofSize: 17, weight: .bold)
        case .calloutBold:
            return UIFont.preferredFont(ofSize: 16, weight: .semibold)
        case .subheadlineBold:
            return UIFont.preferredFont(ofSize: 15, weight: .semibold)
        case .subheadlineLinkBold:
            return UIFont.preferredFont(ofSize: 15, weight: .bold)
        case .footnoteBold:
            return UIFont.preferredFont(ofSize: 13, weight: .semibold)
        case .caption1Bold:
            return UIFont.preferredFont(ofSize: 12, weight: .semibold)
        case .caption2Bold:
            return UIFont.preferredFont(ofSize: 11, weight: .semibold)
        case .regularBoldLink:
            return UIFont.preferredFont(ofSize: 17, weight: .bold)
        case .mediumBoldLink:
            return UIFont.preferredFont(ofSize: 15, weight: .bold)
        case .smallBoldLink:
            return UIFont.preferredFont(ofSize: 13, weight: .bold)
        case .superscriptTitle:
            return UIFont.preferredFont(forTextStyle: .footnote)
        case .superscriptTitleLink:
            return UIFont.preferredFont(ofSize: 13, weight: .bold)
        case .superscripBody:
            return UIFont.preferredFont(forTextStyle: .caption2)
        case .superscriptBodyLink:
            return UIFont.preferredFont(ofSize: 11, weight: .bold)
        }
    }
}

public enum FontProvider {
    @MainActor
    static var isDynamicTypeEnabled: Bool {
        ThemeProvider.isDynamicTypeEnabled
    }
}

extension Color {
    public static let dsTextPrimary = ThemeColors.text.primary.color
    public static let dsLinkPrimary = ThemeColors.link.primary.color
}
