---
layout: post
title: XPTaskBar Settings  | WindowsForms | Syncfusion
description: Concepts and Features
platform: WindowsForms
control: XPTaskBar
documentation: ug
---
# XPTaskBar Settings 

The behavior of the XPTaskBar can be controlled using the properties given below.

## Behavior Settings 

This section discusses the behavior settings of the XPTaskBar.

Property Table

<table>
<tr>
<th>
XPTaskBar Property</th><th>
Description</th><th>
Type of Property</th><th>
Value It Accepts</th><th>
Property Syntax</th><th>
Sub Properties</th><th>
More Information</th></tr>
<tr>
<td>
AllowDrop</td><td>
Gets / sets a value indicating whether the control can accept data that the user drags on it.</td><td>
Normal</td><td>
Boolean[true/false]</td><td>
Public Property AllowDrop As Boolean this.xpTaskBar1.AllowDrop = true;</td><td>
-</td><td>
-</td></tr>
<tr>
<td>
AutoPersistStates</td><td>
Specifies whether to automatically persist the collapsed state of the child boxes.</td><td>
Normal</td><td>
Boolean[true/false]</td><td>
Public Property AutoPersistStates As Boolean this.xpTaskBar1.AutoPersistStates = true;</td><td>
No</td><td>
The expanded states of the child task bar boxes are cached as the users expands/collapses them, when this property is true. The cached state is persisted in the Isolated Storage, when this control is disposed.If the child task bar boxes are added to this control, the saved state is reapplied on the task bar boxes, when the application loads again.State is saved in the Isolated Storage of the system, scoped by the current user identity.You can control the persistent store and/or the time of persistence using LoadBoxExpandedStates() and SaveBoxExpandedStates() methods.</td></tr>
<tr>
<td>
VerticalLayout</td><td>
Gets / sets the value which determines whether the TaskBar Boxes should be aligned vertically or horizontally in the XPTaskBar control. The default layout is Vertical.</td><td>
Normal</td><td>
Boolean[true/false]</td><td>
Public Property VerticalLayout As Boolean this.xpTaskBar1.VerticalLayout = true;</td><td>
</td><td>
</td></tr>
<tr>
<td>
ColWidthOnHorizontalAlignment</td><td>
Specifies the width for each column in the Horizontal Layout mode. The  default value is 100. VerticalLayout property must be set to 'False'.</td><td>
Normal</td><td>
Integer value</td><td>
public int ColWidthOnHorizontalAlignment { get; set; }this.xpTaskBar1.ColWidthOnHorizontalAlignment = 100;</td><td>
Yes. Set this property as false to make changes on Horizontal alignment. this.xpTaskBar1.VerticalLayout = false;</td><td>
</td></tr>
</table>


{% highlight C# %}  

this.xpTaskBar1.AllowDrop = true;

this.xpTaskBar1.AutoPersistStates = true;

this.xpTaskBar1.ColWidthOnHorizontalAlignment = 100;

this.xpTaskBar1.VerticalLayout = true;

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBar1.AllowDrop = True

Me.xpTaskBar1.AutoPersistStates = True

Me.xpTaskBar1.ColWidthOnHorizontalAlignment = 100

Me.xpTaskBar1.VerticalLayout = True

{% endhighlight %}

![](Overview_images/Overview_img103.jpeg) 

![](Overview_images/Overview_img104.jpeg)


## Scroll Settings 

Vertical scrollbar will be automatically added to the XPTaskBar when the TaskBar Boxes are placed outside the TaskBar's client 
area, provided the XPTaskBar is in the Vertical Layout mode. 

In the Horizontal Layout mode, the horizontal scrollbar appears on setting the ColWidthOnHorizontalLayout property to large 
values.

Property Table

<table>
<tr>
<th>
XPTaskBar Property</th><th>
Description</th></tr>
<tr>
<td>
AutoScroll</td><td>
Specifies the value indicating whether a container allows the user to scroll any control placed outside of it's visible 
boundaries.</td></tr>
<tr>
<td>
AutoScrollMargin</td><td>
Gets / sets the size of the AutoScroll margin.</td></tr>
<tr>
<td>
AutoScrollMinSize</td><td>
Gets /sets the minimum size of the AutoScroll.</td></tr>
</table>


{% highlight C# %}  

this.xpTaskBar1.AutoScroll = true;

this.xpTaskBar1.AutoScrollMargin = new System.Drawing.Size(5, 5);

this.xpTaskBar1.AutoScrollMinSize = new System.Drawing.Size(3, 3);

{% endhighlight %}



{% highlight vbnet %} 

Me.xpTaskBar1.AutoScroll = True

Me.xpTaskBar1.AutoScrollMargin = New System.Drawing.Size(5, 5)

Me.xpTaskBar1.AutoScrollMinSize = New System.Drawing.Size(3, 3)

{% endhighlight %}


The following screen shot illustrates the above settings.

 ![](Overview_images/Overview_img105.jpeg) 