---
layout: post
title: Prevent Resizing a Specific Column in WinForms GridControl| Syncfusion
description: How to prevent resizing a specific column in Syncfusion Essential Windows Forms Grid control, and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to prevent resizing a specific column in GridControl

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
