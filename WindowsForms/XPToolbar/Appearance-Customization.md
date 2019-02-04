---
layout: post
title: Appearance Customization | Windows Forms | Syncfusion
description: We can customize the Text, Background Color, Font Family, Foreground Color, etc..
platform: WindowsForms
control: XPToolBar
documentation: ug
---

# Appearance Customization

## Background Color

The [`BackColor`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.BarControlInternal~BackColor.html) property is used to set the background color of XPToolBar control. Background color is used to improve the visual appearance of the control.

The below code snippet will explain how to set background color of XPToolBar control.

{% tabs %}
{% highlight c# %}

this.xpToolBar1.BackColor = System.Drawing.Color.SkyBlue;

{% endhighlight %}

{% highlight vb %}

Me.xpToolBar1.BackColor = System.Drawing.Color.SkyBlue

{% endhighlight %}
{% endtabs %}

![Background Color](Appearance_Images/BackColor.png)

## Background Image

The [`BackgroundImage`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.backgroundimage?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_BackgroundImage) property is used to set the background image of XPToolBar control. Also we can adjust the image by using [`BackgroundImageLayout`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.backgroundimagelayout?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_BackgroundImageLayout) property. The layout can be None, Tile, Center, Stretch and Zoom.


The below code snippet is to set the background image of XPToolBar.

{% tabs %}
{% highlight c# %}

this.xpToolBar1.BackgroundImage = System.Drawing.Image.FromFile(@"..\..\..\logo.png");
this.xpToolBar1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;

{% endhighlight %}

{% highlight vb %}

Me.xpToolBar1.BackgroundImage = System.Drawing.Image.FromFile("..\..\..\logo.png")
Me.xpToolBar1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch

{% endhighlight %}
{% endtabs %}

![Background Image](Appearance_Images/BackgroundImage.png)

## Enable/Disable

XPToolBar is enabled by default when they are created. But its visibility can be changed based on user requirement through the [`Enabled`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.enabled?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_Enabled) property. Smilarly, we can disable individual bar items by using the [`Enabled`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.BarItem~Enabled.html) property of each item.


The below code snippet will explain how to disable XPToolBar.

{% tabs %}
{% highlight c# %}

this.xpToolBar1.Enabled = false;
this.parentBarItem1.Enabled = false;
this.barItem4.Enabled = false;

{% endhighlight %}

{% highlight vb %}

Me.xpToolBar1.Enabled = False
Me.parentBarItem1.Enabled = False
Me.barItem4.Enabled = False

{% endhighlight %}
{% endtabs %}

![Enable/Disable](Appearance_Images/Disable.png)

![Enable/Disable](Appearance_Images/Disable1.png)

## Font

The [`Font`](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPMenus.BarControlInternal~Font.html) property is used to set the "FontFamily", "FontStyle", and "FontSize" of XPToolBar control.


The below code snippet will explain the procedure to set font for toolbar.

{% tabs %}
{% highlight c# %}

this.xpToolBar1.Font = new System.Drawing.Font("Tempus Sans ITC", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Strikeout))));

{% endhighlight %}

{% highlight vb %}

Me.xpToolBar1.Font = New System.Drawing.Font("Tempus Sans ITC", 12F, (CType((System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Strikeout), System.Drawing.FontStyle)))

{% endhighlight %}
{% endtabs %}

![Font](Appearance_Images/Font.png)

## Foreground Color

The [`ForeColor`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.forecolor?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_ForeColor) property is used to set foreground color for toolbar.


The below code snippet will explain the procedure to set foreground color for toolbar.

{% tabs %}
{% highlight c# %}

this.xpToolBar1.ForeColor = System.Drawing.Color.Red;

{% endhighlight %}

{% highlight vb %}

Me.xpToolBar1.ForeColor = System.Drawing.Color.Red

{% endhighlight %}
{% endtabs %}

![Foreground Color](Appearance_Images/ForeColor.png)

## Size

The [`Size`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.size?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_Size) property is used to set the height and width of XPToolBar.


The below code snippet is used to set the size of XPToolBar.

{% tabs %}
{% highlight c# %}

this.xpToolBar1.Size = new System.Drawing.Size(878, 300);

{% endhighlight %}

{% highlight vb %}

Me.xpToolBar1.Size = New System.Drawing.Size(878, 300)

{% endhighlight %}
{% endtabs %}

![Size](Appearance_Images/Size.png)







