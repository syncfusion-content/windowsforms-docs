---
layout: post
title: GroupBar Items Customization
description: GroupBar Items Customization
platform: windowsforms
control: GroupBar
documentation: ug
---
# GroupBar Items Customization

The following table lists the properties related to the GroupBar Items.

_Table_ _544__: Property Table_

<table>
<tr>
<td>
GroupBar Property</td><td>
Description</td></tr>
<tr>
<td>
BarHighlight</td><td>
Specifies the value which indicates whether to highlight the GroupBar Item when the mouse cursor hovers over it.</td></tr>
<tr>
<td>
FlatLook</td><td>
Specifies whether to draw GroupBar Items with the control's borders without a 3-dimensional edge.</td></tr>
</table>


{% highlight C# %}  

this.groupBar1.BarHighlight = true;

this.groupBar1.FlatLook = true;

{% endhighlight %}



{% highlight vbnet %} 

Me.groupBar1.BarHighlight = True

Me.groupBar1.FlatLook = True

{% endhighlight %}

The control provides highlighting effect for the GroupBar Item when the mouse is hovered over it by setting the BarHighlight 
propertyto 'True'.

![](Overview_images/Overview_img20.jpeg) 
Figure 931: 'Components' Item Highlighted in the GroupBar

The border of the GroupBar Items can be changed by drawing the border without 3-dimensional edge which can be attained by 
setting the FlatLook propertyto 'True'. 

![](Overview_images/Overview_img21.jpeg)
Figure 932: Flat Look of GroupBar Items
