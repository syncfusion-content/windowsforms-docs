---
layout: post
title: Configuring BorderLayout in Windows Forms LayoutManagers | Syncfusion®
description: Learn about Configuring BorderLayout support in Syncfusion® Windows Forms LayoutManagers control and more details.
platform: windowsforms
control: BorderLayout
documentation: ug
---

# Configuring BorderLayout in Windows Forms LayoutManagers

The configuration settings for the BorderLayout control have been given in this section.

## Spacing

The horizontal and vertical gaps between the child controls can be set using the following properties.

<table>

<tr>

<th>

BorderLayout properties</th><th>

Description</th></tr>

<tr>

<td>

HGap<br/></td><td>

Gets or sets the horizontal spacing between the layout border and the components.<br/></td></tr>

<tr>

<td>

VGap<br/></td><td>

Gets or sets the vertical spacing between the layout border and the components.<br/></td></tr>

</table>

{% tabs %}

{% highlight c# %}

this.borderLayout1.HGap = 10;

this.borderLayout1.VGap = 10;



{% endhighlight %}

{% highlight vb %}

Me.borderLayout1.HGap = 10

Me.borderLayout1.VGap = 10

{% endhighlight %}

{% endtabs %}

![Aligning with space between child controls](configuring_images/configuring_img1.jpeg)


## Configuring child controls	

The child controls can be aligned to various positions (North, South, East, West, and Center) using the following property.

<table>

<tr>
<th>
Child control property</th><th>
Description</th></tr>
<tr>
<td>

Position on borderLayout<br/></td><td>
Gets or sets the border position for a child components.<br/></td></tr>

</table>

N> This property is added as an extended property in the properties window of the child control added to BorderLayout.

{% tabs %}

{% highlight c# %}

this.borderLayout1.SetPosition(this.btnNorth, Syncfusion.Windows.Forms.Tools.BorderPosition.North);

{% endhighlight %}

{% highlight vb %}

Me.borderLayout1.SetPosition(Me.btnNorth, Syncfusion.Windows.Forms.Tools.BorderPosition.North)

{% endhighlight %}

{% endtabs %}

![Aligning child control to a different position](configuring_images/configuring_img2.jpeg)

![Aligning button at the North relative to container](configuring_images/configuring_img3.jpeg)
