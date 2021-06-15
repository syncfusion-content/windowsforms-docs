---
layout: post
title: How to Change the Mouse Cursor for a WinForms GridControl | Syncfusion
description: Learn here all about how to change the mouse cursor in Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Change the Mouse Cursor in Windows Forms GridControl

### Introduction

The simplest way is to derive the grid and override OnSetCursor. You can add additional checks to narrow down where to set the cursor.

{% tabs %}
{% highlight c# %}

//GridDataBoundGrid.
public class MyGridControl : GridControl 
{
  protected override void OnSetCursor(ref Message m)
  {
      base.OnSetCursor(ref m);

	//Always set the cursor to a cross.
      Cursor.Current = Cursors.Cross;

	//or
	
	//Put special cursor over cell 2,2.
	
	//Point pt = this.PointToClient(Control.MousePosition);
	
	//int row, col;
	
	//if(this.PointToRowCol(pt, out row, out col, -1)
	
	//        && row == 2 && col == 2)
	
	// {
	
	//        Cursor.Current = Cursors.Cross;
	
	// }

  }

}


{% endhighlight %}

{% highlight vb %}

Public Class MyGridControl
    Inherits GridControl 'GridDataBoundGrid
    Protected Overrides Sub OnSetCursor(ByRef m As Message)
    MyBase.OnSetCursor(m)
   
	'Always set the cursor to a cross.
     Cursor.Current = Cursors.Cross

	'OR
	'Put special cursor over cell 2,2.
	'Point pt = this.PointToClient(Control.MousePosition);
	'int row, col;
	'If Me.PointToRowCol(pt, row, col, -1) AndAlso row = 2 AndAlso col = 2 Then
    'Cursor.Current = Cursors.Cross;
	'End If
End Sub 
'MyGridControl 
End Class 


{% endhighlight %}
{% endtabs %}
