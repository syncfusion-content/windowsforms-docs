---
layout: post
title: Overview | Button | Syncfusion
description: This section explains about the advanced button control for windows forms and it's important key features
platform: WindowsForms
control: SfButton
documentation: ug
---

# Overview

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

Syncfusion WF suite comes up with following different button namely,

1. [SfButton](https://www.syncfusion.com/products/windows-forms/button)
2. [ButtonAdv](https://help.syncfusion.com/wpf/buttonadv/overview)
3. [ButtonEdit](https://www.syncfusion.com/products/windows-forms/buttonedit)
4. [ToggleButton](https://www.syncfusion.com/products/windows-forms/toggle-button)
5. [SplitButton](https://www.syncfusion.com/products/windows-forms/split-button)

### SfButton

The [SfButton](https://help.syncfusion.com/windowsforms/sfbutton/overview) is an advanced button control capable of displaying text and image with various customizations. It provides options to customize the text, image, border, and appearance in all states of the button.

### ButtonAdv

The [ButtonAdv](https://help.syncfusion.com/windowsforms/buttonadv/overview) is an advanced button control capable of displaying images with different alignments and various border styles. It can be configured into any of the predefined [ButtonTypes](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.ButtonAdv~ButtonType.html) such as Calculator, Up, Down, and so on. Also, it can afford the XP or Office styles.

### ButtonEdit

The [Button Edit](https://help.syncfusion.com/windowsforms/buttonedit/overview) control embeds a text box control with a collection of button controls that can be customized to create many commonly used interfaces such as a file/folder browser or a drop-down text control. You can implement a file picker and folder browser using the ButtonEdit control.

### ToggleButton

The [ToggleButton](https://help.syncfusion.com/windowsforms/togglebutton/overview) control allows you to toggle between two states (Active and Inactive) that are opposite to each other in terms of behavior.

### SplitButton

The [SplitButton](https://help.syncfusion.com/windowsforms/splitbutton/overview) control allows you to create a drop-down button-like interface that is a combination of a regular button and a drop-down list. You can use this control when you need a single control with a multiple options. For example you can use this control to create a button to set the font and list the available font family in the drop-down list.

### SfButton vs ButtonAdv

Both SfButton and ButtonAdv controls used for same purpose. But SfButton control offers rich set of features over ButtonAdv. When you want to customize the appearance for all button states, you can use the SfButton control. When you want to use the predefined button types such as Calculator, Up, Down and so on you can use the ButtonAdv control. Comparatively, The performance of SfButton control is better than ButtonAdv control.

You can see the list of some of the specific API difference between ButtonAdv and SfButton as follows:
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
To display the text in to the button.
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
To display the image in to the button.
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
To set the background image to the button.
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
To set the position of image and text.
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
To set the alignment of text in to inside the button.
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
To set the alignment of image in to the button.
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
To draw a thin dotted rectangular frame inside the button when it got focus.
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
To draw the border around the button.
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
To apply visual styles for button.
</td>
</tr>
</table>
Below are the list of features in SfButton over ButtonAdv,
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
Appearance Customization
</td>
<td>
SfButton provides supports to changing the {{'[appearance](https://help.syncfusion.com/windowsforms/sfbutton/appearance#customizing-appearance-based-on-button-state)'| markdownify }} like back color, fore color, border and image in all button states (i.e. hover, pressed, focus and disable states).

</td>
</tr>
<tr>
<td>
Animation Image
</td>
<td>
SfButton provides support to load the {{'[GIF](https://help.syncfusion.com/windowsforms/sfbutton/appearance#animating-the-image)'| markdownify }} image.

</td>
</tr>
<tr>
<td>
Rich Text
</td>
<td>
The rich text can be displayed inside the SfButton by enabling the {{'[AllowRichText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfButton~AllowRichText.html)'| markdownify }} property and the proper rich text can be added in the {{'[Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfButton~Text.html)'| markdownify }} property.

</td>
</tr>
<tr>
<td>
Spacing Between Image and Text

</td>
<td>
SfButton provides supports to adjust space between image and text, refer {{'[here](https://help.syncfusion.com/windowsforms/sfbutton/button-types#spacing-between-text-and-image)'| markdownify }}. 
</td>
</tr>
<tr>
<td>
Wrap Text
</td>
<td>
Text can be wrapped by using {{'[WrapText](https://help.syncfusion.com/windowsforms/sfbutton/button-content#wrapping-the-text)'| markdownify }} property in the SfButton.

</td>
</tr>
<tr>
<td>
Text Trimming
</td>
<td>
SfButton provides support to trim the text by using {{'[AllowEllipse](https://help.syncfusion.com/windowsforms/sfbutton/button-content#trimming-and-showing-ellipsis-character)'| markdownify }} property.

</td>
</tr>
</table>