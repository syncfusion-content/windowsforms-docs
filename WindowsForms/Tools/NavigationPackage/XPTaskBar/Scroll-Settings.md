---
layout: post
title: Scroll Settings 
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---
## Scroll Settings 

Vertical scrollbar will be automatically added to the XPTaskBar when the TaskBarBoxes are placed outside the TaskBar's client 
area, provided the XPTaskBar is in the Vertical Layout mode. 

In the Horizontal Layout mode, the horizontal scrollbar appears on setting the ColWidthOnHorizontalLayout property to large 
values.

_Table_ _580__: Property Table_

<table>
<tr>
<td>
XPTaskBar Property</td><td>
Description</td></tr>
<tr>
<td>
AutoScroll</td><td>
Specifies the value indicating whether a container allows the user to scroll any control placed outside of it's visible 
boundaries.</td></tr>
<tr>
<td>
AutoScrollMargin</td><td>
Gets / sets the size of the AutoScroll margin.</td></tr>
<tr>
<td>
AutoScrollMinSize</td><td>
Gets /sets the minimum size of the AutoScroll.</td></tr>
</table>


{% highlight C# %}  

this.xpTaskBar1.AutoScroll = true;

this.xpTaskBar1.AutoScrollMargin = new System.Drawing.Size(5, 5);

this.xpTaskBar1.AutoScrollMinSize = new System.Drawing.Size(3, 3);

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBar1.AutoScroll = True

Me.xpTaskBar1.AutoScrollMargin = New System.Drawing.Size(5, 5)

Me.xpTaskBar1.AutoScrollMinSize = New System.Drawing.Size(3, 3)

{% endhighlight %}


The following screen shot illustrates the above settings.

 ![](Overview_images/Overview_img105.jpeg) 
Figure 1006: AutoScroll set for the XPTaskBar