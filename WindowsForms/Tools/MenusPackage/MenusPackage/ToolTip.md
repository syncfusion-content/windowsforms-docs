---
layout: post
title: ToolTip
description: tooltip
platform: windowsforms
control: Menus Package 
documentation: ug
---
# ToolTip

ToolTip for the BarItems can be enabled using BarItem.ShowTooltips property, which can be edited using BarItem.Tooltip property.






{% highlight c# %}
this.dropDownBarItem2.ShowTooltip = true;

this.dropDownBarItem2.Tooltip = "Pick a color";




{% endhighlight  %}
{% highlight vbnet %}


Me.dropDownBarItem2.ShowTooltip = True

Me.dropDownBarItem2.Tooltip = "Pick a color"
{% endhighlight  %}


![](Overview_images/Overview_img78.jpeg) 



> Note: We can control the display of tooltips for the bar items, only when the form is active, using the below BarManager property.

<table>
<tr>
<th>
BarManager Property</th><th>
Description</th></tr>
<tr>
<td>
BarItemActiveFormCheckOverride</td><td>
Specifies whether bar items should check for active form before displaying the tooltips.</td></tr>
</table>




{% highlight c# %}

this.mainFrameBarManager1.BarItemActiveFormCheckOverride = true;


{% endhighlight  %}
{% highlight vbnet %}



Me.mainFrameBarManager1.BarItemActiveFormCheckOverride = True
{% endhighlight  %}
