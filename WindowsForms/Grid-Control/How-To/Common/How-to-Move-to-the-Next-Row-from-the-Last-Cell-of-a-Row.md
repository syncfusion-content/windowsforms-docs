---
layout: post
title: Move to the Next Row in Windows Forms GridControl | Syncfusion®
description: Move to the next row from the last cell in Syncfusion® Windows Forms GridControl using the WrapCellBehavior property and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Move to the Next Row in Windows Forms GridControl

## Introduction

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
