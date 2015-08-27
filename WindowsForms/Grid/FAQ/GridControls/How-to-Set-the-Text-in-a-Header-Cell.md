---
layout: post
title: How-to-Set-the-Text-in-a-Header-Cell
description: how to set the text in a header cell
platform: windowsforms
control: Tools
documentation: ug
---

# How to Set the Text in a Header Cell

## Introduction

In GridControl, values in header cells are set just as in any other cell. 

### Example

Use an indexer on your GridControl with the row index set to 0.

{% highlight c# %}



//Sets Text property in the 5th column header cell.

gridControl1[0, 5].Text = "HeaderTextForColumn5";

{% endhighlight  %}

{% highlight vbnet %}



'Sets Text property in the 5th column header cell.

GridControl1(0, 5).Text = "HeaderTextForColumn5"

{% endhighlight  %}

