---
layout: post
title: How-to-Use-a-PushButton-in-a-Cell-and-Catch-the-Us
description: how to use a pushbutton in a cell and catch the user clicking it
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Use a PushButton in a Cell and Catch the User Clicking It

## Introduction

Set the CellType property in the cell style to "PushButton" and handle grids CellButtonClicked event. Use the Description property of the cell style to specify the text that is to be displayed on the button.

### Example

{% highlight c# %}



gridControl1[4, 6].CellType = "PushButton";

gridControl1[4, 6].Description = "Push Me!";



gridControl1.CellButtonClicked += new GridCellButtonClickedEventHandler(gridControl1_CellButtonClicked);



//...

private void gridControl1_CellButtonClicked(object sender, GridCellButtonClickedEventArgs e)

   {

       string s = string.Format("You clicked ({0},{1}).", e.RowIndex, e.ColIndex);

       MessageBox.Show(s);

   }

{% endhighlight  %}

{% highlight vbnet %}



GridControl1(4, 6).CellType = "PushButton" 

GridControl1(4, 6).Description = "Push Me!"



AddHandler GridControl1.CellButtonClicked, AddressOf gridControl1_CellButtonClicked



    '...

    Private Sub gridControl1_CellButtonClicked(sender As Object, e As GridCellButtonClickedEventArgs)

        Dim s As String = String.Format("You clicked ({0},{1}).", e.RowIndex, e.ColIndex)

        MessageBox.Show(s)



'GidControl1_CellButtonClicked.

    End Sub 

{% endhighlight  %}

