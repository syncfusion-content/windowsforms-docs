---
layout: post
title: Control OLE Drag-and-Drop in Windows Forms Grid Control | Syncfusion®
description: Control OLE drag-and-drop support in Syncfusion® Windows Forms Grid Control using DragDropDropTargetFlags and customize grid drop target behavior and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Control OLE Drag-and-Drop in Windows Forms Grid Control

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
