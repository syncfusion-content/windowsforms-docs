---
layout: post
title: How-to-return-the-node-at-a-specified-location
description: how to return the node at a specified location
platform: windowsforms
control: TreeView 
documentation: ug
---

# How to return the node at a specified location

GetNodeAtPoint method will get or returns the node at the specified location. There are three overloads for this method. This method can be called inside DragOver event. The parameters are as follows. To return the node at the specified point, GetNodeAtPointEx method can be called.

_Table_ _944_: _Parameter Table_

<table>
<tr>
<th>
Parameter</th><th>
Description</th></tr>
<tr>
<td>
pt</td><td>
Indicates the location.</td></tr>
<tr>
<td>
textbounds</td><td>
Indicates whether testing will be done using the bounds of text and not the whole bounds of the node.</td></tr>
<tr>
<td>
textOrImageBounds</td><td>
Indicates whether testing will be done using the bounds of image and text and not the whole bounds of the node.</td></tr>
</table>


{% highlight c# %}



Point ptInTree = treeView.PointToClient(new Point(e.X, e.Y));



//Gets the node point at the specified location

this.treeViewAdv1.GetNodeAtPoint(ptInTree);

//Gets the node point at the specified location, uses the bounds of text

this.treeViewAdv1.GetNodeAtPoint(ptInTree, true);

//Gets the node point at the specified location, uses the bounds of text and bounds of image and text

this.treeViewAdv1.GetNodeAtPoint(ptInTree, true, true);



//Gets the node point at the specified Point

this.treeViewAdv1.GetNodeAtPointEx(ptInTree);

{% endhighlight %}

{% highlight vbnet %}



Point ptInTree = treeView.PointToClient(new Point(e.X, e.Y))



'Gets the node point at the specified location

Me.treeViewAdv1.GetNodeAtPoint(ptInTree)

'Gets the node point at the specified location, uses the bounds of text

Me.treeViewAdv1.GetNodeAtPoint(ptInTree, True)

'Gets the node point at the specified location, uses the bounds of text and bounds of image and text

Me.treeViewAdv1.GetNodeAtPoint(ptInTree, True, True)



'Gets the node point at the specified Point

Me.treeViewAdv1.GetNodeAtPointEx(ptInTree)

{% endhighlight %}

{% seealso %}
Drag and Drop
{% endseealso %}



