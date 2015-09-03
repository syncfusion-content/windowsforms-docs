---
layout: post
title: How-to-Control-Whether-OLE-Drag-and-Drop-is-Supported-in-the-grid
description: how to control whether ole drag-and-drop is supported in the grid
platform: WindowsForms
control: Tools
documentation: ug
---

# How to Control Whether OLE Drag-and-Drop is Supported in the Grid

### Introduction

Whether a grid is an OLE drop target, which is controlled by DragDropTargetFlags in the grids Model.Options class. These flags control things like clipboard format, the type of data, whether columns or rows can be appended to accommodate the dropped data, and whether auto scrolling is supported. Check the enums for GridDragDropFlags to see the full set of options.

#### Example

{% highlight c# %}



//Turns off being a drop target.        

gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Disabled;        



//Turns on accepting text.         

gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Text;        



//Accepts both text and styles.        

gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Text | GridDragDropFlags.Text;


{% endhighlight %}

{% highlight vbnet %}



'Turns off being a drop target. 

gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Disabled



'Turns on accepting text. 

gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Text



'Accepts both text and styles. 

gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Text Or GridDragDropFlags.Text



{% endhighlight %}
