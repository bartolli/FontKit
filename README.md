# FontKit for SwiftUI and UIKit

FontKit is an advanced Swift utility designed to bridge the gap between SwiftUI and UIKit font management in iOS development. This tool provides a unified approach to handling font styling, including dynamic type and font designs like rounded, serif, and monospaced, focusing on the SF Pro system font. It ensures accessibility, consistency, and ease of use in typography across your entire app.

## Features

- **Unified Font Management**: Manage fonts in SwiftUI and UIKit with a single, versatile utility class. It is specifically optimized for the SF Pro system font.
- **Dynamic Type Support**: Fully supports Dynamic Type, allowing font sizes to adjust based on the user's accessibility settings automatically.
- **Multiple Font Designs**: Offers the ability to use various font designs, including `.rounded`, `.serif`, and `.monospaced`, enhancing the visual appeal of your app, especially with the SF Pro font family.
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
- `TextStyle`: A custom enum mapping to SwiftUI's and UIKit's text styles.
- `uiFontWeight(from:)` and `uiFontDesign(from:)`: Helper methods for mapping SwiftUI types to their UIKit equivalents.

## Requirements

- iOS 13.0 or later for the full range of design features.
- Swift 5.1 or later.
- Xcode 11 or later.

FontKit is designed to be easily integrated into any iOS project. It's customizable to fit specific requirements and adaptable for various UI designs, with particular support for the SF Pro system font.

Absolutely! Providing additional usage examples for various arguments and font settings in the `FontKit` class can be very helpful. These examples will showcase how to use different text styles, weights, and designs, giving a clearer picture of the class's capabilities. Below, I'll include examples for both SwiftUI and UIKit:

### Extended Usage Examples for FontKit

#### SwiftUI Examples:

1. **Large Title with Heavy Weight in Rounded Style**:
    ```swift
    Text("Large Title")
        .font(FontKit.font(forTextStyle: .largeTitle, weight: .heavy, design: .rounded))
    ```

2. **Body Text in Monospaced Design**:
    ```swift
    Text("Body Text")
        .font(FontKit.font(forTextStyle: .body, weight: .regular, design: .monospaced))
    ```

3. **Caption Text in Serif Design**:
    ```swift
    Text("Caption Text")
        .font(FontKit.font(forTextStyle: .caption, weight: .light, design: .serif))
    ```

#### UIKit Examples:

1. **Title Label with Semibold Weight in Rounded Style**:
    ```swift
    let titleLabel = UILabel()
    titleLabel.font = FontKit.font(forTextStyle: .title1, weight: .semibold, design: .rounded)
    titleLabel.text = "Title Label"
    ```

2. **Subheadline Label in Monospaced Design**:
    ```swift
    let subheadlineLabel = UILabel()
    subheadlineLabel.font = FontKit.font(forTextStyle: .subheadline, weight: .medium, design: .monospaced)
    subheadlineLabel.text = "Subheadline Label"
    ```

3. **Footnote Label in Default System Design**:
    ```swift
    let footnoteLabel = UILabel()
    footnoteLabel.font = FontKit.font(forTextStyle: .footnote, weight: .regular)
    footnoteLabel.text = "Footnote Label"
    ```
Certainly! Providing a helper list of all available font weights, text styles, and designs can be a valuable reference for developers using the `FontKit` class. This list will cover the options available in both SwiftUI and UIKit, ensuring that you can easily reference and choose the appropriate settings for your UI components.

### Font Weights

Both SwiftUI and UIKit use the same set of font weights:

1. **UltraLight**: `Font.Weight.ultraLight` / `UIFont.Weight.ultraLight`
2. **Thin**: `Font.Weight.thin` / `UIFont.Weight.thin`
3. **Light**: `Font.Weight.light` / `UIFont.Weight.light`
4. **Regular**: `Font.Weight.regular` / `UIFont.Weight.regular`
5. **Medium**: `Font.Weight.medium` / `UIFont.Weight.medium`
6. **Semibold**: `Font.Weight.semibold` / `UIFont.Weight.semibold`
7. **Bold**: `Font.Weight.bold` / `UIFont.Weight.bold`
8. **Heavy**: `Font.Weight.heavy` / `UIFont.Weight.heavy`
9. **Black**: `Font.Weight.black` / `UIFont.Weight.black`

### Text Styles

#### Supported Text Styles:

1. **Large Title**: `.largeTitle`
2. **Title**: `.title`
3. **Title2**: `.title2`
4. **Title3**: `.title3`
5. **Headline**: `.headline`
6. **Subheadline**: `.subheadline`
7. **Body**: `.body`
8. **Callout**: `.callout`
9. **Footnote**: `.footnote`
10. **Caption**: `.caption`
11. **Caption2**: `.caption2`

### Font Designs

Designs applicable for iOS 13.0 and later:

1. **Default**: `.default`
2. **Rounded**: `.rounded`
3. **Serif**: `.serif`
4. **Monospaced**: `.monospaced`

### Notes

- The above font weights and text styles are directly applicable when using the `FontKit` class.
- This ensures you have quick access to the various font customizations available for both SwiftUI and UIKit.
