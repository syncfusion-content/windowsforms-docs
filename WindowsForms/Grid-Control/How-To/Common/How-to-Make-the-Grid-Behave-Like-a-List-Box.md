---
layout: post
title: How to Make Grid Behave Like a List Box | Windows Forms | Syncfusion
description: Learn here all about how to make the grid behave like a list box in Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Make the Grid Behave Like a List Box in WinForms GridControl

### Introduction

You need to do two things to make the grid work like a list box. You must set grid.ListBoxSelectionMode property to make the grid select the whole row when you click a cell or move the current cell with arrow keys. This will highlight the entire row except for the current cell. If your grid is to be non-editable, you must highlight the current cell as well as handle CurrentCellActivating event.

{% tabs %}
{% highlight c# %}

//In form.Load.
this.gridControl1.ListBoxSelectionMode = SelectionMode.One;
this.gridControl1.CurrentCellActivating += new GridCurrentCellActivatingEventHandler(grid_CurrentCellActivating);

//The handler.
private void grid_CurrentCellActivating(object sender, GridCurrentCellActivatingEventArgs e)
{        
    e.ColIndex = 0;
}

{% endhighlight %}

{% highlight vb %}

'In form.Load.
Me.GridControl1.ListBoxSelectionMode = SelectionMode.One
AddHandler Me.GridControl1.CurrentCellActivating, AddressOf grid_CurrentCellActivating

'The handler.
Private Sub grid_CurrentCellActivating(ByVal sender As Object, ByVal e As GridCurrentCellActivatingEventArgs)
    e.ColIndex = 0
'Grid_CurrentCellActivating.

End Sub 

{% endhighlight %}
{% endtabs %}
