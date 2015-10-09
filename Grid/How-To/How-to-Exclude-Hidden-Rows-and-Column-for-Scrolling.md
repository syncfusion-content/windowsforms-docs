---
layout: post
title: How-to-Exclude-Hidden-Rows-and-Column-for-Scrollin | WindowsForms | Syncfusion
description: how to exclude hidden rows and column for scrolling? 
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Exclude Hidden Rows and Column for Scrolling? 

When scrolling the grid, hidden rows and columns are considered as existing rows and columns. This takes a long time to scroll the grid. To avoid this and save time, you can exclude hidden rows and columns for scrolling. You can achieve this by using HScrollPixel and VScrollPixel properties. To exclude hidden columns for scrolling, set HScrollPixel to true. Similarly, to exclude hidden rows for scrolling, set VScrollPixel to true.    

The following code illustrates how to exclude hidden columns for scrolling: 

{% highlight c# %}



private void Form1_Load(object sender, System.EventArgs e)

{

this.gridControl1.HScrollPixel = true;

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load



      Me.gridControl1.HScrollPixel = True;



    End Sub
{% endhighlight  %}
The following code illustrates how to exclude hidden rows for scrolling: 

{% highlight c# %}



private void Form1_Load(object sender, System.EventArgs e)

{

this.gridControl1.VScrollPixel = true;

}

{% endhighlight  %}

{% highlight vbnet %}



Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load



      Me.gridControl1.VScrollPixel = True;




    End Sub

	  {% endhighlight  %}

