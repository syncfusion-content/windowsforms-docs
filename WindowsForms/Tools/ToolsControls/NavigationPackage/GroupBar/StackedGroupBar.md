---
layout: post
title: StackedGroupBar 
description: StackedGroupBar 
platform: windowsforms
control: GroupBar
documentation: ug
---
# StackedGroupBar 

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

#### Navigation Pane

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