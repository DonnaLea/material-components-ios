/*
 Copyright 2017-present the Material Components for iOS authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

// swiftlint:disable function_body_length
// swiftlint:disable type_body_length

import XCTest
import MaterialComponents.MaterialPalettes
import MaterialComponents.MaterialTextFields
import MaterialComponents.MaterialTypography

class TextFieldControllerClassPropertiesTests: XCTestCase {
  override func tearDown() {
    super.tearDown()

    MDCTextInputControllerDefault.roundedCornersDefault = [.topLeft, .topRight]
    MDCTextInputControllerDefault.errorColorDefault = nil
    MDCTextInputControllerDefault.inlinePlaceholderColorDefault = nil
    MDCTextInputControllerDefault.mdc_adjustsFontForContentSizeCategoryDefault = true
    MDCTextInputControllerDefault.activeColorDefault = nil
    MDCTextInputControllerDefault.normalColorDefault = nil
    MDCTextInputControllerDefault.disabledColorDefault = nil
    MDCTextInputControllerDefault.underlineViewModeDefault = .whileEditing
    MDCTextInputControllerDefault.leadingUnderlineLabelTextColorDefault = nil
    MDCTextInputControllerDefault.trailingUnderlineLabelTextColorDefault = nil

    MDCTextInputControllerDefault.inlinePlaceholderFontDefault = nil
    MDCTextInputControllerDefault.leadingUnderlineLabelFontDefault = nil
    MDCTextInputControllerDefault.trailingUnderlineLabelFontDefault = nil

    MDCTextInputControllerDefault.floatingPlaceholderNormalColorDefault = nil
    MDCTextInputControllerDefault.floatingPlaceholderScaleDefault = 0.75
    MDCTextInputControllerDefault.isFloatingEnabledDefault = true

    MDCTextInputControllerFullWidth.errorColorDefault = nil
    MDCTextInputControllerFullWidth.inlinePlaceholderColorDefault = nil
    MDCTextInputControllerFullWidth.mdc_adjustsFontForContentSizeCategoryDefault = true
    MDCTextInputControllerFullWidth.activeColorDefault = nil
    MDCTextInputControllerFullWidth.normalColorDefault = nil
    MDCTextInputControllerFullWidth.disabledColorDefault = nil
    MDCTextInputControllerFullWidth.underlineViewModeDefault = .never

    MDCTextInputControllerFullWidth.leadingUnderlineLabelTextColorDefault = nil
    MDCTextInputControllerFullWidth.trailingUnderlineLabelTextColorDefault = nil

    MDCTextInputControllerFullWidth.inlinePlaceholderFontDefault = nil
    MDCTextInputControllerFullWidth.leadingUnderlineLabelFontDefault = nil
    MDCTextInputControllerFullWidth.trailingUnderlineLabelFontDefault = nil
  }

  func testDefault() {

    // Test the values of the class properties.
    XCTAssertEqual(MDCTextInputControllerDefault.errorColorDefault, MDCPalette.red.accent400)
    XCTAssertEqual(MDCTextInputControllerDefault.inlinePlaceholderColorDefault,
                   UIColor(white: 0, alpha: CGFloat(Float(0.54))))
    XCTAssertEqual(MDCTextInputControllerDefault.mdc_adjustsFontForContentSizeCategoryDefault, true)
    XCTAssertEqual(MDCTextInputControllerDefault.activeColorDefault,
                   MDCPalette.blue.accent700)
    XCTAssertEqual(MDCTextInputControllerDefault.normalColorDefault, .lightGray)
    XCTAssertEqual(MDCTextInputControllerDefault.underlineViewModeDefault, .whileEditing)
    XCTAssertEqual(MDCTextInputControllerDefault.leadingUnderlineLabelTextColorDefault,
                   UIColor(white: 0, alpha: CGFloat(Float(0.54))))
    XCTAssertEqual(MDCTextInputControllerDefault.trailingUnderlineLabelTextColorDefault,
                   UIColor(white: 0, alpha: CGFloat(Float(0.54))))
    XCTAssertEqual(MDCTextInputControllerDefault.leadingUnderlineLabelTextColorDefault,
                   MDCTextInputControllerDefault.inlinePlaceholderColorDefault)
    XCTAssertEqual(MDCTextInputControllerDefault.trailingUnderlineLabelTextColorDefault,
                   MDCTextInputControllerDefault.inlinePlaceholderColorDefault)

    XCTAssertEqual(MDCTextInputControllerDefault.inlinePlaceholderFontDefault,
                   UIFont.mdc_preferredFont(forMaterialTextStyle: .body1))
    XCTAssertEqual(MDCTextInputControllerDefault.leadingUnderlineLabelFontDefault,
                   MDCTextInputControllerDefault.trailingUnderlineLabelFontDefault)
    XCTAssertEqual(MDCTextInputControllerDefault.leadingUnderlineLabelFontDefault,
                   UIFont.mdc_preferredFont(forMaterialTextStyle: .caption))

    // Default specific properties
    XCTAssertEqual(MDCTextInputControllerDefault.floatingPlaceholderNormalColorDefault,
                   UIColor(white: 0, alpha: CGFloat(Float(0.54))))
    XCTAssertEqual(Float(MDCTextInputControllerDefault.floatingPlaceholderScaleDefault), 0.75)
    XCTAssertEqual(MDCTextInputControllerDefault.isFloatingEnabledDefault, true)
    XCTAssertEqual(MDCTextInputControllerDefault.roundedCornersDefault, [])

    // Test the use of the class properties.
    let textField = MDCTextField()
    var controller = MDCTextInputControllerDefault(textInput: textField)

    XCTAssertEqual(controller.errorColor, MDCTextInputControllerDefault.errorColorDefault)
    XCTAssertEqual(controller.inlinePlaceholderColor,
                   MDCTextInputControllerDefault.inlinePlaceholderColorDefault)
    XCTAssertEqual(controller.mdc_adjustsFontForContentSizeCategory,
                   MDCTextInputControllerDefault.mdc_adjustsFontForContentSizeCategoryDefault)
    XCTAssertEqual(controller.activeColor,
                   MDCTextInputControllerDefault.activeColorDefault)
    XCTAssertEqual(controller.normalColor,
                   MDCTextInputControllerDefault.normalColorDefault)
    XCTAssertEqual(controller.underlineViewMode,
                   MDCTextInputControllerDefault.underlineViewModeDefault)
    XCTAssertEqual(controller.leadingUnderlineLabelTextColor,
                   MDCTextInputControllerDefault.leadingUnderlineLabelTextColorDefault)
    XCTAssertEqual(controller.trailingUnderlineLabelTextColor,
                   MDCTextInputControllerDefault.trailingUnderlineLabelTextColorDefault)

    XCTAssertEqual(controller.inlinePlaceholderFont,
                   MDCTextInputControllerDefault.inlinePlaceholderFontDefault)
    XCTAssertEqual(controller.leadingUnderlineLabelFont,
                   MDCTextInputControllerDefault.leadingUnderlineLabelFontDefault)
    XCTAssertEqual(controller.trailingUnderlineLabelFont,
                   MDCTextInputControllerDefault.trailingUnderlineLabelFontDefault)

    // Default specific properties
    XCTAssertEqual(controller.floatingPlaceholderNormalColor,
                   MDCTextInputControllerDefault.floatingPlaceholderNormalColorDefault)
    XCTAssertEqual(controller.isFloatingEnabled,
                   MDCTextInputControllerDefault.isFloatingEnabledDefault)
    XCTAssertEqual(controller.roundedCorners, MDCTextInputControllerDefault.roundedCornersDefault)

    // Test the changes to the class properties.
    MDCTextInputControllerDefault.errorColorDefault = .green
    XCTAssertEqual(MDCTextInputControllerDefault.errorColorDefault, .green)

    MDCTextInputControllerDefault.inlinePlaceholderColorDefault = .orange
    XCTAssertEqual(MDCTextInputControllerDefault.inlinePlaceholderColorDefault, .orange)

    MDCTextInputControllerDefault.mdc_adjustsFontForContentSizeCategoryDefault = false
    XCTAssertEqual(MDCTextInputControllerDefault.mdc_adjustsFontForContentSizeCategoryDefault,
                   false)

    MDCTextInputControllerDefault.activeColorDefault = .purple
    XCTAssertEqual(MDCTextInputControllerDefault.activeColorDefault, .purple)

    MDCTextInputControllerDefault.normalColorDefault = .white
    XCTAssertEqual(MDCTextInputControllerDefault.normalColorDefault, .white)

    MDCTextInputControllerDefault.underlineViewModeDefault = .unlessEditing
    XCTAssertEqual(MDCTextInputControllerDefault.underlineViewModeDefault, .unlessEditing)

    MDCTextInputControllerDefault.leadingUnderlineLabelTextColorDefault = .blue
    XCTAssertEqual(MDCTextInputControllerDefault.leadingUnderlineLabelTextColorDefault, .blue)

    MDCTextInputControllerDefault.trailingUnderlineLabelTextColorDefault = .white
    XCTAssertEqual(MDCTextInputControllerDefault.trailingUnderlineLabelTextColorDefault, .white)

    MDCTextInputControllerDefault.inlinePlaceholderFontDefault = UIFont.systemFont(ofSize: 4)
    XCTAssertEqual(MDCTextInputControllerDefault.inlinePlaceholderFontDefault,
                   UIFont.systemFont(ofSize: 4))

    MDCTextInputControllerDefault.inlinePlaceholderFontDefault = UIFont.systemFont(ofSize: 5)
    XCTAssertEqual(MDCTextInputControllerDefault.inlinePlaceholderFontDefault,
                   UIFont.systemFont(ofSize: 5))

    MDCTextInputControllerDefault.inlinePlaceholderFontDefault = UIFont.systemFont(ofSize: 6)
    XCTAssertEqual(MDCTextInputControllerDefault.inlinePlaceholderFontDefault,
                   UIFont.systemFont(ofSize: 6))

    // Default specific properties
    MDCTextInputControllerDefault.floatingPlaceholderNormalColorDefault = .red
    XCTAssertEqual(MDCTextInputControllerDefault.floatingPlaceholderNormalColorDefault, .red)

    MDCTextInputControllerDefault.floatingPlaceholderScaleDefault = 0.6
    XCTAssertEqual(Float(MDCTextInputControllerDefault.floatingPlaceholderScaleDefault), 0.6)

    MDCTextInputControllerDefault.isFloatingEnabledDefault = false
    XCTAssertEqual(MDCTextInputControllerDefault.isFloatingEnabledDefault, false)

    MDCTextInputControllerDefault.roundedCornersDefault = [.bottomRight]
    XCTAssertEqual(MDCTextInputControllerDefault.roundedCornersDefault, [.bottomRight])

    // Test that the changes to the class properties can propogate to an instance.
    controller = MDCTextInputControllerDefault(textInput: textField)

    XCTAssertEqual(controller.errorColor, MDCTextInputControllerDefault.errorColorDefault)
    XCTAssertEqual(controller.inlinePlaceholderColor,
                   MDCTextInputControllerDefault.inlinePlaceholderColorDefault)
    XCTAssertEqual(controller.mdc_adjustsFontForContentSizeCategory,
                   MDCTextInputControllerDefault.mdc_adjustsFontForContentSizeCategoryDefault)
    XCTAssertEqual(controller.activeColor,
                   MDCTextInputControllerDefault.activeColorDefault)
    XCTAssertEqual(controller.normalColor,
                   MDCTextInputControllerDefault.normalColorDefault)
    XCTAssertEqual(controller.underlineViewMode,
                   MDCTextInputControllerDefault.underlineViewModeDefault)
    XCTAssertEqual(controller.leadingUnderlineLabelTextColor,
                   MDCTextInputControllerDefault.leadingUnderlineLabelTextColorDefault)
    XCTAssertEqual(controller.trailingUnderlineLabelTextColor,
                   MDCTextInputControllerDefault.trailingUnderlineLabelTextColorDefault)

    XCTAssertEqual(controller.inlinePlaceholderFont,
                   MDCTextInputControllerDefault.inlinePlaceholderFontDefault)
    XCTAssertEqual(controller.leadingUnderlineLabelFont,
                   MDCTextInputControllerDefault.leadingUnderlineLabelFontDefault)
    XCTAssertEqual(controller.trailingUnderlineLabelFont,
                   MDCTextInputControllerDefault.trailingUnderlineLabelFontDefault)

    // Default specific properties
    XCTAssertEqual(controller.floatingPlaceholderNormalColor,
                   MDCTextInputControllerDefault.floatingPlaceholderNormalColorDefault)
    XCTAssertEqual(controller.isFloatingEnabled,
                   MDCTextInputControllerDefault.isFloatingEnabledDefault)
    XCTAssertEqual(controller.roundedCorners, MDCTextInputControllerDefault.roundedCornersDefault)
  }

  func testFullWidth() {
    // Test the values of the class properties.
    XCTAssertEqual(MDCTextInputControllerFullWidth.disabledColorDefault, .clear)
    XCTAssertEqual(MDCTextInputControllerFullWidth.errorColorDefault, MDCPalette.red.accent400)
    XCTAssertEqual(MDCTextInputControllerFullWidth.inlinePlaceholderColorDefault,
                   UIColor(white: 0, alpha: CGFloat(Float(0.54))))
    XCTAssertEqual(MDCTextInputControllerFullWidth.mdc_adjustsFontForContentSizeCategoryDefault,
                   true)
    XCTAssertEqual(MDCTextInputControllerFullWidth.activeColorDefault, .clear)
    XCTAssertEqual(MDCTextInputControllerFullWidth.normalColorDefault, .clear)
    XCTAssertEqual(MDCTextInputControllerFullWidth.underlineViewModeDefault, .never)
    XCTAssertEqual(MDCTextInputControllerFullWidth.leadingUnderlineLabelTextColorDefault, .clear)
    XCTAssertEqual(MDCTextInputControllerFullWidth.trailingUnderlineLabelTextColorDefault,
                   UIColor(white: 0, alpha: CGFloat(Float(0.54))))

    XCTAssertEqual(MDCTextInputControllerFullWidth.inlinePlaceholderFontDefault,
                   UIFont.mdc_preferredFont(forMaterialTextStyle: .body1))
    XCTAssertEqual(MDCTextInputControllerFullWidth.leadingUnderlineLabelFontDefault,
                   MDCTextInputControllerFullWidth.trailingUnderlineLabelFontDefault)
    XCTAssertEqual(MDCTextInputControllerFullWidth.leadingUnderlineLabelFontDefault,
                   UIFont.mdc_preferredFont(forMaterialTextStyle: .caption))

    // Test the use of the class properties.
    let textField = MDCTextField()
    var controller = MDCTextInputControllerFullWidth(textInput: textField)

    XCTAssertEqual(controller.disabledColor, .clear)
    XCTAssertEqual(controller.errorColor, MDCTextInputControllerFullWidth.errorColorDefault)
    XCTAssertEqual(controller.inlinePlaceholderColor,
                   MDCTextInputControllerFullWidth.inlinePlaceholderColorDefault)
    XCTAssertEqual(controller.mdc_adjustsFontForContentSizeCategory,
                   MDCTextInputControllerFullWidth.mdc_adjustsFontForContentSizeCategoryDefault)
    XCTAssertEqual(controller.activeColor,
                   MDCTextInputControllerFullWidth.activeColorDefault)
    XCTAssertEqual(controller.normalColor,
                   MDCTextInputControllerFullWidth.normalColorDefault)
    XCTAssertEqual(controller.underlineViewMode,
                   MDCTextInputControllerFullWidth.underlineViewModeDefault)
    XCTAssertEqual(controller.leadingUnderlineLabelTextColor,
                   MDCTextInputControllerFullWidth.leadingUnderlineLabelTextColorDefault)
    XCTAssertEqual(controller.trailingUnderlineLabelTextColor,
                   MDCTextInputControllerFullWidth.trailingUnderlineLabelTextColorDefault)

    XCTAssertEqual(controller.inlinePlaceholderFont,
                   MDCTextInputControllerFullWidth.inlinePlaceholderFontDefault)
    XCTAssertEqual(controller.leadingUnderlineLabelFont,
                   nil)
    XCTAssertEqual(controller.trailingUnderlineLabelFont,
                   MDCTextInputControllerFullWidth.trailingUnderlineLabelFontDefault)

    // Test the changes to the class properties.
    MDCTextInputControllerFullWidth.disabledColorDefault = .red
    XCTAssertNotEqual(MDCTextInputControllerFullWidth.disabledColorDefault, .red)

    MDCTextInputControllerFullWidth.errorColorDefault = .green
    XCTAssertEqual(MDCTextInputControllerFullWidth.errorColorDefault, .green)

    MDCTextInputControllerFullWidth.inlinePlaceholderColorDefault = .orange
    XCTAssertEqual(MDCTextInputControllerFullWidth.inlinePlaceholderColorDefault, .orange)

    MDCTextInputControllerFullWidth.mdc_adjustsFontForContentSizeCategoryDefault = false
    XCTAssertEqual(MDCTextInputControllerFullWidth.mdc_adjustsFontForContentSizeCategoryDefault,
                   false)

    MDCTextInputControllerFullWidth.activeColorDefault = .purple
    XCTAssertEqual(MDCTextInputControllerFullWidth.activeColorDefault, .clear)

    MDCTextInputControllerFullWidth.normalColorDefault = .white
    XCTAssertEqual(MDCTextInputControllerFullWidth.normalColorDefault, .clear)

    MDCTextInputControllerFullWidth.underlineViewModeDefault = .unlessEditing
    XCTAssertEqual(MDCTextInputControllerFullWidth.underlineViewModeDefault, .never)

    MDCTextInputControllerFullWidth.leadingUnderlineLabelTextColorDefault = .brown
    XCTAssertEqual(MDCTextInputControllerFullWidth.leadingUnderlineLabelTextColorDefault, .clear)

    MDCTextInputControllerFullWidth.trailingUnderlineLabelTextColorDefault = .cyan
    XCTAssertEqual(MDCTextInputControllerFullWidth.trailingUnderlineLabelTextColorDefault, .cyan)

    MDCTextInputControllerFullWidth.inlinePlaceholderFontDefault = UIFont.systemFont(ofSize: 4)
    XCTAssertEqual(MDCTextInputControllerFullWidth.inlinePlaceholderFontDefault,
                   UIFont.systemFont(ofSize: 4))

    MDCTextInputControllerFullWidth.inlinePlaceholderFontDefault = UIFont.systemFont(ofSize: 5)
    XCTAssertEqual(MDCTextInputControllerFullWidth.inlinePlaceholderFontDefault,
                   UIFont.systemFont(ofSize: 5))

    MDCTextInputControllerFullWidth.inlinePlaceholderFontDefault = UIFont.systemFont(ofSize: 6)
    XCTAssertEqual(MDCTextInputControllerFullWidth.inlinePlaceholderFontDefault,
                   UIFont.systemFont(ofSize: 6))

    // Test the changes to the class properties can propogate to an instance.
    controller = MDCTextInputControllerFullWidth(textInput: textField)

    XCTAssertEqual(controller.disabledColor, .clear)
    XCTAssertEqual(controller.errorColor, MDCTextInputControllerFullWidth.errorColorDefault)
    XCTAssertEqual(controller.inlinePlaceholderColor,
                   MDCTextInputControllerFullWidth.inlinePlaceholderColorDefault)
    XCTAssertEqual(controller.mdc_adjustsFontForContentSizeCategory,
                   MDCTextInputControllerFullWidth.mdc_adjustsFontForContentSizeCategoryDefault)
    XCTAssertEqual(controller.activeColor,
                   MDCTextInputControllerFullWidth.activeColorDefault)
    XCTAssertEqual(controller.normalColor,
                   MDCTextInputControllerFullWidth.normalColorDefault)
    XCTAssertEqual(controller.underlineViewMode,
                   MDCTextInputControllerFullWidth.underlineViewModeDefault)
    XCTAssertEqual(controller.leadingUnderlineLabelTextColor,
                   MDCTextInputControllerFullWidth.leadingUnderlineLabelTextColorDefault)
    XCTAssertEqual(controller.trailingUnderlineLabelTextColor,
                   MDCTextInputControllerFullWidth.trailingUnderlineLabelTextColorDefault)

    XCTAssertEqual(controller.inlinePlaceholderFont,
                   MDCTextInputControllerFullWidth.inlinePlaceholderFontDefault)
    XCTAssertEqual(controller.leadingUnderlineLabelFont,
                   nil)
    XCTAssertEqual(controller.trailingUnderlineLabelFont,
                   MDCTextInputControllerFullWidth.trailingUnderlineLabelFontDefault)
  }
}
