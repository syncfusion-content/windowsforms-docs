---
layout: post
title: ComboBoxBase-Feature
description: comboboxbase feature
platform: windowsforms
control: GridList
documentation: ug
---

# ComboBoxBase Feature

Grid List control can be coupled to a ComboBoxBase control by using ListControl property of ComboBoxBase class. ComboBoxBase is an advanced control provided by Syncfusion, which essentially separates edit portion from drop-down portion making. It displays Grid List control as a dropdown i.e. users can drop Grid List control in the drop-down area to get a multi-column drop-down effect.

The following code example illustrates usage of Grid List control as a drop-down in Combo Box Base control.



{% highlight c# %}

this.comboBoxBase1.ListControl = this.gridListControl1;

{% endhighlight  %}

{% highlight vbnet %}



Me.comboBoxBase1.ListControl = Me.gridListControl1

{% endhighlight  %}

![](ComboBoxBase-Feature_images/ComboBoxBase-Feature_img1.jpeg) 



