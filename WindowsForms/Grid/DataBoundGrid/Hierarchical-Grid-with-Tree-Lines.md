---
layout: post
title: Hierarchical-Grid-with-Tree-Lines
description: hierarchical grid with tree lines
platform: windowsform
control: GridDataBoundGrid
documentation: ug
---


# Hierarchical Grid with Tree Lines

Grid Data Bound Grid supports display of hierarchical grid with tree lines. This can be achieved by setting the ShowTreeLines property to _true_. 

{% highlight c# %}

this.gridDataBoundGrid1.ShowTreeLines = true;

{% endhighlight %}

{% highlight vbnet %}

Me.gridDataBoundGrid1.ShowTreeLines = True

{% endhighlight %}

With ShowTreeLines property set to true, there is no separate column allotted for plus or minus buttons, instead the indented text in the first column can be seen. 

![](DataBound-Grid_images/DataBound-Grid_img22.jpeg)



A sample demonstrating this feature is available under the following sample installation path.

&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\GridDataBound.Windows\Samples\Hierarchy\GDBG Tree Lines Demo
