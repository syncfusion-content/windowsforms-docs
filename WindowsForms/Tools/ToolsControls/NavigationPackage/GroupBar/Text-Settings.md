---
layout: post
title: Text Settings 
description: Text Settings 
platform: windowsforms
control: GroupBar
documentation: ug
---
# Text Settings 

This section describes how text alignment can be done for the GroupBar Items.

### Through Designer 

The TextAlign property specifies the horizontal alignment of the GroupBar Item text. The text can be aligned to the Center, Left and Right. The default alignment is set to Center.

![](Overview_images/Overview_img17.jpeg) 
Figure : GroupBar with TextAlign = "Left"

### Through Code

{% highlight C# %}  

this.groupBar1.TextAlign = Syncfusion.Windows.Forms.Tools.TextAlignment.Left;

{% endhighlight %}



{% highlight vbnet %} 

Me.groupBar1.TextAlign = Syncfusion.Windows.Forms.Tools.TextAlignment.Left

{% endhighlight %} 


### In-Place Renaming

Users are allowed to rename GroupBar Items at run-time using the code snippet given below.

{% highlight C# %}  

// index: index of the GroupBar Item to be renamed.

this.groupBar1.InplaceRenameItem(index);

{% endhighlight %}



{% highlight vbnet %} 

' index: index of the GroupBar Item to be renamed.

Me.groupBar1.InplaceRenameItem(index)

{% endhighlight %}


The method associated with this property is given below.

_Table_ _542__: Method Table_

<table>
<tr>
<td>
Method</td><td>
Description</td></tr>
<tr>
<td>
CancelInplaceRenameItem</td><td>
Cancels an in-place edit that is in progress.</td></tr>
</table>