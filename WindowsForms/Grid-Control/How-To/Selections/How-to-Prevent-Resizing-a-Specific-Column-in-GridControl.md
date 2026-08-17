---
layout: post
title: Prevent Column Resizing in Windows Forms GridControl | Syncfusion®
description: Prevent resizing of specific columns in Syncfusion® Windows Forms GridControl by handling the ResizingColumns event and customizing resize behavior and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Prevent Resizing a Specific Column in Windows Forms GridControl

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
