---
layout: post
title: Collapse / Expand Settings
description: Collapse / Expand Settings
platform: windowsforms
control: Navigation Package
documentation: ug
---
## Collapse / Expand Settings

This section discusses settings of a groupbar in its collapsed state. 

 _Note: AllowCollapse property should be set to true to effect the below settings._
 
Table 540: Property Table
<table>
<tr>
<td>
GroupBarItem Property</td><td>
Description</td></tr>
<tr>
<td>
Collapsed</td><td>
Indicates whether this groupbar is collapsed.</td></tr>
<tr>
<td>
CollapsedText</td><td>
Gets or sets the text in collapsed client area of the groupbar.</td></tr>
<tr>
<td>
CollapsedWidth</td><td>
Indicates the width of the collapsed GroupBar.</td></tr>
</table>


{% highlight C# %}  

this.groupBar1.AllowCollapse = true;

this.groupBar1.Collapsed = true;

this.groupBar1.CollapsedText = "Navigation Pane";

this.groupBar1.CollapsedWidth = 45;

{% endhighlight %}



{% highlight vbnet %} 

Me.groupBar1.AllowCollapse = True

Me.groupBar1.Collapsed = True

Me.groupBar1.CollapsedText = "Navigation Pane"

this.groupBar1.CollapsedWidth = 45;

{% endhighlight %}


#### Image for collapse / Expand States

The below properties set images for the collapse button based on the button states.

_Table_ _541__: Property Table_

<table>
<tr>
<td>
GroupBarItem Property</td><td>
Description</td></tr>
<tr>
<td>
CollapseImage</td><td>
Gets or sets the image of the collapse button in expanded state.</td></tr>
<tr>
<td>
ExpandImage</td><td>
Gets or sets the image of the collapse button.</td></tr>
</table>


{% highlight C# %}  

this.groupBar1.CollapseImage = ((System.Drawing.Image)(resources.GetObject("groupBar1.CollapseImage")));

this.groupBar1.ExpandImage = ((System.Drawing.Image)(resources.GetObject("groupBar1.ExpandImage")));

{% endhighlight %}


{% highlight vbnet %} 

Me.groupBar1.CollapseImage = DirectCast((resources.GetObject("groupBar1.CollapseImage")), System.Drawing.Image) 

Me.groupBar1.ExpandImage = DirectCast((resources.GetObject("groupBar1.ExpandImage")), System.Drawing.Image) 

{% endhighlight %}
