---
layout: post
title: Move the Next Row from the Last Cell in Grid Control | Syncfusion
description: How to move to the next row from the last cell of a row in Syncfusion Windows Forms Grid control, and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to move to the next row from the last cell of a row

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
