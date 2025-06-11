---
layout: post
title: How To Set the Custom Position For a Label | Syncfusion®
description: Learn to set a label's position using 'Custom' and adjust its X and Y coordinates using Offset values for precise placement.
platform: windowsforms
control: Diagram
documentation: ug
---

# How To Set the Custom Position For a Label

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