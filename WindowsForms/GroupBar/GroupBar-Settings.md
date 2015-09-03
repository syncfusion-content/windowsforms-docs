---
layout: post
title: GroupBar Settings
description: GroupBar Settings
platform: windowsforms
control: GroupBar
documentation: ug
---
# GroupBar Settings

The look and feel of the GroupBar can be controlled through the appearance properties of the control. These properties are 
discussed in detail in the below topics.

## Integrated Scrolling

Scroll buttons can be included for the client controls in the GroupBar by setting the IntegratedScrolling propertyto 'True'.

_Table_ _537__: Property Table_

<table>
<tr>
<td>
GroupBar Property</td><td>
Description</td></tr>
<tr>
<td>
IntegratedScrolling</td><td>
Draws a set of scroll thumbs on the GroupBar. This mode is used for creating a VS.NET toolbox type interface where the GroupBar provides the scrolling support for the GroupView client controls.</td></tr>
</table>


{% highlight C# %}  

this.groupBar1.IntegratedScrolling = true;

{% endhighlight %}



{% highlight vbnet %} 

Me.groupBar1.IntegratedScrolling = True 

{% endhighlight %}

![](Overview_images/Overview_img11.jpeg) 
Figure 924: GroupBar with Integrated Scrolling


## StackedGroupBar 

The following are the properties available for GroupBar Items when the GroupBar is in the Stacked Mode. The Stacked Mode can be 
enabled by setting the StackedMode property to 'True'.

_Table_ _538__: Property Table_

<table>
<tr>
<td>
GroupBarItem Property</td><td>
Description</td></tr>
<tr>
<td>
InNavigationPane</td><td>
Specifies the value which determines whether the GroupBar Item should be added to the GroupBar's navigation pane or not.</td></tr>
<tr>
<td>
NavigationPaneIcon</td><td>
The icon representing the GroupBar's item in the navigation pane.</td></tr>
<tr>
<td>
NavigationPaneImage</td><td>
Gets / sets the image representing the GroupBar's item in the navigation pane.</td></tr>
<tr>
<td>
ShowChevron</td><td>
Gets / sets the value indicating whether the chevron button on the navigation panel is shown or not.</td></tr>
</table>


{% highlight C# %}  

// StackeMode set to true.

this.groupBarItem1.InNavigationPane = true;

this.groupBarItem1.NavigationPaneIcon = ((System.Drawing.Icon)(resources.GetObject("groupBarItem1.NavigationPaneIcon")));

this.groupBarItem1.NavigationPaneImage = ((System.Drawing.Image)(resources.GetObject("groupBarItem1.NavigationPaneImage")));

{% endhighlight %}


{% highlight vbnet %} 

' StackeMode set to true.

Me.groupBarItem1.InNavigationPane = True

Me.groupBarItem1.NavigationPaneIcon = DirectCast((Resources.GetObject("groupBarItem1.NavigationPaneIcon")), System.Drawing.Icon)

Me.groupBarItem1.NavigationPaneImage = DirectCast((Resources.GetObject("groupBarItem1.NavigationPaneImage")), System.Drawing.Image)

{% endhighlight %}


If you want to display an icon or image for the GroupBar Item displayed in the GroupBar's navigation pane, set the 
InNavigationPane property to 'True' and associate icons or images with the NavigationPaneIcon and NavigationPaneImage 
properties respectively.

 ![](Overview_images/Overview_img12.jpeg) 
Figure 925: StackedGroupBar with GroupBar Items in its Navigation Pane

Stacked GroupBar Item automatically shows the Chevron, which can be made invisible by setting the ShowChevron property to 
'False'.

![](Overview_images/Overview_img13.jpeg)
Figure 926: Chevron shown when GroupBar is in Stacked Mode

 _Note : You should set LargeImageMode of GroupBarItem to 'True' to display the item images in the GroupBar's navigation pane._

### Navigation Pane

The following table lists the properties related to the Navigation Pane.

_Table_ _539__: Property Table_

<table>
<tr>
<td>
GroupBar Property</td><td>
Description</td></tr>
<tr>
<td>
NavigationPaneButtonWidth</td><td>
Specifies the width of the GroupBar Items displayed in the navigation pane. This property will be available only when StackedMode property is set to 'True'.</td></tr>
<tr>
<td>
NavigationPaneHeight</td><td>
Specifies the height of the GroupBar Navigation pane. This property will be available only when StackedMode property is set to 'True'.</td></tr>
</table>


{% highlight C# %}  


// StackeMode set to true.

this.groupBar1.NavigationPaneButtonWidth = 25;

this.groupBar1.NavigationPaneHeight = 35;

{% endhighlight %}


{% highlight vbnet %} 

' StackeMode set to true.

Me.groupBar1.NavigationPaneButtonWidth = 25

Me.groupBar1.NavigationPaneHeight = 35

{% endhighlight %}

The Navigation Pane is displayed when the GroupBar is in the Stacked Mode. It's height and width can be adjusted by setting the NavigationPaneButtonWidth and NavigationPaneHeight properties to integer values.

 ![](Overview_images/Overview_img15.jpeg) 
 
 Figure 927: GroupBar with NavigationPaneButtonWidth = "25" and NavigationPaneHeight = "35"
 
## Collapse / Expand Settings

This section discusses settings of a groupbar in its collapsed state. 

> _Note: AllowCollapse property should be set to true to effect the below settings._
 
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


### Image for collapse / Expand States

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