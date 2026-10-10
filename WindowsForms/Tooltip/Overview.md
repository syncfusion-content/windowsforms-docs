---
layout: post
title: About Syncfusion® Windows Forms ToolTip Control | Syncfusion®
description: Learn about the introduction of Syncfusion® Essential Studio Windows Forms SfToolTip control and more details.
platform: windowsforms
control: SfToolTip
documentation: ug

---
# About Syncfusion® Windows Forms SfToolTip Control

The `SfToolTip` appears automatically as a pop-up and shows information about the purpose of the control when the pointer rests on the control. The control also includes a feature that allows an end user to add a custom user control to a `ToolTipItem`, so the end user can fully customize any item in the `SfToolTip`.

## Key Features

The key features of the `SfToolTip` are:

* **Multiple items** — Supports adding more than one tooltip item.
* **Adding controls** — Supports loading a control inside a tooltip item.
* **ToolTip content customization** — Supports customizing the appearance of a tooltip item.

## Version Compatibility

The `SfToolTip` is available in Syncfusion<sup>®</sup> Essential Studio Windows Forms starting with version 12.1.0.36 and is supported on .NET Framework 4.5+, .NET Core 3.1, .NET 5, and later.

## Choose between different tooltip controls

Syncfusion<sup>®</sup> WinForms suite comes up with the following different tooltips:

* [SfToolTip](https://www.syncfusion.com/winforms-ui-controls/tooltip)
* [SuperToolTip](https://help.syncfusion.com/windowsforms/classic/tooltip/supertooltip)

### SfToolTip

[SfToolTip](https://help.syncfusion.com/windowsforms/tooltip/overview) is a component that provides options to display multiple lines, multiple items, and balloon styles. It also provides support to load images and host any custom UI control.

### SuperToolTip

[SuperToolTip](https://help.syncfusion.com/windowsforms/classic/tooltip/supertooltip) is a component used to display text and images with various customization options. It also allows you to customize the back color, fore color, separator, and HTML text.

### SfToolTip vs SuperToolTip

Both SfToolTip and SuperToolTip controls are used for the same purposes. However, the SfToolTip control offers a richer set of features than the SuperToolTip. When multi-item support and tooltip customization are needed, use SfToolTip. The style customization of the SfToolTip control is also more flexible than that of the SuperToolTip.

The following table lists some of the specific property differences between SfToolTip and SuperToolTip.

<table>
<tr>
<td>
{{'**SfToolTip**'| markdownify }}
</td>
<td>
{{'**SuperToolTip**'| markdownify }}
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
Sets the text to be displayed in the tooltip item.
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
Sets the image to be shown on the tooltip.
</td>
</tr>
<tr>
<td>
AutoPopDelay
</td>
<td>
ToolTipDuration
</td>
<td>
Specifies the duration of the tooltip to be visible.
</td>
</tr>
<tr>
<td>
ToolTipInfo.ToolTipStyle
</td>
<td>
Style
</td>
<td>
Specifies the style of the tooltip: Regular rectangle or balloon style.
</td>
</tr>
<tr>
<td>
ToolTipInfo.MaxWidth
</td>
<td>
MaxWidth
</td>
<td>
Specifies the maximum width of the tooltip.
</td>
</tr>
</table>

The following list of features are in SfToolTip over SuperToolTip.

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
Multiple items
</td>
<td>
Adds multiple items as a tooltip. To learn more about adding multiple items, refer to {{'[here](https://help.syncfusion.com/windowsforms/tooltip/tooltip-content#adding-multiple-items-into-a-tooltip)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Custom user control
</td>
<td>
Adds a custom user control as pop-up information. To learn more about adding a custom user control, refer to {{'[here](https://help.syncfusion.com/windowsforms/tooltip/tooltip-content#adding-custom-user-control-into-a-tooltip)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Custom drawing
</td>
<td>
Draws a custom tooltip item appearance. To learn more about drawing a custom tooltip, refer to {{'[here](https://help.syncfusion.com/windowsforms/tooltip/working-with-sftooltip#custom-drawing-of-tooltip)'| markdownify }}.
</td>
</tr>
<tr>
<td>
Appearance customization
</td>
<td>
Individually customizes the appearance of each tooltip item shown using SfToolTip, whereas all tooltip items shown using SuperToolTip share the same appearance. To learn more about appearance customization, refer to {{'[here](https://help.syncfusion.com/windowsforms/tooltip/appearance)'| markdownify }}.
</td>
</tr>
</table>
