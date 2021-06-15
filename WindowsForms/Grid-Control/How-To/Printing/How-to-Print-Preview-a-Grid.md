---
layout: post
title: How to Print Preview a Grid in Windows Forms Grid Control | Syncfusion
description: Learn here about how to print preview a grid in Syncfusion Essential Studio Windows Forms Grid Control, and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Print Preview a Grid

GridPrintDocument class will allow you to [print](/windowsforms/gridgrouping/printing) preview your grids. Here is a button click event handler that will show you how to use this class.

{% tabs %}
{% highlight c# %}

private void menuItem13_Click(object sender, System.EventArgs e)
{
    if (this.grid != null)
    {
        try
        {
            GridPrintDocument pd = new GridPrintDocument(this.grid, true);
	
			//Creates a PrintPreviewDialog object.
             PrintPreviewDialog dlg = new PrintPreviewDialog();

			//Initializes it with the print document to be previewed.
             dlg.Document = pd;

			//Displays the preview dialog.
             dlg.ShowDialog();
        }
        catch(Exception ex)
        {
            MessageBox.Show("An error occurred - " + ex.Message);
        }
    }	
}
		
{% endhighlight %}

{% highlight vb %}

Private Sub menuItem13_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If Not (Me.grid Is Nothing) Then
            Try
                Dim pd As New GridPrintDocument(Me.grid  True)
				
				'Creates a PrintPreviewDialog object.
                Dim dlg As New PrintPreviewDialog

				'Initializes it with the print document to be previewed.
                dlg.Document = pd

				'Displays the preview dialog.
                dlg.ShowDialog()
            Catch ex As Exception
                MessageBox.Show(("An error occurred - " + ex.Message))
            End Try
        End If
End Sub 

{% endhighlight %}
{% endtabs %}
