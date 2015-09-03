---
layout: post
title: GroupView Settings
description: Concepts and Features
platform: WindowsForms
control: GroupView
documentation: ug
---
# GroupView Settings

This section discusses the various settings that can be applied to define the look and behavior of the GroupView 
control.

## Appearance Settings

The following table describes the properties that enhance the appearance of the GroupView control.

_Table_ _559__: Property Table_

<table>
<tr>
<td>
GroupView Property</td><td>
Description</td></tr>
<tr>
<td>
FlatLook</td><td>
Specifies whether the control is displayed with a flat look.</td></tr>
<tr>
<td>
BorderStyle</td><td>
Gets / sets the border style for the GroupView control. It includes the following options:* None,* FixedSingle and* Fixed3D.</td></tr>
</table>



{% highlight C# %}  

this.groupView1.FlatLook = true;

this.groupView1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

{% endhighlight %}



{% highlight vbnet %} 

Me.groupView1.FlatLook = True

Me.groupView1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

{% endhighlight %}

The border of the GroupView Items can be changed by drawing the border without the 3-dimensional edge which can be attained by setting the FlatLook propertyto 'True'. 

![](Overview_images/Overview_img56.jpeg) 
Figure 964: Flat Look of GroupView Control Illustrated

We can specify the border style for the GroupView control using the BorderStyle property.

 ![](Overview_images/Overview_img57.jpeg) 
Figure 965: GroupView with BorderStyle set to "FixedSingle"

## Behavior Settings 

This section discusses the properties that determine the behavior of the GroupView control.

#### Drag-and-Drop Effect

This explains the drag-and-drop settings supported by the GroupView control.

_Table_ _560__: Property Table_

<table>
<tr>
<td>
GroupView Property</td><td>
Description</td></tr>
<tr>
<td>
AllowDragDrop</td><td>
The property determines whether the control will permit user-interactive drag-and-drop of GroupView Items.</td></tr>
<tr>
<td>
AllowDragAnyObject</td><td>
Setting this property permits the user to drag any object inside the GroupView control, provided AllowDragDrop property is set to 'True'.</td></tr>
</table>


{% highlight C# %}  

this.groupView1.AllowDragDrop = true;

this.groupView1.AllowDragAnyObject = true;

{% endhighlight %}


{% highlight vbnet %} 

Me.groupView1.AllowDragDrop = True

Me.groupView1.AllowDragAnyObject = True

{% endhighlight %} 

#### Spacing

Spacing can be provided between the GroupView Items, and between the GroupView control's left border and the GroupView Items using the properties given below.

_Table_ _561__: Property Table_

<table>
<tr>
<td>
GroupView Property</td><td>
Description</td></tr>
<tr>
<td>
ItemXSpacing</td><td>
It sets the horizontal distance between a GroupView Item and the GroupView control's left border.</td></tr>
<tr>
<td>
ItemYSpacing</td><td>
It sets the height between adjacent GroupView Items.</td></tr>
</table>


{% highlight C# %}  

this.groupView1.ItemXSpacing = 5;

this.groupView1.ItemYSpacing = 10;

{% endhighlight %}



{% highlight vbnet %} 

Me.groupView1.ItemXSpacing = 5

Me.groupView1.ItemYSpacing = 10

{% endhighlight %}

 ![](Overview_images/Overview_img58.jpeg) 
Figure 966: GroupBar with ItemXSpacing = "5" and ItemYSpacing = '"10"

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




