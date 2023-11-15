import SwiftUI
import UIKit

struct FontKit {
    enum TextStyle {
        case largeTitle, title, title2, title3
        case headline, subheadline
        case body, callout, footnote
        case caption, caption2
    }

    static func font<T: FontRepresentable>(forTextStyle textStyle: TextStyle, weight: Font.Weight, design: Font.Design = .default) -> T {
        if T.self == Font.self {
            let font = Font.system(mapToSwiftUITextStyle(textStyle), design: design).weight(weight)
            return font as! T
        } else if T.self == UIFont.self {
            let uiFontTextStyle = mapToUIFontTextStyle(textStyle)
            let font = UIFont.preferredFont(forTextStyle: uiFontTextStyle)
            let uiFontWeight = self.uiFontWeight(from: weight)
            if #available(iOS 13.0, *), let descriptor = font.fontDescriptor.withDesign(uiFontDesign(from: design)) {
                let newDescriptor = descriptor.addingAttributes([.traits: [UIFontDescriptor.TraitKey.weight: uiFontWeight]])
                return UIFont(descriptor: newDescriptor, size: 0) as! T
            } else {
                return font as! T
            }
        } else {
            fatalError("Unsupported type")
        }
    }

    private static func mapToSwiftUITextStyle(_ textStyle: TextStyle) -> Font.TextStyle {
        switch textStyle {
        case .largeTitle: return .largeTitle
        case .title: return .title
        case .title2: return .title2
        case .title3: return .title3
        case .headline: return .headline
        case .subheadline: return .subheadline
        case .body: return .body
        case .callout: return .callout
        case .footnote: return .footnote
        case .caption: return .caption
        case .caption2: return .caption2
        }
    }

    private static func mapToUIFontTextStyle(_ textStyle: TextStyle) -> UIFont.TextStyle {
        switch textStyle {
        case .largeTitle: return .largeTitle
        case .title: return .title1
        case .title2: return .title2
        case .title3: return .title3
        case .headline: return .headline
        case .subheadline: return .subheadline
        case .body: return .body
        case .callout: return .callout
        case .footnote: return .footnote
        case .caption: return .caption1
        case .caption2: return .caption2
        }
    }

    private static func uiFontWeight(from weight: Font.Weight) -> UIFont.Weight {
        switch weight {
        case .ultraLight: return .ultraLight
        case .thin: return .thin
        case .light: return .light
        case .regular: return .regular
        case .medium: return .medium
        case .semibold: return .semibold
        case .bold: return .bold
        case .heavy: return .heavy
        case .black: return .black
        default: return .regular
        }
    }

    private static func uiFontDesign(from design: Font.Design) -> UIFontDescriptor.SystemDesign {
        switch design {
        case .rounded: return .rounded
        case .serif: return .serif
        case .monospaced: return .monospaced
        default: return .default
        }
    }
}
