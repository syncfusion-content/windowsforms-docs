---
layout: post
title: How-to-Change-the-Color-of-All-Headers | Windows Forms | Syncfusion
description: Learn here all about how to change the color of all headers of Syncfusion Windows Forms Gridcontrol and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to change the color of all headers in WinForms Gridcontrol

The styles of the Header cells are controlled by base styles. The "Header" base style will affect all column headers including cell 0,0. The "Column Header" base style will affect the column headers excluding cell 0,0. The "RowHeader" base style will affect all row headers excluding cell 0,0.

{% tabs %}
{% highlight c# %}

//Column headers including cell 0,0.
this.grid.BaseStylesMap["Header"].StyleInfo.BackColor = Color.Blue;

//Column headers excluding cell 0,0.
this.grid.BaseStylesMap["Column Header"].StyleInfo.BackColor = Color.Red;

//Row headers excluding cell 0,0.
this.grid.BaseStylesMap["Row Header"].StyleInfo.BackColor = Color.Green;

{% endhighlight %}

{% highlight vb %}

'Column headers including cell 0,0.
Me.grid.BaseStylesMap("Header").StyleInfo.BackColor = Color.Blue

'Column headers excluding cell 0,0.
Me.grid.BaseStylesMap("Column Header").StyleInfo.BackColor = Color.Red

'Row headers excluding cell 0,0.
Me.grid.BaseStylesMap("Row Header").StyleInfo.BackColor = Color.Green

{% endhighlight %}
{% endtabs %}