---
layout: post
title: SuperToolTip at a specified locat | WindowsForms | Syncfusion
description: Learn about How to display specified location support in Syncfusion Windows Forms SuperToolTip(Classic) control and more details.
platform: WindowsForms
control: Frequently Asked Questions
documentation: ug
---

# SuperToolTip at a specified location in Windows Forms

The Show method can be used if the ToolTip is to be displayed at a specified location and for a particular time.

## How to Display a SuperToolTip at a Specified Location?

This page explains about How to Display a SuperToolTip at a Specified Location and more details.

{% tabs %}
{% highlight c# %}

Syncfusion.Windows.Forms.Tools.SuperToolTip s1;
Syncfusion.Windows.Forms.Tools.ToolTipInfo t1;

s1 = new Syncfusion.Windows.Forms.Tools.SuperToolTip();
t1 = new Syncfusion.Windows.Forms.Tools.ToolTipInfo();
t1.BackColor = System.Drawing.Color.Cyan;
t1.ForeColor = System.Drawing.Color.Chocolate;
t1.Body.Text = "Sample text for the SuperToolTip Body.";

System.Drawing.Point pt1 = new System.Drawing.Point(this.button1.Location.X + 20, this.button1.Location.Y + 30);
this.s1.Show(t1, this.PointToScreen(pt1), 500);

{% endhighlight  %}

{% highlight vb %}

Dim s1 As Syncfusion.Windows.Forms.Tools.SuperToolTip
Dim t1 As Syncfusion.Windows.Forms.Tools.ToolTipInfo
s1 = New Syncfusion.Windows.Forms.Tools.SuperToolTip 
t1 = New Syncfusion.Windows.Forms.Tools.ToolTipInfo 
t1.BackColor = System.Drawing.Color.Cyan 
t1.ForeColor = System.Drawing.Color.Chocolate 
t1.Body.Text = "Sample text for the SuperToolTip Body." 
Dim pt1 As System.Drawing.Point = New System.Drawing.Point(Me.button1.Location.X + 20, Me.button1.Location.Y + 30)
Me.s1.Show(t1, Me.PointToScreen(pt1), 500)

{% endhighlight  %}
{% endtabs %}

N> A SuperToolTip can be hidden by calling the SuperToolTip.Hide() method.

{% seealso %}

[PopupToolTip Event](https://help.syncfusion.com/windowsforms/classic/tooltip/supertooltip#popup-tooltip)

{% endseealso %}
