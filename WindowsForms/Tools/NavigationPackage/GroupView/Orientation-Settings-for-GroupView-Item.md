---
layout: post
title: Orientation Settings for GroupView Item
description: Concepts and Features
platform: windowsforms
control: GroupView
documentation: ug
---
# Orientation Settings for GroupView Item

The following table lists the properties related to the orientation of GroupView Items.

_Table_ _571__: Property Table_

<table>
<tr>
<td>
GroupView Property</td><td>
Description</td></tr>
<tr>
<td>
FlowView</td><td>
This is a non-text, image-only display mode where items are arranged in a horizontal layout that increases or decreases with changes in the control width.</td></tr>
<tr>
<td>
FlowViewItemTextLength</td><td>
Gets / sets the GroupView Item's text length in FlowView mode.</td></tr>
<tr>
<td>
ShowFlowViewItemText</td><td>
Specifies whether the control should show GroupView Item's text in the FlowView mode.</td></tr>
<tr>
<td>
Orientation</td><td>
Specifies the orientation for the GroupView Items. The options included are as follows.* Horizontal and* Vertical.<br>The default value is 'Vertical'.</td></tr>
</table>


{% highlight C# %} 

this.groupView1.FlowView = true;

this.groupView1.FlowViewItemTextLength = 45;

this.groupView1.ShowFlowViewItemText = true;

this.groupView1.Orientation = Syncfusion.Windows.Forms.Tools.GroupViewOrientation.Horizontal;

 {% endhighlight %}



{% highlight vbnet %} 

Me.groupView1.FlowView = True

Me.groupView1.FlowViewItemTextLength = 45

Me.groupView1.ShowFlowViewItemText = True

Me.groupView1.Orientation = Syncfusion.Windows.Forms.Tools.GroupViewOrientation.Horizontal

{% endhighlight %}

The GroupView Items in the GroupView control can be arranged in the horizontal and vertical direction, with or without displaying text. FlowView property displays the GroupView Items with images and without text. 

If you want to show the GroupView Item's text in the FlowView mode then set the ShowFlowViewItemText property to 'True'. You can also control the length of the GroupView Item's text in the FlowView mode using the FlowViewItemTextLength property.

![](Overview_images/Overview_img74.jpeg) 
Figure 979: FlowView Illustrated

 ![](Overview_images/Overview_img75.jpeg) 
Figure 980: ShowFlowViewItemText property set to True

The Orientation property determines the direction of display for the GroupView Items. 

![](Overview_images/Overview_img76.jpeg) 
Figure 981: Orientation property Illustrated
