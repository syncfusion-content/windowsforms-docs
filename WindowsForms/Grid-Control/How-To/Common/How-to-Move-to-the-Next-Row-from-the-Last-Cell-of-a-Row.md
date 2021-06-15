---
layout: post
title: How to Move to the Next Row from the Last Cell of a Row | Syncfusion
description: Learn here all about how to move to the next row from the last cell of a row in Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Move to the Next Row from the Last Cell of a Row

### Introduction

Set the WrapCellBehavior property to wrap a row when the Tab or Enter key is pressed.

{% tabs %}
{% highlight c# %}

//Sets WrapCellBehavior property to Wrap Row to move to the next row.
this.grid.Model.Options.WrapCellBehavior = GridWrapCellBehavior.WrapRow; 

{% endhighlight %}

{% highlight vb %}

'Sets WrapCellBehavior property to Wrap Row to move to the next row.
Me.grid.Model.Options.WrapCellBehavior = GridWrapCellBehavior.WrapRow

{% endhighlight %}
{% endtabs %}
