---
layout: post
title: Getting Started with Windows Forms ScrollersFrame | Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms ScrollersFrame control, its elements and more details.
platform: WindowsForms
control: ScrollersFrame
documentation: ug
---

# Getting Started with Windows Forms ScrollersFrame

This section explains attaching the ScrollersFrame to the controls and its basic functionalities.

## Assembly deployment

The following assembly should be added as reference to use the ScrollersFrame in any application.

<table>
<tr>
<th>
Required assembly<br/><br/></th><th>
Description<br/><br/></th></tr>
<tr>
<td>
{{'[Syncfusion.Shared.Base](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.html)'| markdownify }}<br/><br/></td><td>
Contains style related properties and functionalities for the ScrollersFrame. <br/><br/></td></tr>
</table>

## Attach ScrollersFrame to control

Add a control to the Windows Forms that should be attached with the Office2007Style scrollbars. Select the control in the [ScrollersFrame.AttachedTo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.ScrollersFrame.html#Syncfusion_Windows_Forms_ScrollersFrame_AttachedTo) property.

![Winforms showing the attached office2007style scrollbars in scrollframe](ScrollersFrame_images/ScrollersFrame_img2.jpeg)

{% tabs %}
{% highlight c# %}
//Attaching Scrolls using AttachedTo property
this.scrollersFrame1.AttachedTo = this.treeViewAdv1;
{% endhighlight %}
{% highlight vb %}
'Attaching Scrolls using AttachedTo property
Me.scrollersFrame1.AttachedTo = Me.treeViewAdv1
{% endhighlight %}
{% endtabs %}

N> This property lists all the controls added to the form. User can select any one control, for which scrolls should be attached.

## Adding controls to the scrollbar

The ControlsAfter and ControlsBefore collection properties are available for the ScrollersFrame that lets you add controls before or after the scrollbars.

{% tabs %}
{% highlight c# %}
//Adding controls to the scrolls through ControlsAfter or ControlsBefore
this.scrollersFrame2.HorizontalScroller.ControlsBefore.Add(buttonAdv3);
this.scrollersFrame2.VerticalScroller.ControlsAfter.Add(buttonAdv1);
this.scrollersFrame2.VerticalScroller.ControlsAfter.Add(buttonAdv2);
{% endhighlight %}
{% highlight vb %}
'Adding controls to the scrolls through ControlsAfter or ControlsBefore 
Me.scrollersFrame2.HorizontalScroller.ControlsBefore.Add(buttonAdv3)
Me.scrollersFrame2.VerticalScroller.ControlsAfter.Add(buttonAdv1)
Me.scrollersFrame2.VerticalScroller.ControlsAfter.Add(buttonAdv2)
{% endhighlight %}
{% endtabs %}

![Winforms showing the added control in scrollframe](ScrollersFrame_images/ScrollersFrame_img4.jpeg)

## Programmatic scrolling

The horizontal and vertical scrollers has `Value` property that represents the current position of the scroll box on the scrollbar control at runtime. This value can be changed using the `HorizontalSmallChange` and `VerticalSmallChange` properties.

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
HorizontalSmallChange</td><td>
Gets or sets a value to be added or subtracted from the <code>Value</code> Property, when the horizontal scroll box is moved a small distance. Default value is 1.</td></tr>
<tr>
<td>
VerticalSmallChange</td><td>
Gets or sets a value to be added or subtracted from the <code>Value</code> Property, when the vertical scroll box is moved a small distance. Default value is 1.</td></tr>
</table>

{% tabs %}
{% highlight c# %}
this.scrollersFrame2.VerticalSmallChange = 25;
this.scrollersFrame2.HorizontalSmallChange = 25;
{% endhighlight %}
{% highlight vb %}
Me.scrollersFrame2.VerticalSmallChange = 25
Me.scrollersFrame2.HorizontalSmallChange  = 25
{% endhighlight %}
{% endtabs %}

## Visual Styles

Visual Styles for the ScrollersFrame control can be edited through the `VisualStyle` property.	

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
VisualStyle</td><td>
Sets the visual style for the scrollbars. Supported visual styles are Classic, WindowsXP, Office2007, Office2007Generic, and Office2016.</td></tr>
<tr>
<td>
OfficeColorSchemes</td><td>
Sets the Office color schemes for the scrollbars when VisualStyle is set to Office2007 or Office2007Generic style. The color schemes are, blue, silver, and black.</td></tr>
<tr>
<td>
Office2016ColorSchemes
</td>
<td>
Sets the Office2016 color schemes for the scrollbars when setting the VisualStyle to Office2016 style. The color schemes are black, white, colorful, and dark gray.
</td>
</tr>
</table>

{% tabs %}
{% highlight c# %}
this.scrollersFrame1.VisualStyle = Syncfusion.Windows.Forms.ScrollBarCustomDrawStyles.Office2007;
{% endhighlight %}
{% highlight vb %}
Me.scrollersFrame1.VisualStyle = Syncfusion.Windows.Forms.ScrollBarCustomDrawStyles.Office2007
{% endhighlight %}
{% endtabs %}

![Winforms showing the visual style applied the office2007 in scrollframe](ScrollersFrame_images/ScrollersFrame_img5.jpeg)

{% tabs %}
{% highlight c# %}
this.scrollersFrame1.OfficeColorScheme = Syncfusion.Windows.Forms.Office2007ColorScheme.Silver;
{% endhighlight %}
{% highlight vb %}
Me.scrollersFrame1.OfficeColorScheme = Syncfusion.Windows.Forms.Office2007ColorScheme.Silver
{% endhighlight %}
{% endtabs %}

![Winforms showing the visual style applied the office2007colorschem in scrollframe](ScrollersFrame_images/ScrollersFrame_img6.jpeg)

![Winforms showing the visual style applied the office2007colorschem in scrollframe](ScrollersFrame_images/ScrollersFrame_img7.jpeg)

### Custom colors

You can also apply custom colors to the ScrollersFrame by setting the OfficeColorScheme to `Managed` and specify the custom color through the `ApplyManagedColors` method.

{% tabs %}
{% highlight c# %}
this.scrollersFrame1.OfficeColorScheme = Syncfusion.Windows.Forms.Office2007ColorScheme.Managed;
Office2007Colors.ApplyManagedColors(this, Color.LightSkyBlue);
{% endhighlight %}
{% highlight vb %}
Me.scrollersFrame1.OfficeColorScheme = Syncfusion.Windows.Forms.Office2007ColorScheme.Managed
Office2007Colors.ApplyManagedColors(Me, Color.LightSkyBlue)
{% endhighlight %}
{% endtabs %}

![Winforms showing the custom color in scrollframe](ScrollersFrame_images/ScrollersFrame_img8.jpeg)
