---
layout: post
title: Scroll Settings
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---
## Scroll Settings

We can specify scrolling for the GroupBar control to view the set of GroupView Items back and forth. This can be achieved by setting the IntegratedScrolling propertyto 'True'.

_Table_ _562__: Property Table_

<table>
<tr>
<td>
GroupView Property</td><td>
Description</td></tr>
<tr>
<td>
Integrated Scrolling</td><td>
Setting this property will delegate the GroupView's scrolling to the Parent GroupBar control. This mode is exclusive to the VS .NET toolbox type interface where the GroupBar provides the scrolling support for it's GroupView Child controls.On disabling this property, scrollbars are set inside the GroupView control to scroll through the GroupView Items.</td></tr>
</table>


{% highlight C# %}  

this.groupView2.IntegratedScrolling = False;

{% endhighlight %}



{% highlight vbnet %} 

Me.groupView1.IntegratedScrolling = False

{% endhighlight %}

![](Overview_images/Overview_img59.jpeg) 
Figure 967: Integrated Scrolling set to "False" in the Parent Control
