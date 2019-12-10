---
layout: post
title: Cell Styles in GridControl
description: how to set the text in a header cell
platform: windowsforms
control: Grid
documentation: ug
---

# How to set the text in a header cell

In GridControl, values in header cells are set just as in any other cell. 

Use an indexer on your GridControl with the row index set to 0.

{% tabs %}
{% highlight c# %}

//Sets Text property in the 5th column header cell.
gridControl1[0, 5].Text = "HeaderTextForColumn5";

{% endhighlight  %}

{% highlight vb %}

'Sets Text property in the 5th column header cell.
GridControl1(0, 5).Text = "HeaderTextForColumn5"

{% endhighlight  %}
{% endtabs %}
