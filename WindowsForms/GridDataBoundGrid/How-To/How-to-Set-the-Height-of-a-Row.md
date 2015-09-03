---
layout: post
title: How-to-Set-the-Height-of-a-Row
description: how to set the height of a row
platform: WindowsForms
control: Tools
documentation: ug
---

# How to Set the Height of a Row

### Introduction

To explicitly set the height of a particular row, use the Model.RowHeights collection.

#### Example

{% highlight c# %}



//Sets height of row 3 to 40.
this.gridDataBoundGrid1.Model.RowHeights[3] = 40; 



//Sets height of header row 30.

this.gridDataBoundGrid1.Model.RowHeights[0] = 30; 


{% endhighlight %}

{% highlight vbnet %}



'Sets height of row 3 to 40.
Me.GridDataBoundGrid1.Model.RowHeights(3) = 40 



'Sets height of header row 30.

Me.GridDataBoundGrid1.Model.RowHeights(0) = 30 



{% endhighlight %}
