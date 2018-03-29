---
layout: post
title: How-to-Include-an-Icon-in-the-Column-Header | Windows Forms | Syncfusion
description: how to include an icon in the column header
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to Include an Icon in the Column Header

You can place images in cells by specifying style.ImageIndex and style.ImageList values for the cell, provided the style.CellType is either "Static" or "text box". To make your header cell hold an icon, you can make it "Static" and set these properties appropriately. For GridDataBoundGrid, setting such properties on a single cell will require the use of PrepareViewStyleInfo event.

{% tabs %}
{% highlight c# %}

private void gridDataBoundGrid1_PrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)
{
     if(e.RowIndex == 0 )
     {

//Sets Cell as Static.
          e.Style.CellType = "Static";
          e.Style.CellAppearance = GridCellAppearance.Raised;

//Assigns an icon image to the cell.
          if(e.ColIndex == 3)
          {
               e.Style.ImageList = imageList;
               e.Style.ImageIndex = 1;
}}}

{% endhighlight %}

{% highlight vb %}

Private Sub gridDataBoundGrid1_PrepareViewStyleInfo(ByVal sender As Object, ByVal e As GridPrepareViewStyleInfoEventArgs)

'Sets Cell as Static.
If e.RowIndex = 0 Then
e.Style.CellType = "Static"
e.Style.CellAppearance = GridCellAppearance.Raised

'Assigns an icon image to the cell.
If e.ColIndex = 3 Then
e.Style.ImageList = Me.imageList
e.Style.ImageIndex = 1
End If
End If

' GridDataBoundGrid1_PrepareViewStyleInfo
End Sub 

{% endhighlight %}
{% endtabs %}
