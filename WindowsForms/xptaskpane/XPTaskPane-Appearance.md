---
layout: post
title: XPTaskPane-Appearance | WindowsForms | Syncfusion
description: xptaskpane appearance
platform: WindowsForms
control: XPTaskPane
documentation: ug
---

# XPTaskPane appearance

This section comprises the below topics:

## Foreground settings

### XPTaskPane foreground

Font style and fore color of the Task pages can be set using [Font](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.font?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_Font) and [ForeColor](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.forecolor?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_ForeColor) properties of XPTaskPane.

N> These settings can be overridden by individual [XPTaskPage.Font](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.font?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_Font) and [XPTaskPage.ForeColor](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.forecolor?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_ForeColor) properties.

{% tabs %}

{% highlight C# %}


this.xpTaskPane1.Font = new System.Drawing.Font("Verdana", 8.25F);

this.xpTaskPane1.ForeColor = System.Drawing.Color.SteelBlue;

{% endhighlight %}

{% highlight VB %}



Me.xpTaskPane1.Font = New System.Drawing.Font("Verdana", 8.25F)

Me.xpTaskPane1.ForeColor = System.Drawing.Color.SteelBlue

{% endhighlight %}

{% endtabs %}

### Header foreground

The font style and fore color for the Header text is controlled through [HeaderLabel.Font](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.font?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_Font) and [HeaderLabel.ForeColor](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.forecolor?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_Control_ForeColor) properties.

{% tabs %}

{% highlight C# %}


this.xpTaskPane1.HeaderLabel.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Bold);

this.xpTaskPane1.HeaderLabel.ForeColor = System.Drawing.Color.Navy;

{% endhighlight %}

{% highlight VB %}



Me.xpTaskPane1.HeaderLabel.Font = New System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Bold)

Me.xpTaskPane1.HeaderLabel.ForeColor = System.Drawing.Color.Navy

{% endhighlight %}

{% endtabs %}

![XPTaskPane foreground customization](XPTaskPane-Appearance_images/XPTaskPane-Appearance_img2.jpeg)



## Visual styles

The Visual appearance of XP Task Pane can be defined by the [XPTaskPane.VisualStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPTaskPane~VisualStyle.html) property. It supports _OfficeXP_ and new _Office2007_ styles which provides you a more polished user interface.

{% tabs %}

{% highlight C# %}


this.xpTaskPane1.VisualStyle = VisualStyle.Office2007;

this.xpTaskPane1.VisualStyle = VisualStyle.OfficeXP;

{% endhighlight %}

{% highlight VB %}



Me.xpTaskPane1.VisualStyle = VisualStyle.Office2007

Me.xpTaskPane1.VisualStyle = VisualStyle.OfficeXP

{% endhighlight %}

{% endtabs %}

![Appearance customization](XPTaskPane-Appearance_images/XPTaskPane-Appearance_img3.jpeg)



### Office color schemes

XPTaskPane supports all the three office color schemes.

{% tabs %}

{% highlight C# %}



//Setting Blue color scheme

this.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue;

//Setting Silver color scheme

this.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver;

//Setting Black color scheme

this.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Black;

{% endhighlight %}

{% highlight VB %}



'Setting Blue color schemes

Me.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Blue

'Setting Silver color schemes

Me.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Silver

'Setting Black color schemes

Me.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Black

{% endhighlight %}

{% endtabs %}

![Office2007 color scheme support](XPTaskPane-Appearance_images/XPTaskPane-Appearance_img4.jpeg)



### Custom colors

We can also apply custom colors to the XPTaskPane by setting [Office2007ColorScheme](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.XPTaskPane~Office2007ColorScheme.html) to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.

{% tabs %}

{% highlight C# %}



this.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Lime);

{% endhighlight %}

{% highlight VB %}



Me.xpTaskPane1.Office2007ColorScheme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(Me, Color.Lime)

{% endhighlight %}

{% endtabs %}

![Custom appearance](XPTaskPane-Appearance_images/XPTaskPane-Appearance_img5.jpeg)



