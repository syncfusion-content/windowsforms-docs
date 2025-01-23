---
layout: post
title: About Windows Forms Form control | Syncfusion®
description: Learn here all about introduction of Syncfusion® Windows Forms Form (SfForm) control, its elements, and more details.
platform: WindowsForms
control: SfForm
documentation: ug
---

# Windows Forms Form (SfForm) Overview

The `SfForm` is a window control for completing customization of the appearance and loading of custom user interface in the Title bar.

## Key Features

Following are the key features of the SfForm:

* `Title bar customization` : Customizes the appearance of the title bar and load the user control as a title bar.

* `MDI(Multiple Document Interface) customization` : Adds MDI child forms and customizes the appearance of MDI child forms.


## Choose between different form controls

Syncfusion<sup>®</sup> WinForms suite comes up with the following different forms:

* [SfForm](https://www.syncfusion.com/winforms-ui-controls/form)
* [MetroForm](https://www.syncfusion.com/winforms-ui-controls/metroform)
* [Office2007Form](https://www.syncfusion.com/winforms-ui-controls/office2007form)

### SfForm

The [SfForm](https://help.syncfusion.com/windowsforms/form/overview) window control allows you to completely customize its appearance. Support to load an user interface in the title bar: add an MDI child form and allows the appearance of child forms to be customized.

### MetroForm

[MetroForm](https://help.syncfusion.com/windowsforms/metro-form/overview) is used to create customizable window for the end user's application. It supports various built-in skins and let the user to control its behavior and appearance.

### Office2007Form

[Office2007Form](https://help.syncfusion.com/windowsforms/office2007form/overview) is an advanced standard form that offers Microsoft Office2007 like, UI and appearance. It supports various built-in color schemes and customization options to control its behavior and appearance.

### SfForm vs MetroForm

Both SfForm and MetroForm controls are used for the same purpose. But, the SfForm control offers rich set of features over MetroForm. For caption images and label, use MetroForm. For custom user control in TitleBar and customizing the appearance of form and MDI forms, use SfForm.

The list of some specific API differences between SfForm and MetroForm are as follows.

<table>
<tr>
<td>
{{'**SfForm**'| markdownify }}
</td>
<td>
{{'**MetroForm**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Style.Border
</td>
<td>
BorderColor
</td>
<td>
Changes the color of the border. 
</td>
</tr>
<tr>
<td>
Style.TitleBar.Height
</td>
<td>
CaptionBarHeight
</td>
<td>
Increases the title or caption bar height.
</td>
</tr>
<tr>
<td>
Style.TitleBar.TextHorizontalAlignment
</td>
<td>
CaptionAlign
</td>
<td>
Displays the text on the title or caption bar that can be aligned horizontally.
</td>
</tr>
<tr>
<td>
Style.TitleBar.TextVerticalAlignment
</td>
<td>
CaptionVerticalAlignment
</td>
<td>
Displays the text on the title or caption bar that can be aligned vertically.
</td>
</tr>
<tr>
<td>
Style.TitleBar.IconVerticalAlignment
Style.TitleBar.IconHorizontalAlignment
</td>
<td>
IconAlign
</td>
<td>
Displays the icon that can be aligned horizontally or vertically.
</td>
</tr>
</table>

The list of features in SfForm over MetroForm are as follows.

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
Loading UserControl to TitleBar
</td>
<td>
Loads any user control in the title bar instead of text by using the {{'[TitleBarTextControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfForm.html#Syncfusion_WinForms_Controls_SfForm_TitleBarTextControl)'| markdownify }} property. Size of the user control should be set properly to fit the control within the title bar. To learn more about loading user control to TitleBar in SfForm, refer to {{'[here](https://help.syncfusion.com/windowsforms/form/titlebar#loading-user-control-to-the-title-bar)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Border customization
</td>
<td>
Sets the active and inactive border colors by using the {{'[Style.Border](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.FormVisualStyle.html#Syncfusion_WinForms_Controls_Styles_FormVisualStyle_Border)'| markdownify}} and {{'[Style.InActiveBorder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.FormVisualStyle.html#Syncfusion_WinForms_Controls_Styles_FormVisualStyle_InactiveBorder)'| markdownify }} properties. To learn more about border customization in SfForm, refer to {{'[here](https://help.syncfusion.com/windowsforms/form/formcustomization#form-border)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Rich text formatting
</td>
<td>
Displays the rich text inside the title bar by enabling the {{'[AllowRichText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_AllowRichText)'| markdownify }} property. To learn more about rich text formatting in SfForm, refer to {{'[here](https://help.syncfusion.com/windowsforms/form/titlebar#rich-text-formatting)'| markdownify}}.

</td>
</tr>
</table>
