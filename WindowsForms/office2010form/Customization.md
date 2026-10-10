---
layout: post
title: Office2010Form Customization in Windows Forms | Syncfusion®
description: Customization options include caption alignment, fonts, colors, help button support, RTL layouts, and rounded corners.
platform: WindowsForms
control: Office2010 Form
documentation: ug
---

# Office2010Form customization in Windows Forms

The Office2010Form exposes a number of properties to customize the caption bar and the form's layout. The following topics describe the supported properties.

## Caption alignment

The form caption can be aligned to the left, right, or center by using the [CaptionAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2010Form.html#Syncfusion_Windows_Forms_Office2010Form_CaptionAlign) property. The accepted values come from the `System.Windows.Forms.HorizontalAlignment` enumeration (`Left`, `Right`, `Center`); the default is `Left`.

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

The Office2010Form's caption font can be customized through the [CaptionFont](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2010Form.html#Syncfusion_Windows_Forms_Office2010Form_CaptionFont) property. Set this property in the form constructor or the `Load` event handler; changing it after the form is shown may not take effect until the form is redrawn.

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

The [CaptionBarHeight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2010Form.html#Syncfusion_Windows_Forms_Office2010Form_CaptionBarHeight) property customizes the height of the caption bar in pixels. The default is the system caption bar height.

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

The [HelpButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2010Form.html#Syncfusion_Windows_Forms_Office2010Form_HelpButton) property displays a help button (`?`) in the caption box of the form. The help button is only visible when both `MaximizeBox` and `MinimizeBox` are set to `false`, and `ControlBox` is `true`.

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

Right-to-left support is enabled by setting the two properties below. Set both before the form is shown so child controls inherit the layout. `RightToLeftLayout` is the Syncfusion property that mirrors the layout of the caption bar, while `RightToLeft` is the base `Control` property that controls text direction.

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

Rounded corners for the `Office2010Form` can be enabled by setting the [AllowRoundedCorners](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2010Form.html#Syncfusion_Windows_Forms_Office2010Form_AllowRoundedCorners) property to `true`. Rounded corners are only supported on Windows 11 (build 22000 and later); setting the property to `true` on earlier Windows versions is a silent no-op.

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

The Office2010 look and feel can be disabled using the [DisableOffice2010Style](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2010Form.html#Syncfusion_Windows_Forms_Office2010Form_DisableOffice2010Style) property. When set to `true`, the form reverts to the standard Windows Forms appearance; the color scheme, caption font, and other Office2010-specific customizations are not applied.

{% tabs %}

{% highlight C# %}

this.DisableOffice2010Style = true;

{% endhighlight %}


{% highlight VB %}

Me.DisableOffice2010Style = true

{% endhighlight %}

{% endtabs %}


![Winforms showing disabledoffice2010style in office2010form](Caption-Settings_images/image1.png)

## Troubleshooting

| Issue | Likely cause | Fix |
|---|---|---|
| Form renders with the standard Windows look after changing the inherited class. | The class does not inherit from `Office2010Form`, or `DisableOffice2010Style` is `true`. | Ensure `Form1 : Office2010Form` (or `Inherits Office2010Form` in VB) and that `DisableOffice2010Style` is `false`. |
| Caption bar changes have no effect. | `ApplyAeroTheme` is `true` on a supported OS, or the form has not been redrawn. | Set `this.ApplyAeroTheme = false;` and call `this.Refresh();`. |
| Rounded corners are not visible. | The host OS is older than Windows 11. | Upgrade to Windows 11 build 22000 or later; the property is a no-op on older OS versions. |
| The help button does not appear in the caption. | `MaximizeBox` or `MinimizeBox` is `true`, or `ControlBox` is `false`. | Set `this.MaximizeBox = false; this.MinimizeBox = false; this.ControlBox = true;`. |
