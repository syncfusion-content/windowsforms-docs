---
layout: post
title: Office2010Form Customization in Windows Forms | Syncfusion®
description: Customization options in the Office2010 Form include caption alignment, fonts, colors, help button support, RTL layouts, and rounded corners.
platform: windowsforms
control: Office2010 Form
documentation: ug
---

# Caption alignment in WinForms Office2010Form

The Form caption can be aligned to the left, right or center by using the [CaptionAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2010Form.html#Syncfusion_Windows_Forms_Office2010Form_CaptionAlign) property.

{% tabs %}

{% highlight C# %}

this.CaptionAlign = System.Windows.Forms.HorizontalAlignment.Center;

{% endhighlight %}

{% highlight VB %}

Me.CaptionAlign = System.Windows.Forms.HorizontalAlignment.Center 

{% endhighlight %}

{% endtabs %}

![Winforms showing caption alignment applied in office2010form](Caption-Settings_images/CaptionAlignment.png)

## Caption font

The Office2010Form's caption font can be customized through the [CaptionFont](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2010Form.html#Syncfusion_Windows_Forms_Office2010Form_CaptionFont) property.

{% tabs %}

{% highlight C# %}

this.CaptionFont = new System.Drawing.Font("Comic Sans MS", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

{% endhighlight %}

{% highlight VB %}

Me.CaptionFont = New System.Drawing.Font("Comic Sans MS", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CByte((0))) 

{% endhighlight %}

{% endtabs %}

![Winforms showing caption font applied in office2010form](Caption-Settings_images/CaptionFont.png)


## Caption fore color

The color of the caption text can be customized using the [CaptionForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2010Form.html#Syncfusion_Windows_Forms_Office2010Form_CaptionForeColor) property.

{% tabs %}

{% highlight C# %}

// Applies the color to the caption text.
this.CaptionForeColor = Color.Pink;

{% endhighlight %}

{% highlight VB %}

' Applies the color to the caption text.
Me.CaptionForeColor = Color.Pink

{% endhighlight %}

{% endtabs %}

![Winforms showing caption font color applied in office2010form](Caption-Settings_images/CaptionForeColor.png)

## Caption bar height

This property helps to customize the CaptionBar height.

{% tabs %}

{% highlight C# %}

this.CaptionBarHeight = 50;

{% endhighlight %}

{% highlight VB %}

Me.CaptionBarHeight = 50

{% endhighlight %}

{% endtabs %}

![Winforms showing caption bar height applied in office2010form](Caption-Settings_images/CaptionBarHeight.png)



## Help button support

The [HelpButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Localization.Localizer.EditResourceIdentifiers.LanguageColoringConfigurationDialog.html#Syncfusion_Windows_Forms_Localization_Localizer_EditResourceIdentifiers_LanguageColoringConfigurationDialog_HelpButton) property is used to show the `HelpButton` in the caption box of the form.

{% tabs %}

{% highlight C# %}

// Displays the help button in the caption box of the form.

 this.HelpButton = true;

{% endhighlight %}

{% highlight VB %}

' Displays the help button in the caption box of the form.

 Me.HelpButton = true

{% endhighlight %}

{% endtabs %}

![Winforms showing helpbutton applied in office2010form](Caption-Settings_images/HelpButton.png)

## Right-to-left layout

Right to left support can be enabled using below properties in Office2010Form.

{% tabs %}

{% highlight C# %}

this.RightToLeftLayout = true;
this.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

{% endhighlight %}

{% highlight VB %}

Me.RightToLeftLayout = True
Me.RightToLeft = System.Windows.Forms.RightToLeft.Yes

{% endhighlight %}

{% endtabs %}

![Winforms showing RTL applied in office2010form](Caption-Settings_images/rtlsupport.png)

## Rounded corners

Rounded corners for `Office2010Form` can be enabled by using the [AllowRoundedCorners](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2010Form.html#Syncfusion_Windows_Forms_Office2010Form_AllowRoundedCorners) property. Rounded corners are not supported in OS versions lower than Windows 11. Enabling `AllowRoundedCorners` property will have no effect on those operating systems.

N> When rounded corners are enabled, the border and shadow of the form are drawn by the operating system.

{% tabs %}

{% highlight C# %}

this.AllowRoundedCorners = true;

{% endhighlight %}

{% highlight VB %}

Me.AllowRoundedCorners = true
{% endhighlight %}

{% endtabs %}


![Office2010Form with rounded corners](Creating-Office2010-Form_images/RoundedCorners.png)

## Disabling the Office2010 style

Office2010 look and feel can be disabled using `DisableOffice2010Style` property.

{% tabs %}

{% highlight C# %}

this.DisableOffice2010Style = true;

{% endhighlight %}


{% highlight VB %}

Me.DisableOffice2010Style = true

{% endhighlight %}

{% endtabs %}


![Winforms showing disabledoffice2010style in office2010form](Caption-Settings_images/image1.png)