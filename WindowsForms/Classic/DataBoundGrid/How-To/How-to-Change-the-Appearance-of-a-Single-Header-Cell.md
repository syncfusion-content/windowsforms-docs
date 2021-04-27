---
layout: post
title: Appearance of a Single Header Cell DataBoundGrid | Syncfusion
description: Learn about How to Change the Appearance of a Single Header Cell support in Syncfusion Windows Forms GridDataBoundGrid(Classic) control and more details.
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# Appearance of a Single Header Cell DataBoundGrid

To make changes to individual cells (header cells or otherwise), you must implement PrepareViewStyleInfo event.

## How to Change the Appearance of a Single Header Cell

This page explains about How to Change the Appearance of a Single Header Cell and more details.

{% tabs %}
{% highlight c# %}

private void gridDataBoundGrid1_PrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)
{ 
    if(e.ColIndex == 2 && e.RowIndex == 0)
    { 

//Changes Font style, Font size, orientation, Text color of column header 3.
        e.Style.Font.Italic = true; 
        e.Style.Font.Bold = true; 
        e.Style.Font.Orientation = 270; 
        e.Style.TextColor = Color.Red; 

      }

}

{% endhighlight %}

{% highlight vb %}

Private Sub gridDataBoundGrid1_PrepareViewStyleInfo(ByVal sender As Object, ByVal e As GridPrepareViewStyleInfoEventArgs)
If e.ColIndex = 2 And e.RowIndex = 0 Then

'Changes Font style, Font size, orientation, Text color of column header 3.
e.Style.Font.Italic = True
e.Style.Font.Bold = True
e.Style.Font.Orientation = 270
e.Style.TextColor = Color.Red
End If
End Sub

{% endhighlight %}
{% endtabs %}
