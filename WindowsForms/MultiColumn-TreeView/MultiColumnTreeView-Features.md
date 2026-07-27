---
layout: post
title: MultiColumnTreeView Features in MultiColumn TreeView | Syncfusion®
description: Learn about MultiColumnTreeView Features support in Syncfusion® Windows Forms MultiColumn TreeView control and more details.
platform: WindowsForms
control: MultiColumnTreeView
documentation: ug
---

# MultiColumnTreeView Features in Windows Forms MultiColumn TreeView

MultiColumnTreeView contains following features,

## NodeSelection

### SelectionMode

`SelectionMode` defines the ability to select a number of nodes at a time. The following three modes are available:

* **Single** – Allows the user to select only a single node.

* **MultiSelectSameLevel** – Allows multi-selection only when the multiple nodes are at the same level.

* **MultiSelectAll** – Allows multi-selection of nodes irrespective of node level.

{% tabs %}

{% highlight c# %}

this.MultiColumnTreeView1.SelectionMode = Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeSelectionMode.MultiSelectAll;

{% endhighlight %}

{% highlight vb %}

Me.MultiColumnTreeView1.SelectionMode = Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.TreeSelectionMode.MultiSelectAll

{% endhighlight %}

{% endtabs %}

![MultiColumnTreeView-Features_img1](MultiColumntreeView-Features_Images/MultiColumnTreeView-Features_img1.jpg)

`SelectedNode` property gets the node value when the user selects a node in the MulticolumnTreeView.
This property will be useful when the Selection Mode is Single.

`SelectedNode` can also be used to set a node as selected.

{% tabs %}

{% highlight c# %}

this.MultiColumnTreeView1.SelectedNode = this.MultiColumnTreeView1.Nodes[0].Nodes[1];

{% endhighlight %}

{% highlight vb %}

Me.MultiColumnTreeView1.SelectedNode = Me.MultiColumnTreeView1.Nodes(0).Nodes(1)

{% endhighlight %}

{% endtabs %}

`SelectedNodes` is used to get the nodes selected in MultiColumnTreeView, it can be used in all  selection modes .


`ActiveNode` is the node that is being active, it allows to get or set a node as ActiveNode at an instance.

{% tabs %}

{% highlight c# %}

this.MultiColumnTreeView1.ActiveNode = this.MultiColumnTreeView1.Nodes[4].Nodes[1];

{% endhighlight %}

{% highlight vb %}

Me.MultiColumnTreeView1.ActiveNode = Me.MultiColumnTreeView1.Nodes(4).Nodes(1)

{% endhighlight %}

{% endtabs %}

## Keyboard-Based and Mouse-Based Selection

Mouse-based selection allows the user to select the nodes using a mouse drag. Simply click on any area in MultiColumnTreeView and drag. All the nodes available in the drag region will be selected.
Use the property `AllowMouseBasedSelection` to select nodes using the mouse.

{% tabs %}

{% highlight c# %}

this.MultiColumnTreeView1.AllowMouseBasedSelection = true;

{% endhighlight %}

{% highlight vb %}

Me.MultiColumnTreeView1.AllowMouseBasedSelection = True

{% endhighlight %}

{% endtabs %}

![MultiColumnTreeView-Features_img2](MultiColumntreeView-Features_Images/MultiColumnTreeView-Features_img2.jpg)

MultiColumnTreeView supports searching for nodes using the keyboard. Tap any letter on the keyboard and MultiColumnTreeView will show the node starting with that letter. Keep tapping the same letter to cycle through all the nodes starting with it.

{% tabs %}

{% highlight c# %}

this.MultiColumnTreeView1.AllowKeyboardSearch = true;

{% endhighlight %}

{% highlight vb %}

Me.MultiColumnTreeView1.AllowKeyboardSearch = True

{% endhighlight %}

{% endtabs %}

## Auto Size for Columns

MultiColumnTreeView supports calculating the width of nodes and sub-items based on the width of the text and images they contain, and assigns the largest node width to its column.

This is controlled by the `AutoSizeMode` property, which has the following options:

* **None** – No auto-size is applied to the columns.
* **AllCellsExceptHeader** – Calculates the node width and assigns it to the column. The width of the header text is not included in the calculation.


{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.AutoSizeMode = Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.AutoSizeMode.AllCellsExceptHeader;

{% endhighlight %}

{% highlight vb %}

Me.multiColumnTreeView1.AutoSizeMode = Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.AutoSizeMode.AllCellsExceptHeader

{% endhighlight %}

{% endtabs %}

![MultiColumnTreeView-Features_img3](MultiColumntreeView-Features_Images/MultiColumnTreeView-Features_img3.jpg)

## Undo & Redo

The Undo action erases the last change made to a node and reverts it to the previous state.

Redo is the opposite of Undo. The redo command reverses the Undo and returns the node to the current state. Redo can be performed only after an Undo action.
Actions can be recorded in the history manager so that Undo and Redo operations can be performed.

**Property Table**

<table>
<tr>
<th>
MultiColumnTreeView  Property</th><th>
Description</th></tr>
<tr>
<td>
HistoryManager</td><td>
To record the actions performed</td></tr>
</table>

**HistoryManager Method Table**

<table>
<tr>
<th>
HistoryManager Tool</th><th>
Description</th></tr>
<tr>
<td>
Undo</td><td>
Undo the previous action.</td></tr>
<tr>
<td>
Redo</td><td>
Redo the previous action. Redo action can be performed only after an undo action.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.HistoryManager.Undo();

this.multiColumnTreeView1.HistoryManager.Redo();


{% endhighlight %}

{% highlight vb %}

    Me.multiColumnTreeView1.HistoryManager.Undo()
    Me.multiColumnTreeView1.HistoryManager.Redo()

{% endhighlight %}

{% endtabs %}

## Tooltip and Help Text

### Help Text

`HelpText` is a popup that appears when hovered on any node or SubItem, it will display the information given to that HelpText property.

*Assigning help text to a node* 

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.Nodes[0].Node[0].HelpText = "India and New Delhi";

{% endhighlight %}

{% highlight vb %}

Me.multiColumnTreeView1.Nodes(0).Node(0).HelpText = "India and New Delhi"

{% endhighlight %}

{% endtabs %}

*Assigning help text to a subItem*

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.Nodes[0].Node[0].SubItems[1].HelpText = "Capital of India";

{% endhighlight %}

{% highlight vb %}

Me.multiColumnTreeView1.Nodes(0).Node(0).SubItems(1).HelpText = "Capital of India"

{% endhighlight %}

{% endtabs %}

![MultiColumnTreeView-Features_img4](MultiColumntreeView-Features_Images/MultiColumnTreeView-Features_img4.jpg)

### ToolTip

ToolTip is a special control which automatically appears as a popup when a node is partially visible. It displays the total text of the node.

![MultiColumnTreeView-Features_img5](MultiColumntreeView-Features_Images/MultiColumnTreeView-Features_img5.jpg)

## Performance

The MultiColumnTreeView performance can be improved with the following properties and methods.

### SuspendExpandRecalculate

When the `SuspendExpandRecalculate` property is set to `true`, the populating time is nearly halved by recalculating the maximum height of the nodes only while expanding and collapsing.

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.SuspendExpandRecalculate = true;

{% endhighlight %}

{% highlight vb %}

Me.multiColumnTreeView1.SuspendExpandRecalculate = True

{% endhighlight %}

{% endtabs %}

<table>
<tr>
<th>
MultiColumnTreeView Methods</th><th>
Description</th></tr>
<tr>
<td>
BeginUpdate</td><td>
Calling this method will stop the redraws of the control and makes the node addition faster than normal.</td></tr>
<tr>
<td>
EndUpdate</td><td>
Resumes the painting of the control suspended by BeginUpdate method.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.multiColumnTreeView1.BeginUpdate();

//Add more node here

this.multiColumnTreeView1.EndUpdate();

{% endhighlight %}

{% highlight vb %}

Me.multiColumnTreeView1.BeginUpdate()

' Add more node here

Me.multiColumnTreeView1.EndUpdate()

{% endhighlight %}

{% endtabs %}
