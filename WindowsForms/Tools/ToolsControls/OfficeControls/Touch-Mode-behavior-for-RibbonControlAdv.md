---
layout: post
title: Touch-Mode-behavior-for-RibbonControlAdv
description: Touch Mod behavior for RibbonControlAdv
platform: Windows Forms
control: Tools 
documentation: ug
---

# Touch Mod behavior for RibbonControlAdv

## Enabling Touch Mode 
 You can control touch mode settings of RibbonControlAdv control using the following property.
 
_Table 699: Property Table_

<table>
<tr><th>
Property</th><th>	Type</th><th>	Description</th></tr>
<tr><td>
RibbonTouchModeEnabled</td><td>	Boolean	Enabling the RibbonTouchModeEnabled property in RibbonContolAdv, increases the size according to Microsoft touch mode size. Disabling the property retains its original size.
</td></tr>
</table>

{% highlight C# %}

 //Enables touch mode for the RibbonControlAdv control
this.ribbonControlAdv1. RibbonTouchModeEnabled = true;
 {% endhighlight %}
 
{% highlight vbnet %}
 'Enables touch mode for the RibbonControlAdv control
Me.ribbonControlAdv1. RibbonTouchModeEnabled = True
{% endhighlight %}

![](Office_images/office_img52.png)

_Figure 1194: RibbonControlAdv Style Demo_
