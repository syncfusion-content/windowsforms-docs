---
layout: post
title: Node-Selections | Windows Forms | Syncfusion
description: Node Selections
platform: windowsforms
control: Diagram
documentation: ug
---



# Node Selections 

A node's behavior can be customized and modified using the EditStyle collection properties which can be used for the following:

* To prohibit selection, rotation and deletion of nodes, by using AllowSelect, AllowRotate and AllowDelete properties. 
* To restrict a node's movement along the x or y axis, by using AllowMoveX and AllowMoveY properties.
* To prevent re-sizing the height and width of the node, by using AllowChangeHeight and AllowChangeWidth and AllowResize properties.



##Node Selections

<table>
<tr>
<th>
EditStyle Property</th><th>
Description</th></tr>
<tr>
<td>
AllowChangeHeight </td><td>
Specifies whether or not to allow the height to be changed. Default value is {{ '_true_' | markdownify }}.</td></tr>
<tr>
<td>
AllowChangeWidth </td><td>
Specifies whether or not to allow the width to be changed. Default value is {{ '_true_' | markdownify }}.</td></tr>
<tr>
<td>
AllowDelete  </td><td>
Specifies whether or not to allow the node to be deleted on clicking the DELETE key. Default value is {{ '_true_' | markdownify }}.</td></tr>
<tr>
<td>
AllowMoveX</td><td>
Specifies whether or not to allow the node to be moved along the x-axis. Default value is {{ '_true_' | markdownify }}.</td></tr>
<tr>
<td>
AllowMoveY</td><td>
Specifies whether or not to allow the node to be moved along the y-axis. Default value is {{ '_true_' | markdownify }}.</td></tr>
<tr>
<td>
AllowRotate</td><td>
Specifies whether or not to rotate the node using the PinPoint. Default value is {{ '_true_' | markdownify }}.</td></tr>
<tr>
<td>
AllowSelect</td><td>
Specifies whether or not to select the node on mouse click. Default value is {{ '_true_' | markdownify }}.</td></tr>
</table>


Programmatically, the properties can be set as follows:


{% tabs %}
{% highlight c# %}

	rect.EditStyle.AllowChangeHeight = true;
	rect.EditStyle.AllowChangeWidth = true;
	rect.EditStyle.AllowDelete = false;
	rect.EditStyle.AllowMoveX = true;
	rect.EditStyle.AllowMoveY = false;
	rect.EditStyle.AllowRotate = true;
	rect.EditStyle.AllowSelect = true;

{% endhighlight %}
{% highlight vbnet %}

	rect.EditStyle.AllowChangeHeight = True
	rect.EditStyle.AllowChangeWidth = True
	rect.EditStyle.AllowDelete = False
	rect.EditStyle.AllowMoveX = True
	rect.EditStyle.AllowMoveY = False
	rect.EditStyle.AllowRotate = True
	rect.EditStyle.AllowSelect = True

{% endhighlight %}
{% endtabs %}

In the above code snippets, the properties are set to the Rectangular node (rect) created through the code.

Behavior Settings



_Properties_

<table>
<tr>
<th>
Property </th><th>
Description</th></tr>
<tr>
<td>
AspectRatio</td><td>
Specifies whether to maintain the height and width ratio when the node is resized.</td></tr>
<tr>
<td>
DefaultHandleEditMode</td><td>
Specifies the mode in which the node should be handled. The default value for links and lines is Vertex and for all other nodes and polyline the default value is Resize. To move the nodes, DefaultHandleEditMode should be set to Resize. The options provided are as follows.NoneResizeVertex</td></tr>
<tr>
<td>
Enabled</td><td>
Specifies whether the node is enabled. Default value is {{ '_true_' | markdownify }}.</td></tr>
<tr>
<td>
AllowVertexEdit</td><td>
Specifies whether or not to edit the vertex. Default value is {{ '_true_' | markdownify }}.</td></tr>
<tr>
<td>
HidePinPoint</td><td>
Specifies whether to show or hide the PinPoint. Default value is {{ '_false_' | markdownify }}.</td></tr>
<tr>
<td>
HideRotationHandle</td><td>
Specifies whether to show or hide the RotationHandle in order to control the rotation of the node. Default value is {{ '_false_' | markdownify }}.</td></tr>
</table>


Programmatically these properties can be set as follows:


{% tabs %}
{% highlight c# %}

	rect.EditStyle.AspectRatio = true;
	rect.EditStyle.DefaultHandleEditMode =HandleEditMode.Resize;
	rect.EditStyle.Enabled = true;
	rect.EditStyle.AllowVertexEdit = true;
	rect.EditStyle.DefaultHandleEditMode =HandleEditMode.Vertex;
	rect.EditStyle.HidePinPoint = true;
	rect.EditStyle.HideRotationHandle = true;

{% endhighlight %}
{% highlight vbnet %}

	rect.EditStyle.AspectRatio = True
	rect.EditStyle.DefaultHandleEditMode = HandleEditMode.Resize
	rect.EditStyle.Enabled = True
	rect.EditStyle.AllowVertexEdit = True
	rect.EditStyle.DefaultHandleEditMode = HandleEditMode.Vertex
	rect.EditStyle.HidePinPoint = True
	rect.EditStyle.HideRotationHandle = True

{% endhighlight %}
{% endtabs %}

In the above code snippets, the properties are set to the Rectangular node (rect) created through the code.



![](Advanced-Features_images/Advanced-Features_img1.jpeg)





![](Advanced-Features_images/Advanced-Features_img2.jpeg)



![](Advanced-Features_images/Advanced-Features_img3.jpeg)





![](Advanced-Features_images/Advanced-Features_img4.jpeg)
