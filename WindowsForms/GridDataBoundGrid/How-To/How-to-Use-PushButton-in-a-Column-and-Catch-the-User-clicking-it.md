---
layout: post
title: How-to-Use-PushButton-in-a-Column-and-Catch-the-User-clicking-it
description: how to use pushbutton in a column and catch the user clicking it
platform: windowsforms
control: Tools
documentation: ug
---

# How to Use PushButton in a Column and Catch the User Clicking It

### Introduction

Set the CellType property in column style to "PushButton" and handle grids CellButtonClicked event. Use Description property of the column style to specify the text that is displayed on the button. To access a column's style, use either GridDataBoundGrid.GridBoundColumns or GridDataBoundGrid.Binder.InternalColumn depending upon whether you have explicitly added the GridBoundColumns or not.

#### Example

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

{% highlight vbnet %}



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

