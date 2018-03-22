---
layout: post
title: Preview-for-Symbol-Palette-Item | Windows Forms | Syncfusion
description: Preview for Symbol Palette Item
platform: windowsforms
control: Diagram
documentation: ug
---


# Preview for Symbol Palette Item

Essential Diagram for Windows Forms provides preview support for Symbol Palette. When you drag an item from Symbol Palette to Diagram View, Preview of the dragged item will be displayed. You can enable or disable the preview support. 

### Use Case Scenario

This feature displays a preview of the item you drag from Symbol Palette, thus enables you to identify the item you are dragging from the symbol palette to Diagram view.

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
ShowDragNodeCue</td><td>
Gets or sets a value indicating whether preview is visible.The default value is true.</td><td>
NA</td><td>
Boolean </td><td>
NA</td></tr>
<tr>
<td>
DragNodeCueEnabled</td><td>
Gets or sets a value indicating whether preview is enabled.The default value is true.</td><td>
NA</td><td>
Boolean</td><td>
NA</td></tr>
</table>


### Enabling Preview Support

To enable preview for the dragged item from Symbol Palette, set the _DragNodeCueEnabled_ property of _PaletteGroupBar/PaletteGroupView_ to true. To disable preview set this to false. By default this is set to true.  

Following code example illustrates how to enable preview support:  


{% tabs %}
{% highlight c# %}

      //enable dragged node cue
      paletteGroupBar1.DragNodeCueEnabled = true;
      paletteGroupView1.DragNodeCueEnabled = true
      
      //show dragged node cue
      paletteGroupBar1.ShowDragNodeCue = true;
      paletteGroupView1.ShowDragNodeCue = true;

{% endhighlight %}
{% highlight vbnet %}

      'enable dragged node cue
      paletteGroupBar1.DragNodeCueEnabled = True	
      paletteGroupView1.DragNodeCueEnabled = True
      
      'show dragged node cue
      paletteGroupBar1.ShowDragNodeCue = True
      paletteGroupView1.ShowDragNodeCue = True

{% endhighlight %}
{% endtabs %}

![](Symbol-Palette-Items_images/Symbol-Palette-Items_img1.png)

The following code illustrates how to disable preview support: 


{% tabs %}
{% highlight c# %}

      //hide dragged node cue
      paletteGroupBar1.ShowDragNodeCue = false;
      paletteGroupView1.ShowDragNodeCue = false;

{% endhighlight %}
{% highlight vbnet %}

      //hide dragged node cue
      paletteGroupBar1.ShowDragNodeCue = False;
      paletteGroupView1.ShowDragNodeCue = False;

{% endhighlight %}
{% endtabs %}

Sample Link

To view a sample:

1. Open the Syncfusion Dashboard.
2. Click the Windows Forms drop-down list and select Run Locally Installed Samples.
3. Navigate to Diagram Samples > Product Showcase > Diagram Builder.


## Dragging, Resizing, and Rotation Styles for Nodes

Essential Diagram for Windows Forms provides dragging, resizing, and rotation styles such as ghost copy, filled rectangle, solid outline, and dashed outline for nodes. These styles provide better visual effects for your diagram and increase the performance speed of the diagram while dragging, rotating, or resizing nodes.

Properties Table

<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Type </th><th>
Data Type </th></tr>
<tr>
<td>
ResizingStyle</td><td>
Gets or sets resizing style for the rendering helper</td><td>
NA</td><td>
RenderingHelperStyle</td></tr>
<tr>
<td>
DraggingStyle</td><td>
Gets or sets dragging style for the rendering helper</td><td>
NA</td><td>
RenderingHelperStyle</td></tr>
<tr>
<td>
RotatingStyle</td><td>
Gets or sets rotating style for the rendering helper</td><td>
NA</td><td>
RenderingHelperStyle</td></tr>
</table>


### Applying Styles to Rendering Helper

The following code example illustrates how to apply styles to the rendering helper while resizing, dragging, and rotating nodes.


{% tabs %}
{% highlight c# %}

      //Specify dragging, resizing, and rotation styles to the rendering helper
      diagram1.Controller.DraggingStyle = RenderingHelperStyle.SolidOutline;
      diagram1.Controller.ResizingStyle = RenderingHelperStyle.GhostCopy;
      diagram1.Controller.RotatingStyle = RenderingHelperStyle.DashedOutline;

{% endhighlight %}
{% highlight vbnet %}

      'Specify dragging, resizing, and rotation styles to the rendering helper
      diagram1.Controller.DraggingStyle = RenderingHelperStyle.SolidOutline
      diagram1.Controller.ResizingStyle = RenderingHelperStyle.GhostCopy
      diagram1.Controller.RotatingStyle = RenderingHelperStyle.DashedOutline

{% endhighlight %}
{% endtabs %}



![](Symbol-Palette-Items_images/Symbol-Palette-Items_img2.png)