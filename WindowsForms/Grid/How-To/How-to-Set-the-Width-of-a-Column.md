---
layout: post
title: How-to-Set-the-Width-of-a-Column
description: how to set the width of a column
platform: windowsforms
control: Grid
documentation: ug
---

# How to Set the Width of a Column

## Introduction

Changing a column's width is simple whether you are using the designer or code. In the designer, use ColWidthsEntries collection. In code, use GridControl.ColWidths collection to specify the width of a column. 

### Example



{% highlight c# %}



//Sets size of column 3 to 250.
this.gridControl1.ColWidths[3] = 250;

{% endhighlight  %}

{% highlight vbnet %}



'Sets size of column 3 to 250.
Me.GridControl1.ColWidths(3) = 250 


{% endhighlight  %}
