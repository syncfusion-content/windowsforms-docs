---
layout: post
title: Ribbon-SplitButtonEx| WindowsForms | Syncfusion
description:  ribbon splitbuttonex
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Ribbon SplitButtonEx

ToolStripSplitButtonEx can be added to a ToolStripEx directly or through a panel. 

![](Ribbon-SplitButtonEx_images/Ribbon-SplitButtonEx_img1.jpeg)


Programmatically, ToolStripSplitButtonEx can be added as follows.

{% tabs %}

{% highlight c# %}

private ToolStripSplitButtonEx toolStripSplitButtonEx1;

this.toolStripSplitButtonEx1 = new Syncfusion.Windows.Forms.Tools.ToolStripSplitButtonEx();

this.toolStripEx1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {

this.toolStripSplitButtonEx1});

{% endhighlight %}

{% highlight vb %}

Private toolStripSplitButtonEx1 As ToolStripSplitButtonEx

Me.toolStripSplitButtonEx1 = New Syncfusion.Windows.Forms.Tools.ToolStripSplitButtonEx() 

Me.toolStripEx1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.toolStripSplitButtonEx1})

{% endhighlight %}

{% endtabs %}

The properties of SplitButtonEx is similar to SplitButton except `DropDownButtonWidth` property which is not available for SplitButtonEx control.

