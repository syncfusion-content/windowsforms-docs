---
layout: post
title: XPTaskBar-ToolTips
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---
## XPTaskBar- ToolTips

ToolTips can be provided for the TaskBar Items of the XPTaskBar Box. The interesting part is that tooltips can also be assigned 
for the disabled TaskBar Items. 

The ToolTipText property of the XPTaskBar control can be used to set the text of the tooltip, while the tooltip can be displayed
using the ShowToolTip property.

_Table_ _587__: Property Table_

<table>
<tr>
<td>
XPTaskBar Box Property</td><td>
Description</td></tr>
<tr>
<td>
ToolTipText</td><td>
Gets / sets the text of the tooltip.</td></tr>
<tr>
<td>
ShowToolTip</td><td>
Sets the visibility of the tooltip. The default value is set to 'False'.</td></tr>
</table>


{% highlight C# %}  

// Set the tooltip text for the XPTaskBar Item.

this.xpTaskBarBox1.Items[1].ToolTipText = "Header Image, Gradient Header Brush";

this.xpTaskBarBox1.ShowToolTip = true;

{% endhighlight %}




{% highlight vbnet %} 

' Set the tooltip text for the XPTaskBar Item.

Me.xpTaskBarBox1.Items(1).ToolTipText = "Header Image, Gradient Header Brush"

Me.xpTaskBarBox1.ShowToolTip = True

{% endhighlight %}



 ![](Overview_images/Overview_img110.jpeg) 
Figure 1011: TaskBar Box displaying ToolTip