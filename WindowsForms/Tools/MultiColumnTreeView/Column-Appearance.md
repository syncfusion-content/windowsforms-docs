---
layout: post
title: Column Appearance
description: Concepts and Features
platform: windowsforms
control: MultiColumnTreeView
documentation: ug
---
# Column Appearance

The appearance of different columns can be customized through Column Styles settings.

MultiColumnTreeView.ColumnHeaderBackground property sets the background column headers for the control. These settings are 
overridden by above ColumnStyles settings.

![](Column-Appearance-images/Column-Appearance-img1.jpeg)
Figure 901: ColumnsHeaderBackground property in the Properties Grid


![](Column-Appearance-images/Column-Appearance-img2.jpeg)
Figure 902: Gradient colors set for Header Background

## Adding HighlightBorderColor property

Essential tool is now enhanced with HighlightBorderColor property to set the highlight color of the column header in MultiColumnTreeView.

The following code illustrates how to set HighlightBorderColor property.

{% highlight C# %}  

this.treeColumnAdv1.HighlightBorderColor = Color.Brown;

 {% endhighlight %}

 
 
{% highlight vbnet %} 

Me.treeColumnAdv1.HighlightBorderColor = Color.Brown;

{% endhighlight %}


![](Column-Appearance-images/Column-Appearance-img3.jpeg)
Figure 903: Column Header Highlight Border Color changed














