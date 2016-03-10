---
layout: post
title: Border Settings | WindowsForms | Syncfusion
description: border settings
platform: WindowsForms
control: EditorPackage 
documentation: ug
---
# Border Settings

## Corner Radius 

The GradientPanelExt comes as a rounded rectangle by default. The rounded corners can be removed or their radius can be modified using the CornerRadius property.

Table241: Property Table

<table>
<tr>
<th>
GradientPanelExt Property</th><th>
Description</th></tr>
<tr>
<td>
CornerRadius</td><td>
Used to set or get the radius truncation for the control's corners.</td></tr>
</table>





{% highlight c# %}
gradientPanelExt1.CornerRadius = 14;

{% endhighlight  %}


{% highlight c# %}


Private gradientPanelExt1.CornerRadius = 14

{% endhighlight  %}

![](GradientPanelExt_images/Overview_img388.jpeg)



The CornerRadius can be turned off by giving a value of zero for it.



{% highlight c# %}

gradientPanelExt1.CornerRadius = 0;


{% endhighlight  %}
{% highlight vbnet %}




Private gradientPanelExt1.CornerRadius = 0

{% endhighlight  %}

![](GradientPanelExt_images/Overview_img389.jpeg)



## Border Gap

The GradientPanelExt comes with a margin for all the four sides. The spacing between the margin and the control's border can be set using the BorderGap property.

Table242: Property Table

<table>
<tr>
<th>
GradientPanelExt Property</th><th>
Description</th></tr>
<tr>
<td>
BorderGap</td><td>
Used to get or set the gap between the border and the margins.</td></tr>
</table>


The border gap for the GradientPanelExt can be set programmatically as given below.



{% highlight c# %}

gradientPanelExt1.BorderGap = 40;

{% endhighlight  %}
{% highlight vbnet %}

Private gradientPanelExt1.BorderGap = 40

{% endhighlight  %}

![](GradientPanelExt_images/Overview_img390.jpeg)


