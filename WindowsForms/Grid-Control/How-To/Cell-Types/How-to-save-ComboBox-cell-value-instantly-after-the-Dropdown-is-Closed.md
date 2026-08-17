---
layout: post
title: Save ComboBox Value in Windows Forms GridControl | Syncfusion®
description: Save a ComboBox cell value instantly after the dropdown closes in Syncfusion® Windows Forms GridControl using cell editing events and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Save ComboBox Value in Windows Forms GridControl

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