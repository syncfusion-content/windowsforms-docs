---
layout: post
title: Interactive Features
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---
## Interactive Features

User can determine whether the particular GroupView Item is selected or not using the ButtonView and ClipSelectionBounds properties. ButtonView displays the selected GroupView Item in the pressed state.

ButtonView can be enabled in the GroupView control at design-time by setting the SelectedItem property to integer values which in turn represents the GroupView Item. ClipSelectionBounds displays a white border around the selected GroupView Item.

_Table_ _575__: Property Table_

<table>
<tr>
<td>
GroupView Property</td><td>
Description</td></tr>
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
