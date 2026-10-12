---
layout: post
title: Header Cell Appearance in WinForms GridDataBoundGrid | Syncfusion®
description: Change the appearance of a single header cell in Syncfusion® Windows Forms GridDataBoundGrid by customizing styles through the PrepareViewStyleInfo event.
platform: windowsforms
control: GridDataBoundGrid
documentation: ug
---

# Change a Single Header Cell Appearance in WinForms GridDataBoundGrid

This page explains How to Change the Appearance of a Single Header Cell and more details.

## How to Change the Appearance of a Single Header Cell

To make changes to individual cells (header cells or otherwise), you must implement PrepareViewStyleInfo event.

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
