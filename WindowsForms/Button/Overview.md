---
layout: post
title: About Windows Forms Button control | Syncfusion®
description: Learn here about introduction of Syncfusion® Windows Forms Button (SfButton) control and more details.
platform: windowsforms
control: SfButton
documentation: ug
---

# Windows Forms Button (SfButton) Overview

The SfButton is an advanced button control capable of displaying text and image with various customizations. It provide options to customize the text, image, border, and appearance in all states of the button.

## Key Features

Following are the key features of the SfButton:

* Appearance: Supports customizing the appearance in all button states (hover, pressed, focused, and disabled states).

* Image: Supports customizing the image in all button states.

* Background image: Supports displaying the image in the background of the button.

* Rich text:  Supports displaying the rich text inside the SfButton.

* Wrap text and trimming: Supports wrapping and trimming the button text.

* AutoSize: Supports adjusting the size of the button based on the content.

## Choose between different button controls

Syncfusion<sup>®</sup> WinForms suite comes up with the following different buttons:

* [SfButton](https://www.syncfusion.com/winforms-ui-controls/button)
* [ButtonAdv](https://help.syncfusion.com/wpf/button/overview)
* [ButtonEdit](https://www.syncfusion.com/winforms-ui-controls/buttonedit)
* [ToggleButton](https://www.syncfusion.com/winforms-ui-controls/toggle-button)
* [SplitButton](https://www.syncfusion.com/winforms-ui-controls/split-button)

### SfButton

[SfButton](https://help.syncfusion.com/windowsforms/button/overview) is an advanced button control capable of displaying text and image with various customizations. This provides options to customize the text, image, border, and appearance in all states of the button.

### ButtonAdv

[ButtonAdv](https://help.syncfusion.com/windowsforms/classic/button/overview) is an advanced button control capable of displaying images with different alignments and various border styles. This can be configured in any predefined [ButtonTypes](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.ButtonAdv.html#Syncfusion_Windows_Forms_ButtonAdv_ButtonType) such as Calculator, Up, Down, and so on. This can also afford XP or Office style.

### ButtonEdit

The [Button Edit](https://help.syncfusion.com/windowsforms/buttonedit/overview) control embeds a text box control with collection of button controls that can be customized to create many commonly used interfaces such as file or folder browser or drop-down text control. You can also implement file picker and folder browser.

### ToggleButton

The [ToggleButton](https://help.syncfusion.com/windowsforms/toggle-button/overview) control allows you to toggle between two states (active and inactive) opposite to each other in terms of behavior.

### SplitButton

The [SplitButton](https://help.syncfusion.com/windowsforms/split-button/overview) control allows you to create drop-down button-like interface that is a combination of regular button and drop-down list. You can use this control when you need a single control with multiple options. For example, you can use this control to create a button to set font and list available in the font family of drop-down list.

### SfButton vs ButtonAdv

Both SfButton and ButtonAdv controls are used for same purposes. But, the SfButton control offers rich set of features over ButtonAdv. To customize the appearance of all button states, use the SfButton control. To use the predefined button types such as Calculator, Up, Down, and so on, use the ButtonAdv control. Comparatively, the performance of SfButton control is better than ButtonAdv control.

You can see some of the specific API differences between ButtonAdv and SfButton as follows.

<table>
<tr>
<td>
{{'**SfButton**'| markdownify }}
</td>
<td>
{{'**ButtonAdv**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Text
</td>
<td>
Text
</td>
<td>
Displays the text in the button.
</td>
</tr>
<tr>
<td>
Image
</td>
<td>
Image
</td>
<td>
Displays the image in the button.
</td>
</tr>
<tr>
<td>
BackgroundImage
</td>
<td>
BackgroundImage
</td>
<td>
Sets the background image to the button.
</td>
</tr>
<tr>
<td>
TextImageRelation
</td>
<td>
TextImageRelation
</td>
<td>
Sets the position of image and text.
</td>
</tr>
<tr>
<td>
TextAlign
</td>
<td>
TextAlign
</td>
<td>
Sets the alignment of text inside the button.
</td>
</tr>
<tr>
<td>
ImageAlign
</td>
<td>
ImageAlign
</td>
<td>
Sets the alignment of image into the button.
</td>
</tr>
<tr>
<td>
FocusRectangleVisible
</td>
<td>
KeepFocusRectangle
</td>
<td>
Draws a thin dotted rectangular frame inside the button when it got focus.
</td>
</tr>
<tr>
<td>
Border
</td>
<td>
BorderStyleAdv
</td>
<td>
Draws the border around the button.
</td>
</tr>
<tr>
<td>
ThemeName
</td>
<td>
Appearance
</td>
<td>
Applies visual styles for button.
</td>
</tr>
</table>

The following list of features are in SfButton over ButtonAdv.

<table>
<tr>
<td>
{{'**Feature**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}

</td>
</tr>
<tr>
<td>
Appearance customization
</td>
<td>
Changes the {{'[appearance](https://help.syncfusion.com/windowsforms/button/appearance#customizing-appearance-based-on-button-state)'| markdownify }} such as back color, fore color, border, and image in all button states (hover, pressed, focus and disable states).

</td>
</tr>
<tr>
<td>
Animation image
</td>
<td>
Loads the {{'[GIF](https://help.syncfusion.com/windowsforms/button/appearance#animating-the-image)'| markdownify }} image.

</td>
</tr>
<tr>
<td>
Rich text
</td>
<td>
Displays the rich text inside SfButton by enabling the {{'[AllowRichText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfButton.html#Syncfusion_WinForms_Controls_SfButton_AllowRichText)'| markdownify }} property. This can be added to the {{'[Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfButton.html#Syncfusion_WinForms_Controls_SfButton_Text)'| markdownify }} property.

</td>
</tr>
<tr>
<td>
Spacing between image and text

</td>
<td>
Adjusts space between image and text. Refer to {{'[here](https://help.syncfusion.com/windowsforms/button/button-types#spacing-between-text-and-image)'| markdownify }} for details. 
</td>
</tr>
<tr>
<td>
Wrap Text
</td>
<td>
Wraps the text by using the {{'[WrapText](https://help.syncfusion.com/windowsforms/button/button-content#wrapping-the-text)'| markdownify }} property in SfButton.

</td>
</tr>
<tr>
<td>
Text Trimming
</td>
<td>
Trims the text by using the {{'[AllowEllipse](https://help.syncfusion.com/windowsforms/button/button-content#trimming-and-showing-ellipsis-character)'| markdownify }} property.

</td>
</tr>
</table>
