---
layout: post
title: How-to-select-all-the-contents-in-a-cell-after-double-clicking-the-contents
description: how to select all the contents in a cell after double clicking the contents
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to select all the contents in a cell after double-clicking the contents

CurrentCellControlDoubleClick event can be used to select the contents of a cell by double-clicking it. The current cell is selected by using gridControl1.CurrentCell.Renderer.The length of the content is measured and the contents are selected using Select() method of the inner textbox cell, if it is a textbox cell type.

{% highlight c# %}



private void gridControl1_CurrentCellControlDoubleClick(object sender, ControlEventArgs e)

 {



GridTextBoxCellRenderer ren = this.gridControl1.CurrentCell.Renderer as GridTextBoxCellRenderer;



if (ren.TextBox.TextLength > 0)

{



ren.TextBox.Select(0, ren.TextBox.TextLength);



}

  }


{% endhighlight %}

{% highlight vbnet %}



Private Sub gridControl1_CurrentCellControlDoubleClick(ByVal sender As Object, ByVal e As ControlEventArgs)



Dim ren As GridTextBoxCellRenderer = TryCast(Me.gridControl1.CurrentCell.Renderer, GridTextBoxCellRenderer)



            If ren.TextBox.TextLength > 0 Then



                ren.TextBox.Select(0, ren.TextBox.TextLength)



 End If

End Sub


{% endhighlight %}

If the contents have to be selected using F2 key, CurrentCellKeyDown event can be handled and the contents can be selected.

#### Sample code

{% highlight c# %}

private void gridControl1_CurrentCellKeyDown(object sender, System.Windows.Forms.KeyEventArgs e)



{

  if (e.KeyCode == Keys.F2)

{

((GridTextBoxCellRenderer)this.gridControl1.CurrentCell.Renderer).TextBox.SelectAll();

}



}

{% endhighlight %}

{% highlight vbnet %}



Private Sub gridControl1_CurrentCellKeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs)



 If e.KeyCode = Keys.F2 Then



 CType(Me.gridControl1.CurrentCell.Renderer,    GridTextBoxCellRenderer).TextBox.SelectAll()



 End If



End Sub



{% endhighlight %}
