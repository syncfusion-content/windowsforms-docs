---
layout: post
title: Text-Box
description: text box
platform: windowsform
control: Grid
documentation: ug
---

# Text Box

Text Box cell type displays text and images that can be edited in place. The following code example illustrates how to set the cell type to TextBox.

{% highlight c# %}



gridControl1[rowIndex,colIndex].Text = "TextBox";

gridControl1[rowIndex,colIndex].CellType = "TextBox";



//Text box with image - assumes ImageList set the same Static sample code.

gridControl1[rowIndex,colIndex + 1].Text = "TextBox/Image";

gridControl1[rowIndex,colIndex].CellType = "TextBox";

gridControl1[rowIndex,colIndex + 1].ImageIndex = 1;

{% endhighlight %}

{% highlight vbnet %}



gridControl1(rowIndex, colIndex).Text = "TextBox"

gridControl1(rowIndex, colIndex).CellType = "TextBox"



'Text box with image - assumes ImageList set the same Static sample code.

gridControl1(rowIndex, colIndex + 1).Text = "TextBox/Image"

gridControl1(rowIndex, colIndex).CellType = "TextBox"

gridControl1(rowIndex, colIndex + 1).ImageIndex = 1

{% endhighlight %}

 ![](Adding-Special-Controls-to-Grid-Cells_images/Adding-Special-Controls-to-Grid-Cells_img22.png)


