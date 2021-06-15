---
layout: post
title: How to Print a Grid in Windows Forms Grid Control | Syncfusion
description: Learn here about how to print a grid in Syncfusion Essential Studio Windows Forms Grid Control, and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Print a Grid

GridPrintDocument class will allow you to [print](http://help.syncfusion.com/windowsforms/grid/virtual-grid#print-preview-and-printing) your grids. Here is a button click event handler that will show you how to use this class.

{% tabs %}
{% highlight c# %}

private void menuItem13_Click(object sender, System.EventArgs e)
{
	if (this.grid != null)
	{
		try
		{
			//Creates a print document for the grid.
			GridPrintDocument pd = new GridPrintDocument(this.grid);
	
			//Creates Print Dialog.
			PrintDialog dlg = new PrintDialog();
	
			//Assigns the print document to the dialog object.
			dlg.Document = pd;
	
			//Applies Dialog Settings.
			dlg.AllowSelection = true;
			dlg.AllowSomePages = true;
			DialogResult result = dlg.ShowDialog();
	
			if (result == DialogResult.OK)
			{
				//Prints the Grid Document.
				pd.Print();
			}
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
	
			'Creates a print document for the grid.
            Dim pd As New GridPrintDocument(Me.grid)

			'Creates Print Dialog.
            Dim dlg As New PrintDialog

			'Assign the print document to the dialog object.
            dlg.Document = pd
	
			'Applies Dialog Settings.
            dlg.AllowSelection = True
            dlg.AllowSomePages = True
            Dim result As DialogResult = dlg.ShowDialog()
            If result = DialogResult.OK Then
                ' Print the Grid Document.
                pd.Print()
            End If
        Catch ex As Exception
            MessageBox.Show(("An error occurred - " + ex.Message))
        End Try
    End If
End Sub 

{% endhighlight %}
{% endtabs %}