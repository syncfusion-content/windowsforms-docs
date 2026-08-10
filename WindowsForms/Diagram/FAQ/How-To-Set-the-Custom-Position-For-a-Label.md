---
layout: post
title: How to set a custom position for a label in Windows Forms Diagram | Syncfusion®
description: Learn how to set a custom position for a label in the Syncfusion® Windows Forms Diagram control using custom coordinates and offset values.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to set a custom position for a label in Windows Forms Diagram

We can adjust the label position by setting the Position property as 'Custom'. Then, we have to set the Offset values for the X and Y coordinates to specify the label position.

{% tabs %}

{% highlight c# %}

// Setting custom position for a label 

outerRect.Labels.Add(new Syncfusion.Windows.Forms.Diagram.Label()); 

outerRect.Labels[0].Text = "Rectangle"; 

outerRect.Labels[0].Position = Position.Custom; 

outerRect.Labels[0].OffsetX = 50; 

outerRect.Labels[0].OffsetY= 65; 

{% endhighlight %}

{% highlight vbnet %}

' Setting custom position for a label 

outerRect.Labels.Add(New Syncfusion.Windows.Forms.Diagram.Label()) 

outerRect.Labels(0).Text = "Rectangle" 

outerRect.Labels(0).Position = Position.Custom 

outerRect.Labels(0).OffsetX = 50 

outerRect.Labels(0).OffsetY= 65 

{% endhighlight %}

{% endtabs %}