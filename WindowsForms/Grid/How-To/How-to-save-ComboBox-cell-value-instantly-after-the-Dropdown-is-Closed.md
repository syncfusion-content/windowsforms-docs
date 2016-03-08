---
layout: post
title: How-to-save-ComboBox-cell-value-instantly-after-th | Windows Forms | Syncfusion
description: how to save combobox cell value instantly after the dropdown is closed?
platform: windowsforms
control: Grid
documentation: ug
---

# How to save ComboBox cell value instantly after the dropdown is closed?

To save ComboBox cell value immediately after the dropdown is closed; SaveCellInfo event must be triggered. To initiate SaveCellInfo event, EndEdit() has to be called. Also, in the CurrentCellCloseDropDown event CurrentCell.EndiEdit() is called.

{% highlight c# %}

//Code...

this.gridControl1.CurrentCellCloseDropDown += new PopupClosedEventHandler(grid_CurrentCellCloseDropDown);

}



void grid_CurrentCellCloseDropDown(object sender, PopupClosedEventArgs e) 

{

    this.grid.CurrentCell.EndEdit();

}

//Code...


{% endhighlight  %}
{% highlight vbnet %}



'code...

AddHandler gridControl1.CurrentCellCloseDropDown, AddressOf grid_CurrentCellCloseDropDown

End Sub



Private Sub grid_CurrentCellCloseDropDown(ByVal sender As Object, ByVal e As PopupClosedEventArgs)

Me.grid.CurrentCell.EndEdit()

End Sub



'code...


{% endhighlight  %}
