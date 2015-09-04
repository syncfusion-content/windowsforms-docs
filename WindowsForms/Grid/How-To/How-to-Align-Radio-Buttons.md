---
layout: post
title: How-to-Align-Radio-Buttons
description: how to align radio buttons
platform: windowsforms
control: Grid
documentation: ug
---

# How to Align Radio Buttons

The Windows Forms Grid control includes support for displaying radio button of the RadioButton cell type in both vertical and horizontal order. By default, RadioButton cell aligns the buttons in horizontal order. The display order can be changed using RadioButtonAlignment property.

The following code examples illustrate how to invoke the RadioButtonAlignment property.

{% highlight c# %}



this.gridControl1[1, 2].RadioButtonAlignment = ButtonAlignment.Vertical;



this.gridControl1[2, 2].RadioButtonAlignment = ButtonAlignment.Horizontal;

{% endhighlight  %}

{% highlight vbnet %}



me.gridControl1[1, 2].RadioButtonAlignment = ButtonAlignment.Vertical



me.gridControl1[2, 2].RadioButtonAlignment = ButtonAlignment.Horizontal
{% endhighlight  %}

The following screenshot illustrates the RadioButtonAlignment property:

![](How-to-Align-Radio-Buttons_images/How-to-Align-Radio-Buttons_img1.png)



