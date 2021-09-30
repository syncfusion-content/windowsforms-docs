---
layout: post
title: Getting Started with Windows Forms RadialMenu | Syncfusion
description: Learn about Keyboard Support in Syncfusion Windows Forms RadialMenu (RadialMenu) control and more details.
platform: WindowsForms
control: RadialMenu
documentation: ug
---

# Keyboard Support in Windows Forms RadialMenu

The RadialMenu control supports key tips for radial menu items, letting users quickly access radial menu items in a few keystrokes. When a user presses the Alt key, key tips for radial menu items are displayed. Pressing a key indicated in the key tip invokes the click event of the corresponding radial menu item.

## Add Super Accelerator

Follow the steps below to add the `SuperAccelerator`

1. Drag-and-drop the `SuperAccelerator` on your form or creating the `SuperAccelerator` instance through code.

![Keyboard-Support_img2](Keyboard-Support_images/Keyboard-Support_img2.jpg)

**Through Coding**
{% tabs %}

{% highlight c# %}

    SuperAccelerator superAccelerator1 = new SuperAccelerator(this);

{% endhighlight %}

{% highlight vb %}

{% endhighlight %}

    Dim superAccelerator1 As SuperAccelerator = New SuperAccelerator(Me)

{% endtabs %}

2. To accelerate the item’s click event at run time, Press the ALT key. All the specified accelerator strings will be displayed below the items.

![Keyboard-Support_img1](Keyboard-Support_images/Keyboard-Support_img1.jpg)

3. 	Press the string in the keyboard and the corresponding item’s click event will be triggered. (Eg. If the accelerator string of Copy is X key, Press ALT key. Once all the accelerator strings are displayed, press X key the Copy item event will be triggered.)

**Through Coding**
{% tabs %}

{% highlight c# %}

    this.superAccelerator1.SetAccelerator(radialMenuItem1, "E");

    this.superAccelerator1.SetAccelerator(radialMenuItem2, "C");

    this.superAccelerator1.SetAccelerator(radialMenuItem3, "X");

    this.superAccelerator1.SetAccelerator(radialMenuItem4, "P");

{% endhighlight %}

{% highlight vb %}

    Dim superAccelerator1 As SuperAccelerator = New SuperAccelerator(Me)

    Me.superAccelerator1.SetAccelerator(radialMenuItem1, "E")
    
    Me.superAccelerator1.SetAccelerator(radialMenuItem2, "C")

    Me.superAccelerator1.SetAccelerator(radialMenuItem3, "X")

    Me.superAccelerator1.SetAccelerator(radialMenuItem4, "P")

{% endhighlight %}

{% endtabs %}

## Rule to set Accelerator

*	Do not set same string value to multiple items

## SuperAccelerator appearance

This section discusses the appearance settings of a `SuperAccelerator`.

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Gets / sets the back color for the accelerator key.</td></tr>
<tr>
<td>
Font</td><td>
Sets the Font Style for the accelerator key.</td></tr>
<tr>
<td>
ForeColor</td><td>
Sets the ForeColor for the accelerator key.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.superAccelerator1.BackColor = Color.Red;
this.superAccelerator1.ForeColor = Color.White;
this.superAccelerator1.Font = new System.Drawing.Font("Arial", 8F, FontStyle.Italic);

{% endhighlight %}

{% highlight vb %}

Me.superAccelerator1.BackColor = Color.Red
Me.superAccelerator1.ForeColor = Color.White
Me.superAccelerator1.Font = New System.Drawing.Font("Arial", 8F, FontStyle.Italic)

{% endhighlight %}

{% endtabs %}

## Style

SuperAccelerator supports visual styles such as Default, Office2016. The style can be set using `Appearance` property.

*	Default
*	Advanced
*	Office2016Colorful
*	Office2016White
*	Office2016DarkGray
*	Office2016Black

{% tabs %}

{% highlight c# %}

this.superAccelerator1.Appearance = Syncfusion.Windows.Forms.Tools.Appearance.Office2016Colorful;

{% endhighlight %}

{% highlight vb %}

Me.superAccelerator1.Appearance = Syncfusion.Windows.Forms.Tools.Appearance.Office2016Colorful

{% endhighlight %}

{% endtabs %}
