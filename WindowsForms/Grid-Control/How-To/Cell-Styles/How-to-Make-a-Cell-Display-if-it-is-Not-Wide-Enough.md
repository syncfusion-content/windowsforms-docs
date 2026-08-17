---
layout: post
title: How to Show Ellipsis Text in Windows Forms GridControl | Syncfusion®
description: Display ellipsis text for cell content in Syncfusion® Windows Forms GridControl when the cell width is not sufficient and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Show Ellipsis Text in Windows Forms GridControl

You must set GridStyleInfo'sTrimming property to achieve this. To enable trimming for the whole grid, set this property in TableStyle. To enable trimming on a column, row, or cell basis, set this style property using techniques that are appropriate for the grid that you are using as discussed in the topics on changing BackColor.

{% tabs %}
{% highlight c# %}

//Sets Ellipsis Text for the whole grid.
this.grid.TableStyle.Trimming = StringTrimming.EllipsisWord;

{% endhighlight %}

{% highlight vb %}

'Sets Ellipsis Text for the whole grid.
Me.grid.TableStyle.Trimming = StringTrimming.EllipsisWord

{% endhighlight %}
{% endtabs %}
