---
layout: post
title: Getting Started with Windows Forms ScrollersFrame | Syncfusion®
description: Learn how to get started with the Syncfusion® Windows Forms ScrollersFrame control. Explore setup, features, examples, and customization options.
platform: windowsforms
control: ScrollersFrame
documentation: ug
---

# Getting Started with Windows Forms ScrollersFrame

This section explains how to attach the ScrollersFrame to controls and use its basic functionalities.

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
Contains the style-related properties and functionalities for the ScrollersFrame.<br/><br/></td></tr>
</table>

## Attach ScrollersFrame to control

Add a control to the Windows Forms that should be attached with the Office2007Style scrollbars. Select the control in the [ScrollersFrame.AttachedTo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.ScrollersFrame.html#Syncfusion_Windows_Forms_ScrollersFrame_AttachedTo) property.

![ScrollersFrame attached to a TreeViewAdv with the Office2007 scrollbar style](ScrollersFrame_images/ScrollersFrame_img2.jpeg)

{% tabs %}
{% highlight c# %}
// Attaching ScrollersFrame to a control using the AttachedTo property
this.scrollersFrame1.AttachedTo = this.treeViewAdv1;
{% endhighlight %}
{% highlight vb %}
' Attaching ScrollersFrame to a control using the AttachedTo property
Me.scrollersFrame1.AttachedTo = Me.treeViewAdv1
{% endhighlight %}
{% endtabs %}

N> The `AttachedTo` property lists all the scrollable controls added to the form. You can select any one of them to attach the ScrollersFrame.

## Adding controls to the scrollbars

The ControlsAfter and ControlsBefore collection properties are available for the ScrollersFrame that lets you add controls before or after the scrollbars.

{% tabs %}
{% highlight c# %}
// Adding controls to the scrollbars through ControlsAfter and ControlsBefore
this.scrollersFrame2.HorizontalScroller.ControlsBefore.Add(buttonAdv3);
this.scrollersFrame2.VerticalScroller.ControlsAfter.Add(buttonAdv1);
this.scrollersFrame2.VerticalScroller.ControlsAfter.Add(buttonAdv2);
{% endhighlight %}
{% highlight vb %}
' Adding controls to the scrollbars through ControlsAfter and ControlsBefore
Me.scrollersFrame2.HorizontalScroller.ControlsBefore.Add(buttonAdv3)
Me.scrollersFrame2.VerticalScroller.ControlsAfter.Add(buttonAdv1)
Me.scrollersFrame2.VerticalScroller.ControlsAfter.Add(buttonAdv2)
{% endhighlight %}
{% endtabs %}

![Controls added before and after the ScrollersFrame scrollbars](ScrollersFrame_images/ScrollersFrame_img4.jpeg)

## Programmatic scrolling

The horizontal and vertical scrollers each expose a `Value` property that represents the current position of the scroll box at runtime. This value can be changed using the `HorizontalSmallChange` and `VerticalSmallChange` properties.

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
HorizontalSmallChange</td><td>
Gets or sets a value to be added to or subtracted from the <code>Value</code> property when the horizontal scroll box is moved a small distance. Default value is 1.</td></tr>
<tr>
<td>
VerticalSmallChange</td><td>
Gets or sets a value to be added to or subtracted from the <code>Value</code> property when the vertical scroll box is moved a small distance. Default value is 1.</td></tr>
</table>

{% tabs %}
{% highlight c# %}
this.scrollersFrame2.VerticalSmallChange = 25;
this.scrollersFrame2.HorizontalSmallChange = 25;
{% endhighlight %}
{% highlight vb %}
Me.scrollersFrame2.VerticalSmallChange = 25
Me.scrollersFrame2.HorizontalSmallChange = 25
{% endhighlight %}
{% endtabs %}

## Visual Styles

Visual styles for the ScrollersFrame control can be edited through the `VisualStyle` property.

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
VisualStyle</td><td>
Sets the visual style for the scrollbars. Supported values are Classic, WindowsXP, Office2007, Office2007Generic, and Office2016.</td></tr>
<tr>
<td>
OfficeColorScheme</td><td>
Sets the Office color scheme for the scrollbars when VisualStyle is set to Office2007 or Office2007Generic. The available color schemes are, blue, silver, and black and Managed.</td></tr>
<tr>
<td>
Office2016ColorScheme</td><td>
Sets the Office 2016 color scheme for the scrollbars when VisualStyle is set to Office2016. The available color schemes are Black, White, Colorful, and DarkGray.
</table>

{% tabs %}
{% highlight c# %}
this.scrollersFrame1.VisualStyle = Syncfusion.Windows.Forms.ScrollBarCustomDrawStyles.Office2007;
{% endhighlight %}
{% highlight vb %}
Me.scrollersFrame1.VisualStyle = Syncfusion.Windows.Forms.ScrollBarCustomDrawStyles.Office2007
{% endhighlight %}
{% endtabs %}

![ScrollersFrame with the Office2007 visual style applied](ScrollersFrame_images/ScrollersFrame_img5.jpeg)

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

You can also apply custom colors to the ScrollersFrame by setting the `OfficeColorScheme` to `Managed` and specifying the custom color through the [ApplyManagedColors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Office2007Colors.html#Syncfusion_Windows_Forms_Office2007Colors_ApplyManagedColors_System_Windows_Forms_Form_System_Drawing_Color_) method.
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

![ScrollersFrame with a custom color applied through the Managed color scheme](ScrollersFrame_images/ScrollersFrame_img8.jpeg)