---
layout: post
title: Scrolling in Windows Forms Diagram control | Syncfusion®
description: Learn about Scrolling support in Syncfusion® Windows Forms Diagram control, its elements and more details.
platform: windowsforms
control: Diagram
documentation: ug
---


# Scrolling in Windows Forms Diagram

The interactive features like scrolling, zooming and panning support are discussed in this section:

### Scroll Support

The horizontal and vertical scrollbars can be displayed or hidden by handling the HScroll and VScroll properties.

Scroll Support

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
HScroll</td><td>
Specifies whether to display the horizontal scroll bar.</td></tr>
<tr>
<td>
VScroll</td><td>
Specifies whether to display the vertical scroll bar.</td></tr>
</table>


Programmatically, these properties can be set as follows.


{% tabs %}
{% highlight c# %}

this.diagram1.HScroll = true;
this.diagram1.VScroll = true;

{% endhighlight %}
{% highlight vb %}

Me.diagram1.HScroll = True
Me.diagram1.VScroll = True

{% endhighlight %}
{% endtabs %}

Sample diagram is as follows,



![Scrolling_img1](Scrolling_images/Scrolling_img1.jpeg)


ScrollGranularity determines the level of granularity for scrolling. The value of this property must be greater than 0. This value is multiplied by virtual size of the view in order to get the scroll range. For example, if the virtual size of the view is 100x50 and this property is set to 0.5f, then the horizontal scroll range is set to 0.50 and the vertical scroll range is set to 0.25.

SmoothMouseWheelScrolling specifies whether the control should perform one scroll command (faster) or if it should perform multiple scroll commands with smaller increments (smoother) when user rolls mouse wheel.



Properties

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
EnableIntelliMouse</td><td>
Toggles support for Intelli-Mouse panning. When the user presses the middle-mouse button and drags the mouse, the window will scroll.</td></tr>
<tr>
<td>
ScrollGranularity</td><td>
Specifies the level of granularity for scrolling. This value is to scale the scroll range of the scrollbars.</td></tr>
<tr>
<td>
SmoothMouseWheelScrolling</td><td>
Specifies whether the control should perform one scroll command (faster) or if it should perform multiple scroll commands with smaller increments (smoother) when user rolls mouse wheel.</td></tr>
<tr>
<td>
HScrollBar</td><td>
Returns a reference to an object with horizontal scrollbar settings of the control.</td></tr>
</table>


Programmatically these properties can be set as follows.


{% tabs %}
{% highlight c# %}

this.diagram1.EnableIntelliMouse = true;
this.diagram1.ScrollGranularity = .9F;
this.diagram1.SmoothMouseWheelScrolling = false;
this.diagram1.HScrollBar.SmallChange = 200;

{% endhighlight %}
{% highlight vb %}

Me.diagram1.EnableIntelliMouse = True
Me.diagram1.ScrollGranularity = .9F
Me.diagram1.SmoothMouseWheelScrolling = False
Me.diagram1.HScrollBar.SmallChange = 200

{% endhighlight %}
{% endtabs %}


![Scrolling_img2](Scrolling_images/Scrolling_img2.jpeg)





#### Scrollable Area

Diagram has ScrollVirtualBounds property, which determines the bounds of the scrollable area. This sets the Diagram control's virtual space i.e, gray area around the control. Sometimes, we may need to remove that area and use Diagram control area alone.


{% tabs %}
{% highlight c# %}
	
	this.diagram1.ScrollVirtualBounds = new RectangleF(0, 0, 0, 0);

{% endhighlight %}
{% highlight vb %}

	Me.diagram1.ScrollVirtualBounds = New RectangleF(0, 0, 0, 0)

{% endhighlight %}
{% endtabs %}

![Scrolling_img3](Scrolling_images/Scrolling_img3.jpeg)





#### Scroll Behavior

Scrolling behavior can be controlled by setting the AccelerateScrolling property.



Scroll Behavior

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
AccelerateScrolling</td><td>
Specifies the scrolling behavior. The options included are as follows:* None* Default* Fast* Immediate</td></tr>
<tr>
<td>
<br>AllowIncreaseSmallChange</td><td>
Specifies if the scroll control can increase the ScrollBar.SmallChange property during accelerated scrolling.</td></tr>
</table>


Here, setting the AccelerateScrolling to Fast, will increase the scroll speed when the horizontal or vertical thumb is pressed continuously.


{% tabs %}
{% highlight c# %}

this.diagram1.AccelerateScrolling = Syncfusion.Windows.Forms.AccelerateScrollingBehavior.Fast;
this.diagram1.AllowIncreaseSmallChange = true;

{% endhighlight %}
{% highlight vb %}

Me.diagram1.AccelerateScrolling = Syncfusion.Windows.Forms.AccelerateScrollingBehavior.Fast
Me.diagram1.AllowIncreaseSmallChange = True

{% endhighlight %}
{% endtabs %}

#### ThumbTrack

The HorizontalThumbTrack and VerticalThumbTrack properties allows to handle whether the scroll bar thumb should be used for scrolling.

ThumbTrack

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
HorizontalThumbTrack</td><td>
Specifies if the control should scroll while the user is dragging a horizontal scrollbar thumb.</td></tr>
<tr>
<td>
VerticalThumbTrack</td><td>
Specifies if the control should scroll while the user is dragging a vertical scrollbar thumb.</td></tr>
</table>


Programmatically, these properties can be set as follows.


{% tabs %}
{% highlight c# %}

this.diagram1.HorizontalThumbTrack = true;
this.diagram1.VerticalThumbTrack = true;

{% endhighlight %}
{% highlight vb %}

Me.diagram1.HorizontalThumbTrack = True
Me.diagram1.VerticalThumbTrack = True

{% endhighlight %}
{% endtabs %}

#### ScrollTips

ScrollTips can be enabled or disabled for horizontal and vertical scroll bars individually by setting the HorizontalScrollTips and VerticalScrollTips properties.

The format in which the ScrollTip should be displayed can be specified using the ScrollTipFormat property. The default format is 'Position{0}'.



ScrollTips

<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
HorizontalScrollTips</td><td>
Specifies whether to display the horizontal scroll bar.</td></tr>
<tr>
<td>
VerticalScrollTips</td><td>
Specifies whether to display the vertical scroll bar.</td></tr>
<tr>
<td>
ScrollTipFormat</td><td>
Specifies the format for the ScrollTip to be displayed.</td></tr>
</table>


Programmatically these properties can be set as follows.


{% tabs %}
{% highlight c# %}

	this.diagram1.HorizontalScrollTips = true;
	this.diagram1.VerticalScrollTips = true;
	this.diagram1.ScrollTipFormat = "Offset{0}";

{% endhighlight %}
{% highlight vb %}

	Me.diagram1.HorizontalScrollTips = True
	Me.diagram1.VerticalScrollTips = True
	Me.diagram1.ScrollTipFormat = "Offset{0}"

{% endhighlight %}
{% endtabs %}

#### Using Splitter control

When splitter control is used and one or more diagram controls are added, setting the FillSplitterPane docks the diagram control inside the splitter control and fills the entire space.

Splitter

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
FillSplitterPane</td><td>
Specifies whether to fill the splitter control with diagram.</td></tr>
</table>


Programmatically these properties can be set as follows.


{% tabs %}
{% highlight c# %}

	this.diagram1.FillSplitterPane = true;

{% endhighlight %}
{% highlight vb %}

	Me.diagram1.FillSplitterPane = True

{% endhighlight %}
{% endtabs %}

![Scrolling_img4](Scrolling_images/Scrolling_img4.png)
