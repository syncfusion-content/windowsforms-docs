---
layout: post
title: How to customize the Splitter color in the GroupBar
description: Frequently Asked Questions
platform: windowsforms
control: GroupBar
documentation: ug
---
# How to customize the Splitter color in the GroupBar

#### Appearance Settings

The following properties help customize the splitter color in the GroupBar.

<table>
<tr>
<td>
Property</td><td>
Description</td></tr>
<tr>
<td>
StackedMode</td><td>
Gets / sets a value indicating whether GroupBarItems are stacked</td></tr>
<tr>
<td>
Splittercolor</td><td>
Gets / sets the color of the splitter in GroupBar, if it is in stacked mode</td></tr>
<tr>
<td>
EnableSplittercolorCustomization</td><td>
Enable to change the color of the splitter in stacked mode</td></tr>
</table>


{% highlight C# %}  

 this.groupBar1.StackedMode = true;

// To customize the splitter color

this.groupBar1.Splittercolor = Color.Red;

// To define whether to use default splitter color or customized color

this.groupBar1.EnableSplittercolorCustomization = true;

{% endhighlight %}



{% highlight vbnet %} 

 Me.groupBar1.StackedMode = True

' To customize the splitter color

Me.groupBar1.Splittercolor = Color.Red

' To define whether to use default splitter color or customized color

Me.groupBar1.EnableSplittercolorCustomization = True

{% endhighlight %}

The following image shows the customized splitter.

 ![](Overview_images/Overview_img48.png) 
Figure 956: Splitter color customization