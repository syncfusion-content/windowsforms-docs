---
layout: post
title: Office2007Form Customization in Windows Forms | Syncfusion®
description: Customization options include caption alignment, fonts, colors, help button functionality, RTL layouts, and rounded corners.
platform: WindowsForms
control: Office2007 Form
documentation: ug
---

# Office2007Form Customization in Windows Forms

The Office2007Form caption and other UI elements can be customized through the properties documented in this section. Ensure the `Syncfusion.Windows.Forms` namespace is imported (see [Getting Started](Getting-Started.md)).

## Table of contents

* [Caption alignment](#caption-alignment)
* [Caption font](#caption-font)
* [Caption fore color](#caption-fore-color)
* [Caption bar height](#caption-bar-height)
* [Help button support](#help-button-support)
* [Right to left](#right-to-left)
* [Rounded corner](#rounded-corner)
* [Disabling Office2007Style](#disabling-office2007style)
* [See also](#see-also)

## Caption alignment

The form caption can be aligned to the left, right, or center by using the [CaptionAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Form.html#Syncfusion_Windows_Forms_Office2007Form_CaptionAlign) property.

{% tabs %}

{% highlight c# %}

this.CaptionAlign = System.Windows.Forms.HorizontalAlignment.Center;

{% endhighlight %}

{% highlight vb %}

Me.CaptionAlign = System.Windows.Forms.HorizontalAlignment.Center

{% endhighlight %}

{% endtabs %}

![WinForms Office2007Form with center caption alignment applied](Caption-Settings_images/CaptionAlignment.png)

## Caption font

The Office2007Form's caption font can be customized through the [CaptionFont](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Form.html#Syncfusion_Windows_Forms_Office2007Form_CaptionFont) property.

{% tabs %}

{% highlight c# %}

this.CaptionFont = new System.Drawing.Font("Comic Sans MS", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

{% endhighlight %}

{% highlight vb %}

Me.CaptionFont = New System.Drawing.Font("Comic Sans MS", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CByte(0))

{% endhighlight %}

{% endtabs %}

![WinForms Office2007Form with a custom Comic Sans MS caption font applied](Caption-Settings_images/CaptionFont.png)

## Caption fore color

The color of the caption text can be customized using the [CaptionForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Form.html#Syncfusion_Windows_Forms_Office2007Form_CaptionForeColor) property.

{% tabs %}

{% highlight c# %}

// Applies the color to caption text.

this.CaptionForeColor = Color.Pink;

{% endhighlight %}

{% highlight vb %}

' Applies the color to caption text.

Me.CaptionForeColor = Color.Pink

{% endhighlight %}

{% endtabs %}

![WinForms Office2007Form with pink caption text color applied](Caption-Settings_images/CaptionForeColor.png)

## Caption bar height

The [CaptionBarHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Form.html#Syncfusion_Windows_Forms_Office2007Form_CaptionBarHeight) property customizes the caption bar height.

{% tabs %}

{% highlight c# %}

this.CaptionBarHeight = 50;

{% endhighlight %}

{% highlight vb %}

Me.CaptionBarHeight = 50

{% endhighlight %}

{% endtabs %}

![WinForms Office2007Form with caption bar height set to 50](Caption-Settings_images/CaptionBarHeight.png)

### Retain the caption bar height on maximized mode

By default, the height of the caption bar is reduced when the form is in maximized state. It can be retained in both normal and maximized states by setting the [CaptionBarHeightMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Form.html#Syncfusion_Windows_Forms_Office2007Form_CaptionBarHeightMode) property to `SameAlwaysOnMaximize`.

{% tabs %}

{% highlight c# %}

this.CaptionBarHeightMode = Syncfusion.Windows.Forms.Enums.CaptionBarHeightMode.SameAlwaysOnMaximize;

{% endhighlight %}

{% highlight vb %}

Me.CaptionBarHeightMode = Syncfusion.Windows.Forms.Enums.CaptionBarHeightMode.SameAlwaysOnMaximize

{% endhighlight %}

{% endtabs %}

## Help button support

[HelpButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Localization.Localizer.EditResourceIdentifiers.LanguageColoringConfigurationDialog.html#Syncfusion_Windows_Forms_Localization_Localizer_EditResourceIdentifiers_LanguageColoringConfigurationDialog_HelpButton) property is used to show the `HelpButton` in the caption box of the Form.

{% tabs %}

{% highlight c# %}

// Displays the HelpButton in the caption box of the Form.

this.HelpButton = true;

{% endhighlight %}

{% highlight vb %}

' Displays the HelpButton in the caption box of the Form.

Me.HelpButton = True

{% endhighlight %}

{% endtabs %}

![WinForms Office2007Form with the help button visible in the caption box](Caption-Settings_images/HelpButton.png)

## Right to left

Right-to-left support can be enabled using the following properties in Office2007Form.

{% tabs %}

{% highlight c# %}

this.RightToLeftLayout = true;
this.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

{% endhighlight %}

{% highlight vb %}

Me.RightToLeftLayout = True
Me.RightToLeft = System.Windows.Forms.RightToLeft.Yes

{% endhighlight %}

{% endtabs %}

![WinForms Office2007Form with right-to-left layout applied](Caption-Settings_images/rtlsupport.png)

## Rounded corner

Rounded corners for `Office2007Form` can be enabled by using the [AllowRoundedCorners](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Form.html#Syncfusion_Windows_Forms_Office2007Form_AllowRoundedCorners) property. Rounded corners are not supported on OS versions lower than Windows 11. Enabling `AllowRoundedCorners` has no effect on those operating systems.

N> When the rounded corners are enabled, the border and shadow of the form are drawn by the operating system.

{% tabs %}

{% highlight c# %}

this.AllowRoundedCorners = true;

{% endhighlight %}

{% highlight vb %}

Me.AllowRoundedCorners = True

{% endhighlight %}

{% endtabs %}

![WinForms Office2007Form with rounded corners on Windows 11](Office2007-Form_images/RoundedCorners.png)

## Disabling Office2007Style

The Office 2007 look and feel can be disabled using the [DisableOffice2007Style](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Form.html#Syncfusion_Windows_Forms_Office2007Form_DisableOffice2007Style) property.

{% tabs %}

{% highlight c# %}

this.DisableOffice2007Style = true;

{% endhighlight %}

{% highlight vb %}

Me.DisableOffice2007Style = True

{% endhighlight %}

{% endtabs %}

![WinForms Office2007Form with the Office 2007 style disabled, showing the default Windows caption](Caption-Settings_images/image1.png)

## See also

* [About the Office2007Form control](Overview.md)
* [Getting Started with Windows Forms Office2007 Form](Getting-Started.md)
* [Configure Color Schemes in Windows Forms Office2007Form](Color-Schemes.md)
* [How to Enable Shadow in Windows Forms Office2007Form](FAQ/How-to-enable-shadow-of-the-Office2007Form.md)
* [Office2007Form API reference](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Form.html)
