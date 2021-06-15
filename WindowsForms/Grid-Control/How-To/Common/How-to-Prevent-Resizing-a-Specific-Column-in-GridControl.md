---
layout: post
title: How to Prevent Resizing a Specific Column in GridControl | Syncfusion
description: Learn here all about how to prevent resizing a specific column in Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Prevent Resizing a Specific Column in Windows Forms GridControl

### Introduction

Handle ResizingColumns event and cancel the resizing for specific columns.

{% tabs %}
{% highlight c# %}

//Handles ResizingColumns event.
 private void grid_ResizingColumns(object sender, GridResizingColumnsEventArgs e)
{
	//Disables Column Resizing for the third column from the Right.
    if(e.Columns.Right == 2)
    {
        e.Cancel = true;
    }
}

{% endhighlight %}

{% highlight vb %}

'Handles ResizingColumns event.
Private Sub grid_ResizingColumns(ByVal sender As Object, ByVal e As GridResizingColumnsEventArgs)

	//Disables Column Resizing for the third column from the Right.
      If e.Columns.Right = 2 Then
          e.Cancel = True
      End If
End Sub
{% endhighlight %}
{% endtabs %}
