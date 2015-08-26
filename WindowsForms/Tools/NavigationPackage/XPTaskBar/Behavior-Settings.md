---
layout: post
title: Behavior Settings 
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---
## Behavior Settings 

This section discusses the behavior settings of the XPTaskBar.

_Table_ _579__: Property Table_

<table>
<tr>
<td>
XPTaskBar Property</td><td>
Description</td><td>
Type of Property</td><td>
Value It Accepts</td><td>
Property Syntax</td><td>
Sub Properties</td><td>
More Information</td></tr>
<tr>
<td>
AllowDrop</td><td>
Gets / sets a value indicating whether the control can accept data that the user drags on it.</td><td>
Normal</td><td>
Boolean[true/false]</td><td>
Public Property AllowDrop As Booleanthis.xpTaskBar1.AllowDrop = true;</td><td>
-</td><td>
-</td></tr>
<tr>
<td>
AutoPersistStates</td><td>
Specifies whether to automatically persist the collapsed state of the child boxes.</td><td>
Normal</td><td>
Boolean[true/false]</td><td>
Public Property AutoPersistStates As Booleanthis.xpTaskBar1.AutoPersistStates = true;</td><td>
No</td><td>
The expanded states of the child task bar boxes are cached as the users expands/collapses them, when this property is true. The cached state is persisted in the Isolated Storage, when this control is disposed.If the child task bar boxes are added to this control, the saved state is reapplied on the task bar boxes, when the application loads again.State is saved in the Isolated Storage of the system, scoped by the current user identity.You can control the persistent store and/or the time of persistence using LoadBoxExpandedStates() and SaveBoxExpandedStates() methods.</td></tr>
<tr>
<td>
VerticalLayout</td><td>
Gets / sets the value which determines whether the TaskBar Boxes should be aligned vertically or horizontally in the XPTaskBar control. The default layout is Vertical.</td><td>
Normal</td><td>
Boolean[true/false]</td><td>
Public Property VerticalLayout As Booleanthis.xpTaskBar1.VerticalLayout = true;</td><td>
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
Figure 1004: Vertical Layout of XPTaskBar

![](Overview_images/Overview_img104.jpeg)
Figure 1005: Horizontal Layout of XPTaskBar with ColumnWidthOnHorizontalAlignment property set to "100"
