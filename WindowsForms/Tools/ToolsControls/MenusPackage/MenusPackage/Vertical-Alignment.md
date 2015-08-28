---
layout: post
title: Vertical Alignment
description: Vertical Alignment
platform: windowsforms
control: Menus Package 
documentation: ug
---
# Vertical Alignment:

The following image illustrates how the parent bar items are displayed in vertical alignment.

![office2003](Overview_images/Overview_img172.png)



## API Details:

_Table515: Property Table_

<table>
<tr>
<th>
 Property<br><br></th><th>
 Type<br><br></th><th>
 Description<br><br></th></tr>
<tr>
<td>
 Orientation<br><br></td><td>
enum</td><td>
Gets or sets the text alignment of ParentBarItem in MainframeBarManager.</td></tr>
</table>


The following code example shows how to set the vertical and horizontal text alignment.




{% highlight c# %}
// To set Vertical text alignment.

this.parentBarItem1.Orientation= Syncfusion.Windows.Forms.Tools.XPMenus.Orientation.Vertical;



// To set Horizontal text alignment.

this.parentBarItem1. Orientation=Syncfusion.Windows.Forms.Tools.XPMenus.Orientation.Vertical;


{% endhighlight  %}


{% highlight vbnet %}



// To set Vertical text alignment.

Me.parentBarItem1. Orientation= Syncfusion.Windows.Forms.Tools.XPMenus. Orientation.Vertical



// To set Horizontal text alignment.

Me.parentBarItem1. Orientation= Syncfusion.Windows.Forms.Tools.XPMenus. Orientation.Vertical


{% endhighlight  %}
