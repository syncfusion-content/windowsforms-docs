---
layout: post
title: Appearance Settings in Windows Forms TextBox control | Syncfusion
description: Learn about Appearance Settings support in Syncfusion Windows Forms TextBox (TextBoxExt) control and more details.
platform: WindowsForms
control: TextBoxExt
documentation: ug
---

# Appearance Settings in Windows Forms TextBox (TextBoxExt)

This section describes about background, foreground and visual style settings.

## Background settings

You can set the background color of the [TextBoxExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html) control by using the [BackColor](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.backcolor?view=windowsdesktop-7.0&viewFallbackFrom=netcore-3.1&redirectedfrom=MSDN#System_Windows_Forms_TextBoxBase_BackColor) property.

{% tabs %}

{% highlight c# %}

this.textBoxExt1.BackColor = System.Drawing.Color.Moccasin;

{% endhighlight %}

{% highlight vb %}

Me.textBoxExt1.BackColor = System.Drawing.Color.Moccasin

{% endhighlight %}
{% endtabs %}

![Set the backcolor of WF TextBoxExt control](Appearance-Settings_images/Appearance-Settings_img1.png)

## Foreground settings

You can set the foreground color of the [TextBoxExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html) control by using [ForeColor](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.forecolor?view=windowsdesktop-7.0&viewFallbackFrom=netcore-3.1&redirectedfrom=MSDN#System_Windows_Forms_TextBoxBase_ForeColor) property.

{% tabs %}

{% highlight c# %}

this.textBoxExt1.ForeColor = System.Drawing.Color.LightSeaGreen;

{% endhighlight %}

{% highlight vb %}

Me.textBoxExt1.ForeColor = System.Drawing.Color.LightSeaGreen

{% endhighlight %}
{% endtabs %}

![Set the fore ground color of WF TextBoxExt control](Appearance-Settings_images/Appearance-Settings_img2.png)

## Visual style

You can change the visual style for [TextBoxExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html) control by using [Style](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_Style) property. The various styles are given below,

* Office2016Colorful
* Office2016White
* Office2016Black
* Office2016DarkGray
* Metro
* Office2010
* Office2007 
* Default

{% tabs %}

{% highlight c# %}

this.textBoxExt1.Style = TextBoxExt.theme.Office2016Colorful;

{% endhighlight %}

{% highlight vb %}

Me.textBoxExt1.Style = TextBoxExt.theme.Office2016Colorful

{% endhighlight %}

{% endtabs %}

![Set the visual style to WF TextBoxExt control](Appearance-Settings_images/Appearance-Settings_img3.png) 

