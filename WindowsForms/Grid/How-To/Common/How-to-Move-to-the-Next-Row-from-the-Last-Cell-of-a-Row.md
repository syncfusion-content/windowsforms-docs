---
layout: post
title: How-to-Move-to-the-Next-Row-from-the-Last-Cell-of-
description: how to move to the next row from the last cell of a row
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Move to the Next Row from the Last Cell of a Row

### Introduction

Set the WrapCellBehavior property to wrap a row when the Tab or Enter key is pressed.

#### Example

{% highlight c# %}



//Sets WrapCellBehaviour property to Wrap Row to move to the next row.

this.grid.Model.Options.WrapCellBehavior = GridWrapCellBehavior.WrapRow; 


{% endhighlight %}

{% highlight vbnet %}



'Sets WrapCellBehaviour property to Wrap Row to move to the next row.

Me.grid.Model.Options.WrapCellBehavior = GridWrapCellBehavior.WrapRow


{% endhighlight %}

