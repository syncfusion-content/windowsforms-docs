---
layout: post
title: User clicking in Windows Forms DataBoundGrid | Syncfusion
description: Learn about How to use Pushbutton in a Column and Catch the User Clicking it support in Syncfusion Windows Forms GridDataBoundGrid(Classic) control and more.
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# User clicking in Windows Forms DataBoundGrid

This page explains How to Use PushButton in a Column and Catch the User Clicking it and more details.

## How to Use PushButton in a Column and Catch the User Clicking it

Set the [CellType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfo.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableCellStyleInfo_CellType) property in column style to "PushButton" and handle grids CellButtonClicked event. Use Description property of the column style to specify the text that is displayed on the button. To access a column's style, use either [GridDataBoundGrid.GridBoundColumns](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridDataBoundGrid.html#Syncfusion_Windows_Forms_Grid_GridDataBoundGrid_GridBoundColumns) or [GridDataBoundGrid.Binder.InternalColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridDataBoundGrid.html#Syncfusion_Windows_Forms_Grid_GridDataBoundGrid_Binder) depending upon whether you have explicitly added the GridBoundColumns or not.

{% tabs %}
{% highlight c# %}

GridStyleInfo style = gridDataBoundGrid1.GridBoundColumns[1].StyleInfo;
style.CellType = "PushButton";
style.Description = "Push Me!";
gridDataBoundGrid1.CellButtonClicked += new GridCellButtonClickedEventHandler(grid_CellButtonClicked);

//...
private void grid_CellButtonClicked(object sender, GridCellButtonClickedEventArgs e)
{
   string s = string.Format("You clicked ({0},{1}).", e.RowIndex, e.ColIndex);
   MessageBox.Show(s);

}

{% endhighlight %}

{% highlight vb %}

Dim style As GridStyleInfo = gridDataBoundGrid1.GridBoundColumns(1).StyleInfo
style.CellType = "PushButton" 
style.Description = "Push Me!"
AddHandler gridDataBoundGrid1.CellButtonClicked, AddressOf grid_CellButtonClicked

'...
Private Sub grid_CellButtonClicked(sender As Object, e As GridCellButtonClickedEventArgs)
Dim s As String = String.Format("You clicked ({0},{1}).", e.RowIndex, e.ColIndex)
MessageBox.Show(s)

'Grid_CellButtonClicked.
End Sub 

{% endhighlight %}
{% endtabs %}
