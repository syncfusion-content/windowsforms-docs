---
layout: post
title: Overview | Form | Syncfusion
description: This section explains about the form control for windows forms and it's important key features such as title bar and MDI form support
platform: WindowsForms
control: SfForm
documentation: ug
---

# Overview

The `SfForm` is a window control for completing customization of the appearance and loading of custom user interface in the Title bar.

## Key Features

Following are the key features of the SfForm:

* Title bar customization: Customizes the appearance of the title bar and load the user control as a title bar.

* MDI(Multiple Document Interface) customization: Adds MDI child forms and customizes the appearance of MDI child forms.


## Choose between different form controls

Syncfusion WinForms suite comes up with the following different forms:

* [SfForm](https://www.syncfusion.com/products/windows-forms/form)
* [MetroForm](https://www.syncfusion.com/products/windows-forms/metroform)
* [Office2007Form](https://www.syncfusion.com/products/windows-forms/office2007form)

### SfForm

The [SfForm](https://help.syncfusion.com/windowsforms/sfform/overview) window control allows you to completely customize its appearance. Support to load an user interface in the title bar: add an MDI child form and allows the appearance of child forms to be customized.

### MetroForm

[MetroForm](https://help.syncfusion.com/windowsforms/metroform/overview) is used to create customizable window for the end user's application. It supports various built-in skins and let the user to control its behavior and appearance.

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
Style.TitleBarHeight
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
Loads any user control in the title bar instead of text by using the {{'[TitleBarTextControl](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.WinForms.Controls.SfForm~TitleBarTextControl.html)'| markdownify }} property. Size of the user control should be set properly to fit the control within the title bar. To learn more about loading user control to TitleBar in SfForm, refer to {{'[here](https://help.syncfusion.com/windowsforms/sfform/titlebar#loading-user-control-to-the-title-bar)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Border customization
</td>
<td>
Sets the active and inactive border colors by using the {{'[Style.Border](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.WinForms.Controls.Styles.FormVisualStyle~Border.html)'| markdownify}} and {{'[Style.InActiveBorder](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.WinForms.Controls.Styles.FormVisualStyle~InactiveBorder.html)'| markdownify }} properties. To learn more about border customization in SfForm, refer to {{'[here](https://help.syncfusion.com/windowsforms/sfform/formcustomization#form-border)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Rich text formatting
</td>
<td>
Displays the rich text inside the title bar by enabling the {{'[AllowRichText](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo~AllowRichText.html)'| markdownify }} property. To learn more about rich text formatting in SfForm, refer to {{'[here](https://help.syncfusion.com/windowsforms/sfform/titlebar#rich-text-formatting)'| markdownify}}.

</td>
</tr>
</table>