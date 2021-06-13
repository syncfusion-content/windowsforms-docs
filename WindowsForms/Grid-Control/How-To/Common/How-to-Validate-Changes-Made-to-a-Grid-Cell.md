---
layout: post
title: Validate changes made to a Grid cell | Windows Forms | Syncfusion
description: Learn here all about how to validate changes made to a grid cell of Syncfusion Windows Forms Gridcontrol control and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to validate changes made to a Grid cell in WinForms GridControl

There are two events that can be used to validate the changes that are made to a grid cell: CurrentCellValidateString and CurrentCellValidating. CurrentCellValidateString is fired every time a key is pressed and the current text is passed as part of EventArgs. CurrentCellValidating is only fired once when the user tries to leave the current cell. 

Here are some code samples that will show how you can get the new value of the cell as well as the old value of the cell in the CurrentCellValidating event.

{% tabs %}
{% highlight c# %}

//Retrieves the old and new values of a cell.
GridCurrentCell cc = this.grid.CurrentCell;
string newValue = cc.Renderer.ControlText;
string oldValue = this.grid[cc.RowIndex, cc.ColIndex].Text;

{% endhighlight %}

{% highlight vb %}

'Retrieves the old and new values of a cell.
Dim cc As GridCurrentCell = Me.GridControl1.CurrentCell
Dim newValue As String = cc.Renderer.ControlText
Dim oldValue As String = Me.GridControl1(cc.RowIndex, cc.ColIndex).Text

{% endhighlight %}
{% endtabs %}

In either event, if you want the validation to fail, set e.Cancel = True. Here is the code that will not allow your user to blank out cells in column 2.

{% tabs %}
{% highlight c# %}

private void grid_CurrentCellValidating(object sender, CancelEventArgs e)
{
    GridCurrentCell cc = this.grid.CurrentCell;

	//Prevents user from blanking out cells in column 2.
    if (cc.ColIndex == 2)
    {
        string val = cc.Renderer.ControlText;

        if (val.Length == 0)
        {
			//No empty string in col 2.
            e.Cancel = true;
        }
    }
    // Grid_CurrentCellValidating
} 

{% endhighlight %}

{% highlight vb %}

Private Sub grid_CurrentCellValidating(ByVal sender As Object, ByVal e As CancelEventArgs)
 Dim cc As GridCurrentCell = Me.grid.CurrentCell

'Prevents user from blanking out cells in column 2.
If cc.ColIndex = 2 Then
Dim val As String = cc.Renderer.ControlText
If val.Length = 0 Then
		  
'No empty string in col 2.
e.Cancel = True 
End If
End If

'Grid_CurrentCellValidating
End Sub 

{% endhighlight %}
{% endtabs %}
