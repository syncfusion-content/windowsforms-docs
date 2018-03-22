---
layout: post
title: Adding-Shapes-by-Clicking-the-Diagram-Page | Windows Forms | Syncfusion
description: Adding Shapes by Clicking the Diagram Page
platform: windowsforms
control: Diagram
documentation: ug
---

# Adding Shapes by Clicking the Diagram Page


Essential Diagram enables you to draw the selected node by clicking the Diagram page instead of dragging from the Symbol Palette. 

Property Table

<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Type </th><th>
Data Type </th><th>
Reference links </th></tr>
<tr>
<td>
Diagram</td><td>
Reference to enable drawing the selected node by clicking on the diagram page.</td><td>
NA </td><td>
Diagram</td><td>
NA. </td></tr>
</table>


Enabling Adding Shapes by Clicking Support

You can enable drawing shapes by clicking the diagram page using the _Diagram_ property. 


{% tabs %}
{% highlight c# %}

    //Palette group view
    paletteGroupView1.Diagram = diagram1;
    // Platte group bar
    paletteGroupBar1.Diagram = diagram1;
	
{% endhighlight %}
{% highlight vbnet %}

	'Palette group view	
	paletteGroupView1.Diagram = diagram1;	
	'Palatte group bar	
	paletteGroupBar1.Diagram = diagram1;
		
{% endhighlight %}
{% endtabs %}

![](Adding-Shapes_images/Adding-Shapes_img.png)


N> Click the Diagram page to add the selected node. Click and drag to get the required size. 

Sample Link

To view a sample:

1. Open the Syncfusion Dashboard.
2. Click the Windows Forms drop-down list and select Run Locally Installed Samples.
3. Navigate to Diagram Samples > Product Showcase > Diagram Builder.

