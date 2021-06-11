---
layout: post
title: Save ComboBox cell value instantly after dropdown closed | Syncfusion
description: Learn here all about how to save combobox cell value instantly after the dropdown is closed of Syncfusion Windows Forms GridControl control and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to save ComboBox cell value instantly after the dropdown is closed

To save ComboBox cell value immediately after the dropdown is closed; SaveCellInfo event must be triggered. To initiate SaveCellInfo event, EndEdit() has to be called. Also, in the CurrentCellCloseDropDown event CurrentCell.EndEdit() is called.

{% tabs %}
{% highlight c# %}

//Code...
this.gridControl1.CurrentCellCloseDropDown += new PopupClosedEventHandler(grid_CurrentCellCloseDropDown);
void grid_CurrentCellCloseDropDown(object sender, PopupClosedEventArgs e) 
{
    this.grid.CurrentCell.EndEdit();
}
//Code...

{% endhighlight  %}
{% highlight vb %}

'code...
AddHandler gridControl1.CurrentCellCloseDropDown, AddressOf grid_CurrentCellCloseDropDown
Private Sub grid_CurrentCellCloseDropDown(ByVal sender As Object, ByVal e As PopupClosedEventArgs)
Me.grid.CurrentCell.EndEdit()
End Sub
'code...

{% endhighlight  %}
{% endtabs %}