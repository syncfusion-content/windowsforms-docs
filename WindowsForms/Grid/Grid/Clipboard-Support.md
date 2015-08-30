---
layout: post
title: Clipboard-Support
description: clipboard support
platform: windowsform
control: Grid
documentation: ug
---

# Clipboard Support

This section discusses clipboard support provided by Essential Grid. It includes the following topics.

## Managing Clipboard Operations with GridModelCutPaste

GridModelCutPaste class manages Cut, Copy and Paste operations for a grid. You can access this class from a grid with the Grid.Model.CutPaste property. This class provides many properties and functions.

Here is the list of properties and methods:

* ClipboardFlags -This property gets or sets various properties of GridDragDropFlags class, which specifies how the clipboard operations like cut, copy, and paste should be handled.

The following code examples illustrate how to set ClipboardFlags by using the GridDragDropFlags.Styles property:

{% highlight c# %}



this.gridControl1.Model.CutPaste.ClipboardFlags = GridDragDropFlags.Styles;
{% endhighlight %}


{% highlight vbnet %}



Me.gridControl1.Model.CutPaste.ClipboardFlags = GridDragDropFlags.Styles

{% endhighlight %}

* CanCopy - This method checks whether there are selected ranges of cells that can be copied to clipboard or if the current cell's contents can be copied. The return type of this method is Boolean. If it returns true, it indicates that the selected range of cells or the current cell's contents can be copied to the clipboard. If it is false, it indicates that the selected range of cells or the current cell's contents cannot be copied to the clipboard.


> Note: Any content copied is pasted to the Clipboard by default.



The following code example is used to call CanCopy method:



{% highlight c# %}



this.gridControl1.Model.CutPaste.CanCopy();

{% endhighlight %}

{% highlight vbnet %}



Me.gridControl1.Model.CutPaste.CanCopy()
{% endhighlight %}

* Copy - This method copies the contents of selected cells and the current cell's contents to the clipboard.

The following code example is used to call the Copy method:

 {% highlight c# %}



this.gridControl1.Model.CutPaste.Copy();

{% endhighlight %}

{% highlight vbnet %}



Me.gridControl1.Model.CutPaste.Copy()
{% endhighlight %}


* CopyRange(GridRangeInfo range) - This method copies the contents of a specified range of cells to the clipboard. The range of cells to be copied is given to the method as a parameter. For example, if the range is specified to be (2,2), the selection is restricted to the cell with row index 2 and column index 2 of the grid.

The following code example shows how to call this method:



{% highlight c# %}



this.gridControl1.Model.CutPaste.CopyRange(GridRangeInfo.Cell(2, 2));

{% endhighlight %}

{% highlight vbnet %}



Me.gridControl1.Model.CutPaste.CopyRange(GridRangeInfo.Cell(2, 2))


{% endhighlight %}
* CopyTextToClipboard(GridRangeInfo range) - This method copies the formatted text of a specified range of cells to clipboard. The range of cells to be copied is given to the method as a parameter. For example, if the range is specified to be (1,2,1,4), the selection starts from the cell (1,2) – with row index 1 and column index 2 to the cell (1,4) – with row index 1 and column index 4 of the grid.

The following code example shows how to call this method:



{% highlight c# %}



this.gridControl1.Model.CutPaste.CopyTextToClipboard(GridRangeInfo.Cells(1, 2, 1, 4));
{% endhighlight %}


{% highlight vbnet %}



Me.gridControl1.Model.CutPaste.CopyTextToClipboard(GridRangeInfo.Cells(1, 2, 1, 4))

{% endhighlight %}

* CopyCellsToClipboard(GridRangeInfoList list, bool bLoadBaseStyles) - This method copies the style information of a specified range of cells to clipboard. The range of cells to be copied is given to the method as the first parameter. The second parameter represents a Boolean value. The base style will be copied along with default settings, if it is set to true. Only the default settings that were initialized to the cell are copied if it is set to false.



The following code example shows how to call this method:



{% highlight c# %}



GridRangeInfoList list = new GridRangeInfoList();

list.Add(GridRangeInfo.Cell(2, 2));

this.gridControl1.Model.CutPaste.CopyCellsToClipboard(list, true);

{% endhighlight %}

{% highlight vbnet %}



Dim list As New GridRangeInfoList()

list.Add(GridRangeInfo.Cell(2, 2))

Me.gridControl1.Model.CutPaste.CopyCellsToClipboard(list, True)
{% endhighlight %}


* CanCut-This method checks if there are selected ranges that can be cut or if the current cell's contents can be cut. The return type of this method is Boolean. If it returns true, it indicates that the content in the selected range of cells or the current cell's content can be cut. This method returns false, when no selected range is available to cut.


> Note: Any content cut is pasted to the clipboard by default.

The following code example shows how to call this method:

{% highlight c# %}



this.gridControl1.Model.CutPaste.CanCut();

{% endhighlight %}

{% highlight vbnet %}



Me.gridControl1.Model.CutPaste.CanCut()
{% endhighlight %}

* Cut - This method cuts the content of the selected cells and the current cell, and pastes them to the clipboard.

The following code example shows how to call this method:



{% highlight c# %}



this.gridControl1.Model.CutPaste.Cut();
{% endhighlight %}


{% highlight vbnet %}



Me.gridControl1.Model.CutPaste.Cut()

{% endhighlight %}

* CutRange(GridRangeInfo rangelist) - This method cuts the content of a specified range of cells and pastes it to the clipboard. The range of cells to be cut is specified as a parameter. 

The following code examples show how to call this method:

{% highlight c# %}



this.gridControl1.Model.CutPaste.CutRange(GridRangeInfo.Row(4), false);

{% endhighlight %}

{% highlight vbnet %}



Me.gridControl1.Model.CutPaste.CutRange(GridRangeInfo.Row(4), False)

{% endhighlight %}

* CanPaste - This method checks for the most recent content in the clipboard that can be pasted in the grid. The return type of this method is Boolean. If it returns true, it indicates that the contents in the clipboard can be pasted into the grid. If there is no content available in the clipboard to paste, this method returns false.

The following code example shows how to call this method:

{% highlight c# %}



this.gridControl1.Model.CutPaste.CanPaste();

{% endhighlight %}

{% highlight vbnet %}



Me.gridControl1.Model.CutPaste.CanPaste()

{% endhighlight %}

* Paste-This method pastes the content from the clipboard into the grid at the current selected range or current cell.


> Note: It is not mandatory to call this method after CanPaste method. If there is no content in the clipboard to be pasted, this method will not respond.

The following code examples show how to call this method:



{% highlight c# %}



this.gridControl1.Model.CutPaste.Paste();

{% endhighlight %}

{% highlight vbnet %}



Me.gridControl1.Model.CutPaste.Paste()
{% endhighlight %}

## Clipboard Events

Essential Grid exposes various events to manage the clipboard content while performing cut, paste and copy operations. Following is the list of clipboard events:

* ClipboardCanCopy - This event is to be handled when the CanCopy method of grid is called.
* ClipboardCanPaste - This event is to be handled when the CanPaste method of grid is called.
* ClipboardCanCut - This event is to be handled when the CanCut method of grid is called.
* ClipboardCopy - This event is to be handled when the Copy method of grid is called.
* ClipboardCut - This event is to be handled when the Cut method of grid is called.
* ClipboardPaste - This event is to be handled when the Paste method of grid is called.
* ClipboardPasted - This event is to be handled after a paste operation.