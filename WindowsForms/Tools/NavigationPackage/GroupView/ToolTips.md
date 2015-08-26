---
layout: post
title: ToolTips
description: Concepts and Features
platform: windowsforms
control: Navigation Package
documentation: ug
---
## ToolTips

The ToolTipText property of the GroupView control can be used to set the text of the tooltip. The ShowToolTips property must be set to 'True' in order to make the tooltip visible.

_Table_ _576__: Property Table_

<table>
<tr>
<td>
GroupView Property</td><td>
Description</td></tr>
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
Figure 988: ToolTip displayed for "Copy" Item