---
layout: post
title: Appearance-Settings | WindowsForms | Syncfusion
description: Learn here about how to change the background, forecolor of the Syncfusion Windows Forms TextBoxExt control and its style.
platform: WindowsForms
control: TextBoxExt
documentation: ug
---

# Appearance Settings in TextBoxExt

This section describes about background, foreground and visual style settings.

## Background settings

You can set the background color of the [TextBoxExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt.html) control by using the [BackColor](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.backcolor?redirectedfrom=MSDN&view=netcore-3.1#System_Windows_Forms_TextBoxBase_BackColor) property.

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

You can set the foreground color of the [TextBoxExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt.html) control by using [ForeColor](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.forecolor?redirectedfrom=MSDN&view=netcore-3.1#System_Windows_Forms_TextBoxBase_ForeColor) property.

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

You can change the visual style for [TextBoxExt](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt.html) control by using [Style](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.TextBoxExt~Style.html) property. The various styles are given below,

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

