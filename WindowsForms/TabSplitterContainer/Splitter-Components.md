---
layout: post
title: Splitter-Components | WindowsForms | Syncfusion
description: splitter components
platform: WindowsForms
control: TabSplitterContainer 
documentation: ug
---

# Splitter Components

The splitter in the TabSplitterContainer control has in-built options for changing the orientation of the splitter and also to collapse or expand the splitter panes. Those options are illustrated below.

![](Splitter-Components_images/Splitter-Components_img1.jpeg)



* Primary Page - We can add primary pages using PrimaryPages property. It invokes TabSplitterPage Collection Editor and lets you add primary pages.
* Secondary Page - We can add secondary pages using SecondaryPages property. It invokes TabSplitterPage Collection Editor and lets you add secondary pages.
* Swap Button - This button lets you to swap between the primary and secondary pages.
* Vertical Orientation - Sets the orientation of the splitter to be vertical.
* Horizontal Orientation - Sets the orientation of the splitter to be horizontal.
* Expand / Collapse Button - Clicking this button can collapse the secondary pane and place at the bottom of the control. Clicking this button again will expand the pane and place in its original position. 

## SplitterPage


The properties which customizes the Splitter page are as follows.

Property Table

<table>
<tr>
<th>
TabSplitterContainer Property</th><th>
Description</th></tr>
<tr>
<td>
BorderStyle</td><td>
Sets border for the splitter page.</td></tr>
<tr>
<td>
BackgroundImage</td><td>
Sets the background image for the control.</td></tr>
<tr>
<td>
BackgroundImageLayout</td><td>
Sets the background image layout for the control.</td></tr>
<tr>
<td>
Image</td><td>
Lets you set image icons for the tabs.</td></tr>
<tr>
<td>
ImageTransparencyColor</td><td>
Indicates the transparent color for the tab image.</td></tr>
<tr>
<td>
Text</td><td>
Sets text for the tab.</td></tr>
<tr>
<td>
Tooltip</td><td>
Sets tooltip text for the tab.</td></tr>
<tr>
<td>
Visible</td><td>
Sets the visibility of the tab.</td></tr>
</table>


{% highlight c# %}


this.tabSplitterPage1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

this.tabSplitterPage1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("tabSplitterPage1.BackgroundImage")));

this.tabSplitterPage1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;

this.tabSplitterPage1.Image = ((System.Drawing.Image)(resources.GetObject("tabSplitterPage1.Image")));

this.tabSplitterPage1.Text = "Designer";

this.tabSplitterPage1.Tooltip = "Designer";

this.tabSplitterPage1.Visible = true;

{% endhighlight %}

{% highlight vbnet %}



Me.tabSplitterPage1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle 

Me.tabSplitterPage1.BackgroundImage = DirectCast((resources.GetObject("tabSplitterPage1.BackgroundImage")), System.Drawing.Image) 

Me.tabSplitterPage1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center 

Me.tabSplitterPage1.Image = DirectCast((resources.GetObject("tabSplitterPage1.Image")), System.Drawing.Image) 

Me.tabSplitterPage1.Text = "Designer" 

Me.tabSplitterPage1.Tooltip = "Designer" 

Me.tabSplitterPage1.Visible = True 

{% endhighlight %}

![](Splitter-Components_images/Splitter-Components_img2.jpeg)



