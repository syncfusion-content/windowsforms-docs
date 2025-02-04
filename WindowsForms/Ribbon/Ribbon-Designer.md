---
layout: post
title: Ribbon Designer in Windows Forms Ribbon control | Syncfusion®
description: Learn about Ribbon Designer support in Syncfusion® Windows Forms Ribbon (RibbonControlAdv) control and more details.
platform: windowsforms
control: RibbonControlAdv 
documentation: ug
---

# Ribbon Designer in Windows Forms Ribbon (RibbonControlAdv)

Ribbon designer is the visual designer for the Ribbon control. It is used to add custom tabs, control and groups to the Ribbon without running the application.

![Design view of Ribbon with various controls](Ribbon_Designer_Images/Ribbon-Designer_img1.jpg)

Image shows toolbox on the left side and designer on the right top and controls below the designer.

## AutoLayoutToolStrip

The `AutoLayoutToolStrip` property enables standard size and layout for RibbonControlAdv and its items. The default value of the `AutoLayoutToolStrip` is false. The ToolStripItems can be arranged in the RibbonControlAdv in the following three different sizes:

**Large:** ToolStripItem’s `DisplayStyle` is ImageAndText and `TextImageRelation` is ImageAboveText/ ImageBelowText.

**Small:** ToolStripItem’s `DisplayStyle` is ImageAndText and `TextImageRelation` is ImageBeforeText/ ImageAfterText.

**Extra Small:** ToolStripItem’s `DisplayStyle` is Image. 

**Margin and Padding:** ToolStripItem’s Margin and Padding are defined internally to maintain equal spacing for all items either in single or double line arrangement.

**Image Scaling:** Images used inside RibbonControlAdv have been scaled internally for different screen resolution. The following defined image size has been used for the different item sizes.

<table>
<tr>
<th>
Size Form</th><th>
Image Size</th></tr> 

<tr>
<td>
Large Size form</td><td>
32*32</td></tr>
<tr>
<td>
Small and Extra Small size form</td><td>
16*16</td></tr>
</table>

**RibbonControlAdv Height:** RibbonControlAdv’s height is defined internally to accommodate the items and maintain in three rows with standard height in scaling.

{% tabs %}

{% highlight c# %}

this.ribbonControlAdv1.AutoLayoutToolStrip = true;

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.AutoLayoutToolStrip = True

{% endhighlight %}

{% endtabs %}

![Ribbon with AutoLayoutToolStrip](Ribbon_Designer_Images/Ribbon-Designer_img4.jpg)

## Smart Tag support

The Smart Tag feature allows you quickly access the most commonly used properties and options and perform tasks without leaving the control’s design surface (resembles a right-pointing arrow).

In Ribbon Smart Tag, the frequently used properties related to the appearance and behavior and links to access documentation and support resources of Ribbon have been added.


![Smart Tag of RibbonControlAdv](Ribbon_Designer_Images/Ribbon-Designer_img2.jpg)

In `RibbonPanel` Smart Tag, we can add `ToolStripEx` using `Add ToolStripEx` to the RibbonPanel and also rearrange them using the `Manage ToolStripEx` collection editor.

![Smart Tag of RibbonPanel](Ribbon_Designer_Images/Ribbon-Designer_img5.jpg)

![RibbonPanel Collection Editor](Ribbon_Designer_Images/Ribbon-Designer_img6.jpg)

In `ToolStripEx` Smart Tag, we can set the Text for the ToolStripEx and add Horizontal and Vertical Layout ToolStripPanelItem.

![Smart Tag of ToolStripEx](Ribbon_Designer_Images/Ribbon-Designer_img3.jpg)



