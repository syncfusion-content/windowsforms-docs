---
layout: post
title: BorderLayout | WindowsForms | Syncfusion
description: borderlayout
platform: WindowsForms
control: Layout Managers Package
documentation: ug
---
# BorderLayout

BorderLayout is a Layout Manager which allows the user to arrange and layout the Child controls along the borders and at the center, just like the .NET framework's built-in docking support.

![](Overview_images/Overview_img15.jpeg) 



N> BorderLayout does not arrange the Child components automatically like the other Layout Managers.

A sample which demonstrates the BorderLayout is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

{% seealso %}

[Creating a Simple Layout](/windowsforms/layoutmanagers/creating-a-simple-layout)

{% endseealso %}

## Configuring BorderLayout

The configuration settings for the BorderLayout have been discussed in this topic.

### Spacing

The horizontal and the vertical gap between the Child controls can be set using the properties given below.



<table>
<tr>
<th>
BorderLayout Properties</th><th>
Description</th></tr>
<tr>
<td>
HGap</td><td>
Gets / sets the horizontal spacing between the components.</td></tr>
<tr>
<td>
VGap</td><td>
Gets / sets the vertical spacing between the components.</td></tr>
</table>


{% highlight c# %}



this.borderLayout1.HGap = 10;

this.borderLayout1.VGap = 10;


{% endhighlight %}


{% highlight vbnet %}

Me.borderLayout1.HGap = 10

Me.borderLayout1.VGap = 10

{% endhighlight %}

![](Overview_images/Overview_img17.jpeg) 



{% seealso %}

[Margin Settings](/windowsforms/layoutmanagers/layout-manager-settings#margin-settings), [Border Layout - Configuring Child Controls](#configuring-child-controls)

{% endseealso %}

## Configuring Child Controls

The Child controls can be aligned to various positions (North, South, East, West and Center) using the property given below.



<table>
<tr>
<th>Child Control Property</th>
<th>Description</th>
</tr>
<tr>
<td>Position on borderLayout</td>
<td>Gets / sets the border position for a Child component.</td>
</tr>
</table>

### Child Control Property	Description

Position on borderLayout	Gets / sets the border position for a Child component.
 
N> This property is added as an extended property in the properties window of the Child control added to the BorderLayout.

  {% highlight c# %}

this.borderLayout1.SetPosition(this.btnNorth, Syncfusion.Windows.Forms.Tools.BorderPosition.North);
 
{% endhighlight %}


{% highlight vbnet %}

Me.borderLayout1.SetPosition(Me.btnNorth, Syncfusion.Windows.Forms.Tools.BorderPosition.North)

{% endhighlight %}


![](BorderLayout_images/BorderLayout_img1.png)
 
Setting the position of button1 on BorderLayout to "North"
{:.caption}
 
![](BorderLayout_images/BorderLayout_img2.png)
 
Layout of all Button Controls using BorderLayout
{:.caption}

N> BorderLayout allows only one control to be aligned along a particular layout position, unlike the .NET Framework support.

{% seealso %}

[Configuring BorderLayout](#configuring-borderlayout)

{% endseealso %}