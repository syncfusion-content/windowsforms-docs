---
layout: post
title: Print Grid and Set Options in Windows Forms Grid Control | Syncfusion®
description: Describe printing a grid in Syncfusion® Windows Forms Grid Control using GridPrintDocument class, configure print settings, headers, and lines.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Print Grid and Customize Options in Windows Forms Grid Control

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

Essential Grid provides support to print column and row header and horizontal and vertical lines. 

## Printing column header

You can print column header using PrintColumnHeader property. 

The following code illustrates how to print column header in Grid Control: 

{% tabs %}
{% highlight c# %}

gridControl1.PrintColumnHeader = true;

{% endhighlight %}

{% highlight vb %}

gridControl1.PrintColumnHeader = True

{% endhighlight %}
{% endtabs %}

The following code illustrates how to print column header in GridDataBoundGrid: 

{% tabs %}
{% highlight c# %}

gridDataBoundGrid.PrintColumnHeader = true;

{% endhighlight %}

{% highlight vb %}

gridDataBoundGrid.PrintColumnHeader = True

{% endhighlight %}
{% endtabs %}

The following code illustrates how to print the column header GridGroupingControl: 

{% tabs %}
{% highlight c# %}

gridGroupingControl1.PrintColumnHeader = true;

{% endhighlight %}

{% highlight vb %}

gridGroupingControl1.PrintColumnHeader = True

{% endhighlight %}
{% endtabs %}

## Printing row header

You can print row header using PrintRowHeader__property. 

The following code illustrates how to print row header in Grid Control: 

{% tabs %}
{% highlight c# %}

gridControl1.PrintRowHeader = true;

{% endhighlight %}

{% highlight vb %}

gridControl1.PrintRowHeader = True

{% endhighlight %}
{% endtabs %}

The following code illustrates how to print the row header in GridDataBoundGrid: 

{% tabs %}
{% highlight c# %}

gridDataBoundGrid.PrintRowHeader = true;

{% endhighlight %}

{% highlight vb %}

gridDataBoundGrid.PrintRowHeader = True

{% endhighlight %}
{% endtabs %}

The following code illustrates how to print row header GridGroupingControl: 

{% tabs %}
{% highlight c# %}

gridGroupingControl1.PrintRowHeader = true;

{% endhighlight %}

{% highlight vb %}

gridGroupingControl1.PrintRowHeader = True

{% endhighlight %}
{% endtabs %}

## Printing horizontal lines

You can print horizontal lines using PrintHorizontalLines property. 

The following code illustrates how to print horizontal lines in Grid Control: 

{% tabs %}
{% highlight c# %}

gridControl1.PrintHorizontalLines = true; 

{% endhighlight %}

{% highlight vb %}

gridControl1.PrintHorizontalLines = True

{% endhighlight %}
{% endtabs %}

The following code illustrates how to print horizontal lines in GridDataBoundGrid: 

{% tabs %}
{% highlight c# %}

gridDataBoundGrid.PrintHorizontalLines = true;

{% endhighlight %}

{% highlight vb %}

gridDataBoundGrid.PrintHorizontalLines = True

{% endhighlight %}
{% endtabs %}

The following code illustrates how to print horizontal lines GridGroupingControl: 

{% tabs %}
{% highlight c# %}

gridGroupingControl1.PrintHorizontalLines = true;

{% endhighlight %}

{% highlight c# %}

gridGroupingControl1.PrintHorizontalLines = True

{% endhighlight %}
{% endtabs %}

## Printing vertical lines 

You can print vertical lines using PrintVerticalLines__property. 

The following code illustrates how to print vertical lines in Grid Control: 

{% tabs %}
{% highlight c# %}

gridControl1.PrintVerticalLines = true;

{% endhighlight %}

{% highlight vb %}

gridControl1.PrintVerticalLines = True

{% endhighlight %}
{% endtabs %}

The following code illustrates how to print vertical lines in GridDataBoundGrid: 

{% tabs %}
{% highlight c# %}

gridDataBoundGrid.PrintVerticalLines = true;

{% endhighlight %}

{% highlight vb %}

gridDataBoundGrid.PrintVerticalLines = True

{% endhighlight %}
{% endtabs %}

 The following code illustrates how to print vertical lines GridGroupingControl: 

{% tabs %}
{% highlight c# %}

gridGroupingControl1.PrintVerticalLines = true;

{% endhighlight %}

{% highlight vb %}

gridGroupingControl1.PrintVerticalLines = True

{% endhighlight %}
{% endtabs %}
