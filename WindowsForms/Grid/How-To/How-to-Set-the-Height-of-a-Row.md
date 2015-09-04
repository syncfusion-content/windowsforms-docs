---
layout: post
title: How-to-Set-the-Height-of-a-Row
description: how to set the height of a row
platform: windowsforms
control: Grid
documentation: ug
---

# How to Set the Height of a Row

## Introduction

Changing a row's height is simple whether you are using the designer or code. From the designer, use RowHeightEntries collection. To explicitly set height of the particular row from code, use GridControl.RowHeights collection.



### Example



{% highlight c# %}



//Sets height of row 3 to 40.
this.gridControl1.RowHeights[3] = 40; 



//Sets height of header row 30.

this.gridControl1.RowHeights[0] = 30; 
{% endhighlight  %}


{% highlight vbnet %}



'Sets height of row 3 to 40.
Me.GridControl1.RowHeights(3) = 40 



'Sets height of header row 30.

Me.GridControl1.RowHeights(0) = 30 

{% endhighlight  %}

