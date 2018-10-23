---
layout: post
title: Overview of SfToolTip for syncfusion Essential Windows Forms
description: This section explains about the tooltip component for windows forms and it's important key features such as multiple items, tooltip customization and etc
platform: windowsforms
control: SfToolTip
documentation: ug

---
# Overview

The `SfToolTip` appears automatically as a pop-up and shows the information of purpose of the control: when resetting the pointer on the control. The control includes the control adding feature that allows an end user to add the user control to the SfToolTip so, end user can customize any ToolTip item in the `SfToolTip`.

## Key Features

Following are the key features of the `SfToolTip`:

* Multiple items: Supports adding more tooltip items.
* Adding controls: Supports loading a control in the tooltip item.
* ToolTip content customization: Supports customizing the appearance of the tooltip item.


## Choose between different tooltip controls

Syncfusion WF suite comes up with following different tooltip namely,

* [SfToolTip](https://www.syncfusion.com/products/windows-forms/tooltip)
* [SuperToolTip](https://help.syncfusion.com/windowsforms/supertooltip/supertooltip)

### SfToolTip

[SfToolTip](https://help.syncfusion.com/windowsforms/sftooltip/overview) is a component that provides options to display the multiple lines, multiple items and balloon styles. It also provides support to loading images and hosting any custom UI control.

### SuperToolTip

[SuperToolTip](https://help.syncfusion.com/windowsforms/supertooltip/supertooltip) component is used to display the text and image with various customization options. It also allows to customize the back color, fore color, separator and html text.

### SfToolTip vs SuperToolTip

Both SfToolTip and SuperToolTip controls are used for same purpose. But SfToolTip control offers rich set of features over SuperToolTip. When you want multi items support and customizing each tooltip specifically, you can use SfToolTip. Comparatively, the style customization of SfToolTip control is better than the SuperToolTip.

You can see the list of some of the specific API difference between SfToolTip and SuperToolTip as follows:
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
To set the text to be displayed in the tooltip item.
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
To set the image to be shown on tooltip
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
To specify the duration of the tooltip to be visible.
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
To specify the style of tooltip. Regular rectangle or balloon style.
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
To specify the maximum width of the tooltip.
</td>
</tr>
</table>
Below are the list of features in SfToolTip over SuperToolTip,
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
SfToolTip provides support to add multiple items as a tooltip. To know more about adding control as a popup information, refer {{'[here](https://help.syncfusion.com/windowsforms/sftooltip/tooltip-content#adding-multiple-items-into-a-tooltip)'| markdownify }}.

</td>
</tr>
<tr>
<td>
 custom user control
</td>
<td>
SfToolTip provides support to add control as a popup information. To know more about custom user control, refer {{'[here](https://help.syncfusion.com/windowsforms/sftooltip/tooltip-content#adding-custom-user-control-into-a-tooltip)'| markdownify }}. 

</td>
</tr>
<tr>
<td>
Custom drawing
</td>
<td>
SfToolTip provides support to custom draw the tooltip item appearance. To know more about custom drawing the tooltip, refer {{'[here](https://help.syncfusion.com/windowsforms/sftooltip/working-with-sftooltip#custom-drawing-of-tooltip)'| markdownify }}.
</td>
</tr>
<tr>
<td>
Appearance customization
</td>
<td>
Appearance of the tooltip item shown using SfToolTip can be customized individually. Whereas all the tooltip item shown using SuperToolTip can have the same appearance only. To know more about appearance customization, refer {{'[here](https://help.syncfusion.com/windowsforms/sftooltip/appearance)'| markdownify }}.
</td>
</tr>
</table>
