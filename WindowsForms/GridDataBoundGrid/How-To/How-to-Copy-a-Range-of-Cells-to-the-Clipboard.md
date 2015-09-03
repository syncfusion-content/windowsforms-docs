---
layout: post
title: How-to-Copy-a-Range-of-Cells-to-the-Clipboard
description: how to copy a range of cells to the clipboard
platform: windowsforms
control: Tools
documentation: ug
---

# How to Copy a Range of Cells to the Clipboard

### Introduction

You can use CopyTextToClipboard method to copy text from a selected range of cells to the clipboard. 

#### Example

{% highlight c# %}



//Copies selected range of cells to clipboard in GridControl.
bool val = this.gridControl1.CutPaste.CopyTextToClipboard(this.gridControl1.Selections.Ranges);
Console.WriteLine(" Selected Range of cells(GridControl)are in Clipboard. This is"+val);
MessageBox.Show("Data copied");


//Copies selected range of cells to clipboard in GridDataBoundGrid.
bool val = this.gridDataBoundGrid1.Model.CutPaste.CopyTextToClipboard(this.gridDataBoundGrid1.Selections.Ranges);
Console.WriteLine(" Selected Range of cells(GridDataBoundGrid)are in Clipboard. This is"+val);
MessageBox.Show("Data copied"); 

{% endhighlight %}

{% highlight vbnet %}



' Copies a selected range of cells to the clipboard in GridControl.
Dim val As Boolean = Me.gridControl1.CutPaste.CopyTextToClipboard(Me.gridControl1.Selections.Ranges)
Console.WriteLine(" Selected Range of cells(GridControl)are in Clipboard. This is", val)
MessageBox.Show("Data copied")



'Copies a selected range of cells to the clipboard in GridDataBoundGrid.
Dim val As Boolean = Me.gridDataBoundGrid1.Model.CutPaste.CopyTextToClipboard(Me.gridDataBoundGrid1.Selections.Ranges)
Console.WriteLine("Selected Range of cells(GridDataBoundGrid)are in Clipboard. This is", val)
MessageBox.Show("Data copied")


{% endhighlight %}
