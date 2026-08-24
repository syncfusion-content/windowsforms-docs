---
layout: post
title: How to Align Radio Buttons in Windows Forms Grid Control | Syncfusion®
description: Align radio buttons in Syncfusion® Windows Forms Grid Control using the RadioButtonAlignment property to display buttons in vertical, horizontal order and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Align Radio Buttons in Windows Forms Grid Control

The Windows Forms Grid control includes support for displaying radio button of the RadioButton cell type in both vertical and horizontal order. By default, RadioButton cell aligns the buttons in horizontal order. The display order can be changed using RadioButtonAlignment property.

{% tabs %}
{% highlight c# %}

this.gridControl1[1, 2].RadioButtonAlignment = ButtonAlignment.Vertical;
this.gridControl1[2, 2].RadioButtonAlignment = ButtonAlignment.Horizontal;

{% endhighlight  %}

{% highlight vb %}

Me.gridControl1[1, 2].RadioButtonAlignment = ButtonAlignment.Vertical
Me.gridControl1[2, 2].RadioButtonAlignment = ButtonAlignment.Horizontal

{% endhighlight  %}
{% endtabs %}

![Align Radio button in Windows Forms GridControl](How-to-Align-Radio-Buttons_images/How-to-Align-Radio-Buttons_img1.png)