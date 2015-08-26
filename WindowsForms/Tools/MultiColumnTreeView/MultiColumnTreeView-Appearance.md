---
layout: post
title: MultiColumnTreeView-Appearance
description: Concepts and Features
platform: windowsforms
control: MultiColumnTreeView
documentation: ug
---

# MultiColumnTreeView Appearance

The appearance of the MultiColumnTreeView can be customized using background, foreground, border and spacing properties similar to TreeView control. The below topics are covered in this section.

SubItem Appearance

The background, foreground and border settings of a subitem can be specified using SubItem Style Editor. Refer to SubItem Styles for all the style settings.

{% highlight C# %}  



treeNodeAdvSubItem1.Background = new Syncfusion.Drawing.BrushInfo(System.Drawing.Color.SandyBrown);

treeNodeAdvSubItem1.Border3DStyle = System.Windows.Forms.Border3DStyle.SunkenInner;

treeNodeAdvSubItem1.BorderColor = System.Drawing.Color.SteelBlue;

treeNodeAdvSubItem1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted;

treeNodeAdvSubItem1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

treeNodeAdvSubItem1.TextColor = System.Drawing.Color.Navy;



treeNodeAdvSubItem2.Background = new Syncfusion.Drawing.BrushInfo(System.Drawing.Color.SandyBrown);

treeNodeAdvSubItem2.Border3DStyle = System.Windows.Forms.Border3DStyle.SunkenOuter;

treeNodeAdvSubItem2.BorderColor = System.Drawing.Color.SteelBlue;

treeNodeAdvSubItem2.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted;

treeNodeAdvSubItem2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

treeNodeAdvSubItem2.TextColor = System.Drawing.Color.Navy;

{% endhighlight %}

{% highlight vbnet %} 



treeNodeAdvSubItem1.Background = New Syncfusion.Drawing.BrushInfo(System.Drawing.Color.SandyBrown) 

treeNodeAdvSubItem1.Border3DStyle = System.Windows.Forms.Border3DStyle.SunkenInner 

treeNodeAdvSubItem1.BorderColor = System.Drawing.Color.SteelBlue 

treeNodeAdvSubItem1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted 

treeNodeAdvSubItem1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

treeNodeAdvSubItem1.TextColor = System.Drawing.Color.Navy 



treeNodeAdvSubItem2.Background = New Syncfusion.Drawing.BrushInfo(System.Drawing.Color.SandyBrown) 

treeNodeAdvSubItem2.Border3DStyle = System.Windows.Forms.Border3DStyle.SunkenOuter 

treeNodeAdvSubItem2.BorderColor = System.Drawing.Color.SteelBlue 

treeNodeAdvSubItem2.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted 

treeNodeAdvSubItem2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

treeNodeAdvSubItem2.TextColor = System.Drawing.Color.Navy 

{% endhighlight %}

A MultiColumnTreeView with above settings is displayed below.

![](MultiColumnTreeView-Appearance_images/MultiColumnTreeView-Appearance_img1.jpeg) 



## Column Appearance

The appearance of different columns can be customized through Column Styles settings. 

MultiColumnTreeView.ColumnHeaderBackground property sets the background column headers for the control. These settings are overridden by above ColumnStyles settings.

![](MultiColumnTreeView-Appearance_images/MultiColumnTreeView-Appearance_img2.jpeg) 



{ ![](MultiColumnTreeView-Appearance_images/MultiColumnTreeView-Appearance_img3.jpeg) | markdownify }



Adding HighlightBorderColor property

Essential tool is now enhanced with HighlightBorderColor property to set the highlight color of the column header in MultiColumnTreeView.

The following code illustrates how to set HighlightBorderColor property.

{% highlight C# %}  

this.treeColumnAdv1.HighlightBorderColor = Color.Brown;

{% endhighlight %}

{% highlight vbnet %} 

Me.treeColumnAdv1.HighlightBorderColor = Color.Brown;

{% endhighlight %}

![](MultiColumnTreeView-Appearance_images/MultiColumnTreeView-Appearance_img4.jpeg)



