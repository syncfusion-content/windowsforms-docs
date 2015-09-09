---
layout: post
title: Interactive Features
description: Concepts and Features
platform: WindowsForms
control: GroupView
documentation: ug
---
# Interactive Features

User can determine whether the particular GroupView Item is selected or not using the ButtonView and ClipSelectionBounds properties. ButtonView displays the selected GroupView Item in the pressed state.

ButtonView can be enabled in the GroupView control at design-time by setting the SelectedItem property to integer values which in turn represents the GroupView Item. ClipSelectionBounds displays a white border around the selected GroupView Item.



<table>
<tr>
<th>
GroupView Property</th><th>
Description</th></tr>
<tr>
<td>
ButtonView</td><td>
Setting this property to 'True' will make the GroupView Items behave like button objects with a distinct selection state that is retained between item clicks.</td></tr>
<tr>
<td>
ClipSelectionBounds</td><td>
Specifies whether the selection bounds of the GroupView Item are clipped around it's image and text.</td></tr>
</table>


{% highlight C# %}  

this.groupView1.ButtonView = true;

this.groupView1.ClipSelectionBounds = true;

{% endhighlight %}



{% highlight vbnet %} 

Me.groupView1.ButtonView = True

Me.groupView1.ClipSelectionBounds = True

{% endhighlight %}



 ![](Overview_images/Overview_img85.png) 
Figure 987: ButtonView of the 'Cut' Item

## ToolTips

The ToolTipText property of the GroupView control can be used to set the text of the tooltip. The ShowToolTips 
property must be set to 'True' in order to make the tooltip visible.



<table>
<tr>
<th>
GroupView Property</th><th>
Description</th></tr>
<tr>
<td>
ToolTipText</td><td>
Gets / sets the text of the tooltip.</td></tr>
<tr>
<td>
ShowToolTips</td><td>
Sets the visibility of the tooltip. The default value is set to 'False'.</td></tr>
</table>


{% highlight C# %} 

// Set the tooltip text for the GroupView Item. 

this.groupView1.GroupViewItems[0].ToolTipText = "GroupViewItem1";

this.groupView1.ShowToolTips = true;

 {% endhighlight %}



{% highlight vbnet %} 

' Set the tooltip text for the GroupView Item. 

Me.groupView1.GroupViewItems(0).ToolTipText = "GroupViewItem1"

Me.groupView1.ShowToolTips = True

{% endhighlight %}


![](Overview_images/Overview_img86.jpeg) 
