# FontKit for SwiftUI and UIKit

FontKit is an advanced Swift utility designed to bridge the gap between SwiftUI and UIKit font management in iOS development. This tool provides a unified approach to handle font styling, including dynamic type and various font designs like rounded, serif, and monospaced. It ensures accessibility, consistency, and ease of use in typography across your entire app.

## Features

- **Unified Font Management**: Easily manage fonts in SwiftUI and UIKit with a single, versatile utility class.
- **Dynamic Type Support**: Fully supports Dynamic Type, allowing font sizes to adjust based on the user's accessibility settings automatically.
- **Multiple Font Designs**: Offers the ability to use various font designs, including `.rounded`, `.serif`, and `.monospaced`, enhancing the visual appeal of your app.
- **Customizable Font Weights**: Provides flexibility in choosing font weights, from `.ultraLight` to `.black`, to match different design needs.
- **Ease of Use**: Simplifies the font selection and usage process in both SwiftUI and UIKit environments.

## Usage

### SwiftUI Example

```swift
Text("Hello, SwiftUI!")
    .font(FontKit.font(forTextStyle: .body, weight: .semibold, design: .rounded))
```

### UIKit Example

```swift
let label = UILabel()
label.font = FontKit.font(forTextStyle: .body, weight: .semibold, design: .rounded)
```

## Implementation Details

FontKit includes a set of methods and mappings that facilitate the use of fonts in both SwiftUI and UIKit. It abstracts away the complexities of handling different font types, text styles, and designs, providing a straightforward and consistent API.

- `font(forTextStyle:weight:design:)`: The primary method to retrieve fonts, accepting parameters for text style, weight, and design.
- `TextStyle`: A custom enum mapping to both SwiftUI's and UIKit's text styles.
- `uiFontWeight(from:)` and `uiFontDesign(from:)`: Helper methods for mapping SwiftUI types to their UIKit equivalents.

## Requirements

- iOS 13.0 or later for the full range of design features.
- Swift 5.1 or later.
- Xcode 11 or later.

FontKit is designed to be easily integrated into any iOS project. It's customizable to fit specific requirements and adaptable for various UI designs.
