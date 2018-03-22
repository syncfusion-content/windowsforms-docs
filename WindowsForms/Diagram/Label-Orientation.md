---
layout: post
title: Label-Orientation | Windows Forms | Syncfusion
description: Label Orientation
platform: windowsforms
control: Diagram
documentation: ug
---


# Label Orientation

This feature lets the user to specify the orientation of a node label. There are two orientation modes, Horizontal, which displays the label horizontally, and Auto, which rotates the label based on the node or connector rotation angle.


<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Data Type </th></tr>
<tr>
<td>
Orientation</td><td>
Gets or sets the orientation of the label.</td><td>
Enum</td></tr>
</table>


The following code shows how to set the orientation of the label to horizontal:


{% tabs %}
{% highlight c# %}

	Syncfusion.Windows.Forms.Diagram.Label label = new Syncfusion.Windows.Forms.Diagram.Label(node, "Orientation");
	
	//Sets the orientation of the label as horizontal.
	label.Orientation = LabelOrientation.Horizontal;
	node.Labels.Add(label);

{% endhighlight %}
{% highlight vbnet %}

	Dim label As New Syncfusion.Windows.Forms.Diagram.Label(node, "Orientation")
	
	'Sets the orientation of the label as horizontal.
	label.Orientation = LabelOrientation.Horizontal
	node.Labels.Add(label)

{% endhighlight %}
{% endtabs %}

![](Label-Orientation_images/Label-Orientation_img1.png)





![](Label-Orientation_images/Label-Orientation_img2.png)



