---
layout: post
title: Color Groups in Windows Forms ColorUI control | Syncfusion®
description: Learn about Color Groups support in Syncfusion® Windows Forms ColorUI control, its elements and more details.
platform: windowsforms
control: ColorUI
documentation: ug
---
# Color Groups in Windows Forms ColorUI

ColorUI control has three in-built color groups which are CustomColors, StandardColor, and SystemColors. This section gives you an idea of the color groups available.

![Overview_img228](ColorUI_images/Overview_img228.jpeg) 

## Displaying the Color Groups

We can control the display of the color groups using ColorGroups property. 

![Overview_img229](ColorUI_images/Overview_img229.jpeg) 

{% tabs %}
{% highlight c# %}

this.colorUIControl1.ColorGroups = ((Syncfusion.Windows.Forms.ColorUIGroups)((Syncfusion.Windows.Forms.ColorUIGroups.CustomColors | Syncfusion.Windows.Forms.ColorUIGroups.StandardColors)));

{% endhighlight %}

{% highlight vb %}

Me.colorUIControl1.ColorGroups = DirectCast(((Syncfusion.Windows.Forms.ColorUIGroups.CustomColors Or Syncfusion.Windows.Forms.ColorUIGroups.StandardColors)), Syncfusion.Windows.Forms.ColorUIGroups) 

{% endhighlight  %}
{% endtabs %}

![Overview_img230](ColorUI_images/Overview_img230.jpeg)

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

![Overview_img231](ColorUI_images/Overview_img231.jpeg) 

N> We can add custom text for the tabs of the Color groups. See [Tab Text] (/windowsforms/ColorUI/Tab-Text)for details.

N> The Custom Color Panels and User Color Panels can be stretched according to the size of the control. Refer_ ColorUIControl Appearance _for details.

