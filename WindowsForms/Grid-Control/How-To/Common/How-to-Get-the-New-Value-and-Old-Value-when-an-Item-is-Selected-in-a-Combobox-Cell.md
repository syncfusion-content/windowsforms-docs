---
layout: post
title: Get ComboBox Values in Windows Forms GridControl | Syncfusion®
description: Get the new and old values when an item is selected in a ComboBox cell in Syncfusion® Windows Forms GridControl using dropdown events and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Get ComboBox Values in Windows Forms GridControl

### Introduction

CurrentCellCloseDropDown event gets triggered when a dropdown is closed in a grid cell. The new value of ComboBox can be obtained from CurrentCell's Renderer property and old value can be obtained from the grid.

{% tabs %}
{% highlight c# %}

GridCurrentCell cc;
//Handles CurrentCellCloseDropDown.
private void gridDataBoundGrid1_CurrentCellCloseDropDown(object sender, Syncfusion.Windows.Forms.PopupClosedEventArgs e)
{
    cc= this.gridDataBoundGrid1.CurrentCell;
    Console.WriteLine(e.PopupCloseType.ToString());

	//Uses Renderer.GetCellValue() to retrieve the new cell value.
    Console.WriteLine("New Value {0}",cc.Renderer.GetCellValue());

	//Retrieves the old value. 
    Console.WriteLine("Old Value {0}",this.gridDataBoundGrid1[cc.RowIndex,cc.ColIndex].CellValue.ToString());
}

//Handle CurrentCellCloseDropDown.
private void gridControl1_CurrentCellCloseDropDown(object sender, Syncfusion.Windows.Forms.PopupClosedEventArgs e)
{
    cc= this.gridControl1.CurrentCell;
    Console.WriteLine(e.PopupCloseType.ToString());

	//Uses Renderer.GetCellValue() to retrieve the new cell value.
    Console.WriteLine("New Value {0}",cc.Renderer.GetCellValue()); 
	
	//Retrieves the old value.
    Console.WriteLine("Old Value {0}",this.gridControl1[cc.RowIndex,cc.ColIndex].CellValue.ToString());
}

{% endhighlight %}

{% highlight vb %}

Private cc As GridCurrentCell
'Handles CurrentCellCloseDropDown.
Private Sub gridDataBoundGrid1_CurrentCellCloseDropDown(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.PopupClosedEventArgs)
    cc= Me.gridDataBoundGrid1.CurrentCell
    Console.WriteLine(e.PopupCloseType.ToString())

    'Uses Renderer.GetCellValue() to retrieve the new cell value.
    Console.WriteLine("New Value {0}",cc.Renderer.GetCellValue())
	
    'Retrieves the old value.
    Console.WriteLine("Old Value{0}",Me.gridDataBoundGrid1(cc.RowIndex,cc.ColIndex).CellValue. ToString())
End Sub

'Handles CurrentCellCloseDropDown.
Private Sub gridControl1_CurrentCellCloseDropDown(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.PopupClosedEventArgs)
     cc= Me.gridControl1.CurrentCell
     Console.WriteLine(e.PopupCloseType.ToString())

     'Uses Renderer.GetCellValue() to retrieve the new cell value.
     Console.WriteLine("New Value {0}",cc.Renderer.GetCellValue())

     'Retrieves the old value.
     Console.WriteLine("Old Value {0}",Me.gridControl1(cc.RowIndex,cc.ColIndex).CellValue.ToString())

End Sub

{% endhighlight %}
{% endtabs %}