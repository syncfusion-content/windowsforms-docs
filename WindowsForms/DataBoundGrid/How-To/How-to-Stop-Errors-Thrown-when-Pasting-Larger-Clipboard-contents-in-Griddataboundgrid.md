---
layout: post
title: How-to-Stop-Errors-Thrown-when-Pasting-Larger-Clipboard-contents-in-Griddataboundgrid
description: how to stop errors thrown when pasting larger clipboard contents in griddataboundgrid
platform: WindowsForms
control: DataBoundGrid
documentation: ug
---

# How to Stop Errors Thrown when Pasting Larger Clipboard Contents in GridDataBoundGrid

### Introduction

IndexOutOfRangeException is thrown when trying to paste clipboard contents that are greater than the number of columns and rows that are available to accommodate the contents. To stop the exception, a condition check at Model.PasteCellText handler will do good.

#### Example

{% highlight c# %}



private void Model_PasteCellText(object sender, Syncfusion.Windows.Forms.Grid.GridPasteCellTextEventArgs e)

{

//Checks Whether the RowIndex crosses the upper bound.

     if(e.RowIndex >= this.gridDataBoundGrid1.Model.RowCount)

     {

//If rowindex falls beyond upper bound, Cancels and Aborts the Paste process.

         MessageBox.Show("There is no enough rows to paste the rest of the contents");

         e.Cancel = true;

         e.Abort = true;

     }

}


{% endhighlight %}

{% highlight vbnet %}



Private Sub Model_PasteCellText(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridPasteCellTextEventArgs)



'Checks Whether the RowIndex crosses the upper bound.  

    If e.RowIndex >= Me.gridDataBoundGrid1.Model.RowCount Then



'If rowindex falls beyond upper bound, Cancels and Aborts the Paste process.

        MessageBox.Show("There is no enough rows to paste the rest of the contents")

        e.Cancel = True

        e.Abort = True

    End If

End Sub


{% endhighlight %}

