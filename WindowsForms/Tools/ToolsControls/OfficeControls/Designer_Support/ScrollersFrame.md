---
layout: post
title: ScrollersFrame
description: ScrollersFrame
platform: Windows Forms
control: Tools 
documentation: ug
---

# ScrollersFrame

The ScrollersFrame control attaches Office2007 Style scrollbars to any scrollable control or container. 

![](Designer_images/designer_img107.png)



### Attaching Scrollbar to a Control

To the Windows form, add a control, which should be attached with the Office2007Style scrollbars. Select the control in the ScrollersFrame.AttachedTo property.

![](Designer_images/designer_img108.png)



{% highlight c# %}



//Attaching Scrolls using AttachedTo property

this.scrollersFrame1.AttachedTo = this.treeViewAdv1;

{% endhighlight %}

{% highlight vbnet %}



'Attaching Scrolls using AttachedTo property

Me.scrollersFrame1.AttachedTo = Me.treeViewAdv1

{% endhighlight %}

> Note: This property lists all the controls that are added to the form. User can the select any one control, for which scrolls needs to be attached.

## Adding Controls to the ScrollBar

There are two collection properties available for the ScrollersFrame which lets you add controls before or after the scrollbars. They are ControlsAfter and ControlsBefore properties.

{% highlight c# %}



//Adding controls to the scrolls through ControlsAfter or ControlsBefore

this.scrollersFrame2.HorizontalScroller.ControlsBefore.Add(buttonAdv3);

this.scrollersFrame2.VerticalScroller.ControlsAfter.Add(buttonAdv1);

this.scrollersFrame2.VerticalScroller.ControlsAfter.Add(buttonAdv2);

{% endhighlight %}

{% highlight vbnet %}



'Adding controls to the scrolls through ControlsAfter or ControlsBefore 

Me.scrollersFrame2.HorizontalScroller.ControlsBefore.Add(buttonAdv3)

Me.scrollersFrame2.VerticalScroller.ControlsAfter.Add(buttonAdv1)

Me.scrollersFrame2.VerticalScroller.ControlsAfter.Add(buttonAdv2)

{% endhighlight %}


The below images illustrates the controls that are added, before and after the scrolls.

![](Designer_images/designer_img109.png)



### See Also

[Visual Styles](http://help.syncfusion.com/ug/windows%20forms/index.html#!Documents/visualstyles10.htm)

## Scroll Settings in ScrollersFrame

The horizontal and vertical scrollers has Value property, which represents the current position of the scrollbox on the scroll bar control at runtime. This value can be changed using the HorizontalSmallChange and VerticalSmallChange properties.

_Table_ _776_: Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
HorizontalSmallChange</td><td>
Gets / sets a value to be added or subtracted from the Value Property, when horizontal scroll box is moved a small distance. Default value is 1.</td></tr>
<tr>
<td>
VerticallSmallChange</td><td>
Gets / sets a value to be added or subtracted from the Value Property, when vertical scroll box is moved a small distance. Default value is 1.</td></tr>
</table>


{% highlight c# %}



this.scrollersFrame2.VerticallSmallChange = 25;

this.scrollersFrame2.HorizontalSmallChange = 25;

{% endhighlight %}

{% highlight vbnet %}



Me.scrollersFrame2.VerticallSmallChange = 25

Me.scrollersFrame2.HorizontalSmallChange  = 25

{% endhighlight %}

## Visual Styles 

Visual Styles for the ScrollersFrame Control can be edited through VisualStyle property.	

_Table_ _777_: Property Table

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
VisualStyle</td><td>
Sets the visual style for the scrollbars. The visual styles supported are,Classic,WindowsXP,Office2007 andOffice2007Generic.</td></tr>
<tr>
<td>
OfficeColorSchemes</td><td>
Sets the office color schemes for the scrollbars when VisualStyle is set to Office2007 or Office2007Generic style. The color schemes are,Blue,Silver and Black.</td></tr>
</table>


{% highlight c# %}



this.scrollersFrame1.VisualStyle = Syncfusion.Windows.Forms.ScrollBarCustomDrawStyles.Office2007;

{% endhighlight %}

{% highlight vbnet %}

Me.scrollersFrame1.VisualStyle = Syncfusion.Windows.Forms.ScrollBarCustomDrawStyles.Office2007

{% endhighlight %}

![](Designer_images/designer_img110.png)



{% highlight c# %}

this.scrollersFrame1.OfficeColorScheme = Syncfusion.Windows.Forms.Office2007ColorScheme.Silver;

{% endhighlight %}

{% highlight vbnet %}

Me.scrollersFrame1.OfficeColorScheme = Syncfusion.Windows.Forms.Office2007ColorScheme.Silver

{% endhighlight %}

![](Designer_images/designer_img111.png)



![](Designer_images/designer_img112.png)



### Custom Colors

We can also apply custom colors to the ScrollersFrame by setting OfficeColorScheme to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.

{% highlight c# %}



this.scrollersFrame1.OfficeColorScheme = Syncfusion.Windows.Forms.Office2007ColorScheme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.LightSkyBlue);

{% endhighlight %}

{% highlight vbnet %}



Me.scrollersFrame1.OfficeColorScheme = Syncfusion.Windows.Forms.Office2007ColorScheme.Managed

Office2007Colors.ApplyManagedColors(Me, Color.LightSkyBlue)

{% endhighlight %}

![](Designer_images/designer_img113.png)



### See Also

[Adding Controls to the ScrollBar](http://help.syncfusion.com/ug/windows%20forms/index.html#!Documents/addingcontrolstothescrollbar.htm)