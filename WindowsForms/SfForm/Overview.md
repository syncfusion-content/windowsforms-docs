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

Syncfusion WinForms suite comes up with following different form namely,

* [SfForm](https://www.syncfusion.com/products/windows-forms/form)
* [MetroForm](https://www.syncfusion.com/products/windows-forms/metroform)
* [Office2007Form](https://www.syncfusion.com/products/windows-forms/office2007form)

### SfForm

[SfForm](https://help.syncfusion.com/windowsforms/sfform/overview) is window control that allows complete customization of its appearance and support to load a user interface in the title bar. It also provides support to add an MDI child form and allows the appearance of the child forms to be customized.

### MetroForm

[MetroForm](https://help.syncfusion.com/windowsforms/metroform/overview) is used to create customizable window for the end user's application. It supports various built in skins and let the user to control its behavior and appearance.

### Office2007Form

[Office2007Form](https://help.syncfusion.com/windowsforms/office2007form/overview) is an advanced standard form that offers Microsoft Office2007 like UI and appearance. It supports various built-in color schemes and customization options that helps user to control its behavior and appearance.

### SfForm vs MetroForm

Both SfForm and MetroForm controls used for same purpose. But SfForm control offers rich set of features over MetroForm. When you want caption images, caption label, you can use MetroForm. When you want custom user control in TitleBar, customizing the appearance of form and MDI forms, you can use SfForm.

You can see the list of some of the specific API difference between SfForm and MetroForm as follows:
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
To change the color of the border. 
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
To increase the title/caption bar height.
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
To display the text on title/caption bar can be aligned horizontally.
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
To display the text on title/caption bar can be aligned vertically.
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
To display the icon can be aligned horizontally/vertically.
</td>
</tr>
</table>
Below are the list of features in SfForm over MetroForm,
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
SfForm provides support to load any user control into the title bar instead of title bar text by using the {{'[TitleBarTextControl](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfForm~TitleBarTextControl.html)'| markdownify }} property. Size of the user control should be set properly to fit the control within the title bar. To know more about loading user control to TitleBar in SfForm, refer {{'[here](https://help.syncfusion.com/windowsforms/sfform/titlebar#loading-user-control-to-the-title-bar)'| markdownify }}

</td>
</tr>
<tr>
<td>
Border customization
</td>
<td>
SfForm provides support to set the active and inactive border colors by using {{'[Style.Border](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.Styles.FormVisualStyle~Border.html)'| markdownify}} and {{'[Style.InActiveBorder](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.Styles.FormVisualStyle~InactiveBorder.html)'| markdownify }} properties. To know more about border customization in SfForm, refer {{'[here](https://help.syncfusion.com/windowsforms/sfform/formcustomization#form-border)'| markdownify }}

</td>
</tr>
<tr>
<td>
Rich Text Formatting
</td>
<td>
SfForm provides support to display the rich text inside the title bar by enabling {{'[AllowRichText](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo~AllowRichText.html)'| markdownify }} property. To know more about rich text formatting in SfForm, refer {{'[here](https://help.syncfusion.com/windowsforms/sfform/titlebar#rich-text-formatting)'| markdownify}}

</td>
</tr>
</table>