---
layout: post
title: How to disable label editing | Syncfusion®
description: To disable label editing for a node, simply set the node’s label ReadOnly property to true, effectively preventing any modifications to the label.
platform: windowsforms
control: Diagram
documentation: ug
---

# How to disable label editing

How to disable label editing for node

The label editor for the particular node can be disabled by assigning the label’s ReadOnly property to true. 

The following code example illustrates on how to disable the label editor for particular node.

{% tabs %}

{% highlight c# %}

Syncfusion.Windows.Forms.Diagram.Rectangle process = new Syncfusion.Windows.Forms.Diagram.Rectangle(50, 325, 100, 70);

//To disable label editing

process.Labels.Add(new Syncfusion.Windows.Forms.Diagram.Label() { ReadOnly = true, Text="process2" });

{% endhighlight %}

{% highlight vbnet %}

Dim process As New Syncfusion.Windows.Forms.Diagram.Rectangle(50, 325, 100, 70)

'To disable label editing for node

process.Labels.Add(New Syncfusion.Windows.Forms.Diagram.Label() With {.ReadOnly = true ,Text="process2"})

{% endhighlight %}

{% endtabs %}



## How to disable label editing for the whole Diagram

The label editor for the entire Diagram can be disabled by setting the diagram.Controller’s InPlaceEditing to false.

The following code example illustrates on how to disable the label editor for the whole Diagram.


{% tabs %}

{% highlight c# %}

//To disable label editing in entire diagram

diagram1.Controller.InPlaceEditing = false;

{% endhighlight %}

{% highlight vbnet %}

'To disable label editing in entire diagram

diagram1.Controller.InPlaceEditing = False

{% endhighlight %}

{% endtabs %}

