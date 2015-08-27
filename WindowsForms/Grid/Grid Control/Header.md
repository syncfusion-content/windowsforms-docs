---
layout: post
title: Header
description: header
platform: windowsform
control: Grid
documentation: ug
---

# Header



Header cell type displays static text similar to static CellType, but the Header cell type, in addition, has a button-like border that can have a depressed state. The following code example illustrates how to set the cell type to Header.

{% highlight c# %}



//Sets Cell Type as "Header".

gridControl1[rowIndex,colIndex].Text = "HeaderText";



//Sets Formatting properties.

gridControl1[rowIndex,colIndex].CellType = "Header";

gridControl1[rowIndex,colIndex].BackColor = Color.FromArgb(208, 208, 208);
{% endhighlight %}


{% highlight vbnet %}



'Sets Cell Type as "Header".

gridControl1(rowIndex, colIndex).Text = "HeaderText"



'Sets Formatting properties.

gridControl1(rowIndex, colIndex).CellType = "Header"

gridControl1(rowIndex, colIndex).BackColor = Color.FromArgb(208, 208, 208)
{% endhighlight %}


 ![](Adding-Special-Controls-to-Grid-Cells_images/Adding-Special-Controls-to-Grid-Cells_img9.png)



