---
layout: post
title: Color Groups | WindowsForms | Syncfusion
description: color groups
platform: WindowsForms
control: ColorUI
documentation: ug
---
# Color Groups

ColorUI control has three in-built color groups which are CustomColors, StandardColor, and SystemColors. This section gives you an idea of the color groups available.

![](ColorUI_images/Overview_img228.jpeg) 

## Displaying the Color Groups

We can control the display of the color groups using ColorGroups property. 

![](ColorUI_images/Overview_img229.jpeg) 

{% tabs %}
{% highlight c# %}

this.colorUIControl1.ColorGroups = ((Syncfusion.Windows.Forms.ColorUIGroups)((Syncfusion.Windows.Forms.ColorUIGroups.CustomColors | Syncfusion.Windows.Forms.ColorUIGroups.StandardColors)));

{% endhighlight %}

{% highlight vb %}

Me.colorUIControl1.ColorGroups = DirectCast(((Syncfusion.Windows.Forms.ColorUIGroups.CustomColors Or Syncfusion.Windows.Forms.ColorUIGroups.StandardColors)), Syncfusion.Windows.Forms.ColorUIGroups) 

{% endhighlight  %}
{% endtabs %}

![](ColorUI_images/Overview_img230.jpeg)

## User Groups

ColorGroups property also let you add user groups in addition to the standard groups. The color palette for the UserGroups will be CustomColors, by default.

{% tabs %}
{% highlight c# %}

this.colorUIControl1.ColorGroups = ((Syncfusion.Windows.Forms.ColorUIGroups)(((Syncfusion.Windows.Forms.ColorUIGroups.CustomColors | Syncfusion.Windows.Forms.ColorUIGroups.StandardColors)| Syncfusion.Windows.Forms.ColorUIGroups.UserColors)));

{% endhighlight  %}

{% highlight vb %}

Me.colorUIControl1.ColorGroups = DirectCast((((Syncfusion.Windows.Forms.ColorUIGroups.CustomColors Or  Syncfusion.Windows.Forms.ColorUIGroups.StandardColors) Or Syncfusion.Windows.Forms.ColorUIGroups.UserColors)),  Syncfusion.Windows.Forms.ColorUIGroups) 

{% endhighlight  %}
{% endtabs %}

![](ColorUI_images/Overview_img231.jpeg) 

N> We can add custom text for the tabs of the Color groups. See [Tab Text] (/windowsforms/ColorUI/Tab-Text)for details.

N> The Custom Color Panels and User Color Panels can be stretched according to the size of the control. Refer_ ColorUIControl Appearance _for details.

{% seealso %}

[Runtime Settings](/windowsforms/colorui/runtime-settings)

{% endseealso %}

