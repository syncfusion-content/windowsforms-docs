---
layout: post
title: Behavior Settings 
description: Concepts and Features
platform: windowsforms
control: GroupView
documentation: ug
--- 
# Behavior Settings 

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