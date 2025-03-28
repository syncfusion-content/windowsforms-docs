---
layout: post
title: Customization in Windows Forms Office2007Form control | Syncfusion®
description: Learn about Customization support in Syncfusion® Windows Forms Office2007Form control and more details.
platform: WindowsForms
control: Office2007 Form
documentation: ug
---

# Customization in Windows Forms Office2007Form

The Form caption can be aligned to the left, right or center by using the [CaptionAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Form.html#Syncfusion_Windows_Forms_Office2007Form_CaptionAlign) property.

{% tabs %}

{% highlight C# %}

this.CaptionAlign = System.Windows.Forms.HorizontalAlignment.Center;

{% endhighlight %}

{% highlight VB %}

Me.CaptionAlign = System.Windows.Forms.HorizontalAlignment.Center 

{% endhighlight %}

{% endtabs %}

![Winforms showing caption alignment applied in office2007form](Caption-Settings_images/CaptionAlignment.png)

## Caption font

Office2010Form's caption Font can be customized through [CaptionFont](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Form.html#Syncfusion_Windows_Forms_Office2007Form_CaptionFont) property.

{% tabs %}

{% highlight C# %}

this.CaptionFont = new System.Drawing.Font("Comic Sans MS", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

{% endhighlight %}

{% highlight VB %}

Me.CaptionFont = New System.Drawing.Font("Comic Sans MS", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CByte((0))) 

{% endhighlight %}

{% endtabs %}

![Winforms showing caption font applied in office2007form](Caption-Settings_images/CaptionFont.png)


## Caption fore color

The color of the caption text can be customized using the [CaptionForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Form.html#Syncfusion_Windows_Forms_Office2007Form_CaptionForeColor) property.

{% tabs %}

{% highlight C# %}

// Applies the color to caption text.

this.CaptionForeColor = Color.Pink;

{% endhighlight %}

{% highlight VB %}

‘Applies the color to caption text.

Me.CaptionForeColor = Color.Pink

{% endhighlight %}

{% endtabs %}

![Winforms showing caption font color applied in office2007form](Caption-Settings_images/CaptionForeColor.png)

## Caption bar height

This property helps to customize the CaptionBar height.

{% tabs %}

{% highlight C# %}

this.CaptionBarHeight = 50;

{% endhighlight %}

{% highlight VB %}

Me. CaptionBarHeight = 50

{% endhighlight %}

{% endtabs %}

![Winforms showing caption bar height applied in office2007form](Caption-Settings_images/CaptionBarHeight.png)


### Retain the caption bar height on maximized mode

By Default, the height of the caption bar will be reduced when the form is in maximized state. It can be retained same in both normal and maximized state by setting the property [Office2007Form.CaptionBarHeightMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Form.html#Syncfusion_Windows_Forms_Office2007Form_CaptionBarHeightMode) as `SameAlwaysOnMaximize`

{% tabs %}

{% highlight C# %}

this.CaptionBarHeightMode = Syncfusion.Windows.Forms.Enums.CaptionBarHeightMode.SameAlwaysOnMaximize;

{% endhighlight %}

{% highlight VB %}

Me.CaptionBarHeightMode = Syncfusion.Windows.Forms.Enums.CaptionBarHeightMode.SameAlwaysOnMaximize
 
{% endhighlight %}

{% endtabs %}

## Help button support

[HelpButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Localization.Localizer.EditResourceIdentifiers.LanguageColoringConfigurationDialog.html#Syncfusion_Windows_Forms_Localization_Localizer_EditResourceIdentifiers_LanguageColoringConfigurationDialog_HelpButton) property is used to show the `HelpButton` in the caption box of the Form.

{% tabs %}

{% highlight C# %}

// Displays the HelpButton in the caption box of the Form.

 this.HelpButton = true;

{% endhighlight %}

{% highlight VB %}

‘Displays the HelpButton in the caption box of the Form.

 Me.HelpButton = true

{% endhighlight %}

{% endtabs %}

![Winforms showing helpbutton applied in office2007form](Caption-Settings_images/HelpButton.png)

## Right to left

Right to left support can be enabled using below properties in Office2007Form.

{% tabs %}

{% highlight C# %}

this.RightToLeftLayout = true;
 
this.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

{% endhighlight %}

{% highlight VB %}

Me.RightToLeftLayout = true
 
Me.RightToLeft = System.Windows.Forms.RightToLeft.Yes 

{% endhighlight %}

{% endtabs %}

![Winforms showing RTL applied in office2007form](Caption-Settings_images/rtlsupport.png)

## Rounded corner

Rounded corners for `Office2007Form` can be enabled by using the [AllowRoundedCorners](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Form.html#Syncfusion_Windows_Forms_Office2007Form_AllowRoundedCorners) property. Rounded corners are not supported in OS versions lower than Windows 11. Enabling `AllowRoundedCorners` property will have no effect on those operating systems. 

N> When the rounded corners are enabled, the border and shadow of the Form are drawn by the operating system.

{% tabs %}

{% highlight C# %}

this.AllowRoundedCorners = true;

{% endhighlight %}

{% highlight VB %}

Me.AllowRoundedCorners = true
 
{% endhighlight %}

{% endtabs %}


![Office2007Form with rounded corners](Office2007-Form_images/RoundedCorners.png)

## Disabling Office2007Style

Office2007 look and feel can be disabled using `DisableOffice2007Style` property.

{% tabs %}

{% highlight C# %}

this.DisableOffice2007Style = true;

{% endhighlight %}

{% highlight VB %}

Me.DisableOffice2007Style = true
 
{% endhighlight %}

{% endtabs %}


![Winforms showing disabledoffice2007style in office2007form](Caption-Settings_images/image1.png)
