---
layout: post
title: How-to-change-the-row-header-to-display-line-numbers-instead-of-the-black-triangle-in-GridDataBoundGrid | Windows Forms | Syncfusion
description: how to change the row header to display line numbers instead of the black triangle in griddataboundgrid
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to change the row header to display line numbers instead of the black triangle in GridDataBoundGrid

You can achieve this by setting the row header base style to Header, and handling PrepareViewStyleInfo event handlerto set the line numbers. Refer to the code snippet below, which illustrates this.

{% highlight c# %}



//In the Form Load.

private void Form1_Load(object sender, System.EventArgs e)

{

this.gridDataBoundGrid1.DataSource = GetTable();

this.gridDataBoundGrid1.BaseStylesMap["Row Header"].StyleInfo.CellType = "Header";

}



//GridPrepareViewStyleInfo.

private void grid_PrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)

{

if (e.ColIndex == 0 && e.RowIndex > 0)

{

e.Style.Text = e.RowIndex.ToString();

e.Style.Font.Bold = false;

}

}

{% endhighlight %}

{% highlight vbnet %}



'In the Form Load.

Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load

Me.gridDataBoundGrid1.DataSource = GetTable()

Me.gridDataBoundGrid1.BaseStylesMap("Row Header").StyleInfo.CellType = "Header"

End Sub 'Form1_Load



'GridPrepareViewStyleInfo.

Private Sub gridDataBoundGrid1_PrepareViewStyleInfo(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridPrepareViewStyleInfoEventArgs) Handles gridDataBoundGrid1.PrepareViewStyleInfo

If e.ColIndex = 0 AndAlso e.RowIndex > 0 Then

e.Style.Text = e.RowIndex.ToString()

e.Style.Font.Bold = False

End If

End Sub

{% endhighlight %}

