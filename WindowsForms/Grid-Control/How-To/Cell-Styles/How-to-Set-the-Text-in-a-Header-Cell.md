---
layout: post
title: How to Set Header Cell Text in WinForms Grid Control | Syncfusion®
description: Set the text in a header cell in Syncfusion® Windows Forms Grid Control using header cell properties and customize header content and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Set Header Cell Text in Windows Forms Grid Control

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
