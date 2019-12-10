---
layout: post
title: How-to-Exclude-Hidden-Rows-and-Column-for-Scrollin | Windows Forms | Syncfusion
description: how to exclude hidden rows and column for scrolling? 
platform: windowsforms
control: Grid
documentation: ug
---

# How to exclude hidden rows and columns for scrolling 

When scrolling the grid, hidden rows and columns are considered as existing rows and columns. This takes a long time to scroll the grid. To avoid this and save time, you can exclude hidden rows and columns for scrolling. You can achieve this by using HScrollPixel and VScrollPixel properties. To exclude hidden columns for scrolling, set HScrollPixel to true. Similarly, to exclude hidden rows for scrolling, set VScrollPixel to true.    

{% tabs %}
{% highlight c# %}

private void Form1_Load(object sender, System.EventArgs e)
{
    this.gridControl1.HScrollPixel = true;
}

{% endhighlight %}

{% highlight vb %}

Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
Me.gridControl1.HScrollPixel = True;
End Sub
{% endhighlight  %}
{% endtabs %}

{% tabs %}
{% highlight c# %}

private void Form1_Load(object sender, System.EventArgs e)
{
    this.gridControl1.VScrollPixel = true;
}
{% endhighlight  %}

{% highlight vb %}

Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
Me.gridControl1.VScrollPixel = True;
End Sub
{% endhighlight  %}
{% endtabs %}
