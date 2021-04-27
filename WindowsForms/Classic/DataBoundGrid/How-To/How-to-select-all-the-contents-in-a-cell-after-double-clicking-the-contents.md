---
layout: post
title: Double clicking the contents in DataBoundGrid| WinForms | Syncfusion
description: Learn about How to Select all the Contents in a Cell After Double Clicking the Contents support in Syncfusion Windows Forms GridDataBoundGrid control and more.
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# Double clicking the contents in DataBoundGrid

CurrentCellControlDoubleClick event can be used to select the contents of a cell by double-clicking it. The current cell is selected by using gridControl1.CurrentCell.Renderer.The length of the content is measured and the contents are selected using Select() method of the inner textbox cell, if it is a textbox cell type.

## How to Select All the Contents in a Cell After Double-Clicking the Contents

This page explains about How to Select All the Contents in a Cell After Double-Clicking the Contents and more details.

{% tabs %}
{% highlight c# %}

private void gridControl1_CurrentCellControlDoubleClick(object sender, ControlEventArgs e)
{
    GridTextBoxCellRenderer renderer = this.gridControl1.CurrentCell.Renderer as GridTextBoxCellRenderer;
    if (renderer.TextBox.TextLength > 0)
    {
        renderer.TextBox.Select(0, renderer.TextBox.TextLength);
    }
}

{% endhighlight %}

{% highlight vb %}

Private Sub gridControl1_CurrentCellControlDoubleClick(ByVal sender As Object, ByVal e As ControlEventArgs)
Dim renderer As GridTextBoxCellRenderer = TryCast(Me.gridControl1.CurrentCell.Renderer, GridTextBoxCellRenderer)
If renderer.TextBox.TextLength > 0 Then
renderer.TextBox.Select(0, renderer.TextBox.TextLength)
End If
End Sub

{% endhighlight %}
{% endtabs %}

If the contents have to be selected using F2 key, CurrentCellKeyDown event can be handled and the contents can be selected.

{% tabs %}
{% highlight c# %}
private void gridControl1_CurrentCellKeyDown(object sender, System.Windows.Forms.KeyEventArgs e)
{
    if (e.KeyCode == Keys.F2)
    {
        ((GridTextBoxCellRenderer)this.gridControl1.CurrentCell.Renderer).TextBox.SelectAll();
    }
}

{% endhighlight %}

{% highlight vb %}

Private Sub gridControl1_CurrentCellKeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyEventArgs)
If e.KeyCode = Keys.F2 Then
CType(Me.gridControl1.CurrentCell.Renderer,    GridTextBoxCellRenderer).TextBox.SelectAll()
End If
End Sub

{% endhighlight %}
{% endtabs %}
