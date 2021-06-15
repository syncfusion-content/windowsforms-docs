---
layout: post
title: Control whether OLE Drag-and-Drop is supported in Grid | Syncfusion
description: Learn here all about how to control whether ole drag-and-drop is supported in Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to control whether OLE Drag-and-Drop is supported in the Grid

Whether a grid is an OLE drop target, which is controlled by DragDropTargetFlags in the grids Model.Options class. These flags control things like clipboard format, the type of data, whether columns or rows can be appended to accommodate the dropped data, and whether auto scrolling is supported. Check the enums for GridDragDropFlags to see the full set of options.

{% tabs %}
{% highlight c# %}

//Turns off being a drop target.        
gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Disabled; 

//Turns on accepting text. 
gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Text;        

//Accepts both text and styles.   
gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Text | GridDragDropFlags.Text;

{% endhighlight %}

{% highlight vb %}

'Turns off being a drop target. 
gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Disabled

'Turns on accepting text. 
gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Text

'Accepts both text and styles. 
gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Text Or GridDragDropFlags.Text

{% endhighlight %}
{% endtabs %}
