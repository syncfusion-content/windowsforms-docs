---
layout: post
title: GroupBar Settings | WindowsForms | Syncfusion
description: GroupBar Settings
platform: WindowsForms
control: GroupBar
documentation: ug
---
# GroupBar settings

The look and feel of the GroupBar can be controlled through the appearance properties of the control. These properties are discussed in detail in the below topics.

## Integrated scrolling

Scroll buttons can be included for the client controls in the GroupBar by setting the IntegratedScrolling property to 'True'.



<table>
<tr>
<th>
GroupBar property</th><th>
Description</th></tr>
<tr>
<td>
IntegratedScrolling</td><td>
Draws a set of scroll thumbs on the GroupBar. This mode is used for creating a VS.NET toolbox type interface where the GroupBar provides the scrolling support for the GroupView client controls.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

this.groupBar1.IntegratedScrolling = true;

{% endhighlight %}



{% highlight VB %} 

Me.groupBar1.IntegratedScrolling = True 

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img11.jpeg) 



## StackedGroupBar

The following are the properties available for GroupBar Items when the GroupBar is in the Stacked Mode. The Stacked Mode can be enabled by setting the StackedMode property to 'True'.



<table>
<tr>
<th>
GroupBarItem property</th><th>
Description</th></tr>
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
Gets/sets the image representing the GroupBar's item in the navigation pane.</td></tr>
<tr>
<td>
ShowChevron</td><td>
Gets/sets the value indicating whether the chevron button on the navigation panel is shown or not.</td></tr>
</table>

{% tabs %}

{% highlight C# %}  

// StackeMode set to true.

this.groupBarItem1.InNavigationPane = true;

this.groupBarItem1.NavigationPaneIcon = ((System.Drawing.Icon)(resources.GetObject("groupBarItem1.NavigationPaneIcon")));

this.groupBarItem1.NavigationPaneImage = ((System.Drawing.Image)(resources.GetObject("groupBarItem1.NavigationPaneImage")));

{% endhighlight %}


{% highlight VB %}

' StackeMode set to true.

Me.groupBarItem1.InNavigationPane = True

Me.groupBarItem1.NavigationPaneIcon = DirectCast((Resources.GetObject("groupBarItem1.NavigationPaneIcon")), System.Drawing.Icon)

Me.groupBarItem1.NavigationPaneImage = DirectCast((Resources.GetObject("groupBarItem1.NavigationPaneImage")), System.Drawing.Image)

{% endhighlight %}

{% endtabs %}

If you want to display an icon or image for the GroupBar Item displayed in the GroupBar's navigation pane, set the InNavigationPane property to 'True' and associate icons or images with the NavigationPaneIcon and NavigationPaneImage 
properties respectively.

 ![](Overview_images/Overview_img12.jpeg) 


Stacked GroupBar Item automatically shows the Chevron, which can be made invisible by setting the ShowChevron property to 'False'.

![](Overview_images/Overview_img13.jpeg)


N> You should set LargeImageMode of GroupBarItem to 'True' to display the item images in the GroupBar's navigation pane.

### Navigation pane

The following table lists the properties related to the Navigation Pane.



<table>
<tr>
<th>
GroupBar property</th><th>
Description</th></tr>
<tr>
<td>
NavigationPaneButtonWidth</td><td>
Specifies the width of the GroupBar Items displayed in the navigation pane. This property will be available only when StackedMode property is set to 'True'.</td></tr>
<tr>
<td>
NavigationPaneHeight</td><td>
Specifies the height of the GroupBar Navigation pane. This property will be available only when StackedMode property is set to 'True'.</td></tr>
</table>

{% tabs %}

{% highlight C# %}  


// StackeMode set to true.

this.groupBar1.NavigationPaneButtonWidth = 25;

this.groupBar1.NavigationPaneHeight = 35;

{% endhighlight %}


{% highlight VB %} 

' StackeMode set to true.

Me.groupBar1.NavigationPaneButtonWidth = 25

Me.groupBar1.NavigationPaneHeight = 35

{% endhighlight %}

{% endtabs %}

The Navigation Pane is displayed when the GroupBar is in the Stacked Mode. It's height and width can be adjusted by setting the NavigationPaneButtonWidth and NavigationPaneHeight properties to integer values.

 ![](Overview_images/Overview_img15.jpeg)
 

 
## Collapse/expand settings

This section discusses settings of a groupbar in its collapsed state.

N> AllowCollapse property should be set to true to effect the below settings.
 

<table>
<tr>
<th>
GroupBarItem property</th><th>
Description</th></tr>
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

{% tabs %}

{% highlight C# %}

this.groupBar1.AllowCollapse = true;

this.groupBar1.Collapsed = true;

this.groupBar1.CollapsedText = "Navigation Pane";

this.groupBar1.CollapsedWidth = 45;

{% endhighlight %}



{% highlight VB %} 

Me.groupBar1.AllowCollapse = True

Me.groupBar1.Collapsed = True

Me.groupBar1.CollapsedText = "Navigation Pane"

this.groupBar1.CollapsedWidth = 45;

{% endhighlight %}

{% endtabs %}

### Image for collapse/expand states

The below properties set images for the collapse button based on the button states.

_

<table>
<tr>
<th>
GroupBarItem property</th><th>
Description</th></tr>
<tr>
<td>
CollapseImage</td><td>
Gets or sets the image of the collapse button in expanded state.</td></tr>
<tr>
<td>
ExpandImage</td><td>
Gets or sets the image of the collapse button.</td></tr>
</table>

{% tabs %}

{% highlight C# %}  

this.groupBar1.CollapseImage = ((System.Drawing.Image)(resources.GetObject("groupBar1.CollapseImage")));

this.groupBar1.ExpandImage = ((System.Drawing.Image)(resources.GetObject("groupBar1.ExpandImage")));

{% endhighlight %}


{% highlight VB %} 

Me.groupBar1.CollapseImage = DirectCast((resources.GetObject("groupBar1.CollapseImage")), System.Drawing.Image) 

Me.groupBar1.ExpandImage = DirectCast((resources.GetObject("groupBar1.ExpandImage")), System.Drawing.Image) 

{% endhighlight %}

{% endtabs %}