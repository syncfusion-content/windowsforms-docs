---
layout: post
title: How-to-QueryCellFormattedText-and-SaveCellFormattedText
description: how to querycellformattedtext and savecellformattedtext
platform: windowsforms
control: Tools
documentation: ug
---

# How to QueryCellFormattedText and SaveCellFormattedText

### Introduction

The purpose of QueryCellFormattedText is to take data, which is present in the Total Marks and convert it to Percentage for display. The SaveCellFormattedText takes the units that are entered by the user in Percentage and converts them to Total Marks so that they can be saved as Total Marks.

#### Example

{% highlight c# %}



private void Model_QueryCellFormattedText(object sender, Syncfusion.Windows.Forms.Grid.GridCellTextEventArgs e)

{

       if(e.Style.CellValueType==typeof(double) && e.Style.Text.Length > 0)

       {

//Converts the cell value to percentage for display.

           double dVal = (double)e.Style.CellValue/500 *100; 

           e.Text = dVal.ToString("##.##"); 

           e.Handled = true;

       }

}

private void Model_SaveCellFormattedText(object sender, Syncfusion.Windows.Forms.Grid.GridCellTextEventArgs e)

{

       if(e.Style.CellValueType==typeof(double) && e.Style.Text.Length > 0)

       {

//Converts the Cell Value again from percentage to its original format.

               double dVal = double.Parse(e.Text)/100 *500;



//Saves the converted cell value.

               e.Style.CellValue = dVal; 

               e.Handled = true;

       }

}


{% endhighlight %}

{% highlight vbnet %}



 Private Sub Model_QueryCellFormattedText(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms. 

Grid.GridCellTextEventArgs)

    If e.Style.CellValueType Is GetType(Double) AndAlso e.Style.Text.Length > 0 Then



'Converts the cell value to percentage for display.

        Dim dVal As Double = CDbl(e.Style.CellValue)/500 *100

        e.Text = dVal.ToString("##.##")

        e.Handled = True

    End If

End Sub



Private Sub Model_SaveCellFormattedText(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridCellTextEventArgs)

    If e.Style.CellValueType Is GetType(Double) AndAlso e.Style.Text.Length > 0 Then



'Converts the Cell Value again from percentage to its original format.

        Dim dVal As Double = Double.Parse(e.Text)/100 *500



'Saves the converted cell value.

        e.Style.CellValue = dVal

        e.Handled = True

    End If

End Sub


{% endhighlight %}

