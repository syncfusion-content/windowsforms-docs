---
layout: post
title: Control the number of visible items in a Combobox cell | Syncfusion
description: Learn here all about how to control the number of visible items in a combo box cell of Syncfusion Windows Forms GridControl control and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to control the number of visible items in a combo box cell

There is a GridComboBoxListBoxPart.DropDownRows property that you can set to control this. The GridComboBoxListBoxPart is the actual control type of the list that is dropped to display the items. But, it is buried a little deep and generally needs an event handler to set it. The reason for using an event handler is that normally a single combobox control is shared among all combobox cells. Each cell can potentially have a different list and may need different numbers of visible rows. So to handle this, you must catch Grid.CurrentCellShowingDropDown event and set the property there depending upon the exact row and column.

{% tabs %}
{% highlight c# %}

private void grid_CurrentCellShowingDropDown(object sender, GridCurrentCellShowingDropDownEventArgs e)
{ 
    GridControlBase grid = sender as GridControlBase; 

    if(grid != null) 
    { 
        GridCurrentCell cc = grid.CurrentCell; 
        GridComboBoxCellRenderer cellRenderer = cc.Renderer as GridComboBoxCellRenderer;

		//Sets number of visible items for combobox in Row 6 as 4, Row 4 as 7, Row 2 as 10 , and so on. 
        if(cc != null) 
        {

            if(cc.RowIndex == 6) 
                 ((GridComboBoxListBoxPart)cellRenderer.ListBoxPart).DropDownRows = 4; 

            else if(cc.RowIndex == 4) 
                 ((GridComboBoxListBoxPart)cellRenderer.ListBoxPart).DropDownRows = 7; 
 
            else if(cc.RowIndex == 2)
                 ((GridComboBoxListBoxPart)cellRenderer.ListBoxPart).DropDownRows = 10; 
 
            else ((GridComboBoxListBoxPart)cellRenderer.ListBoxPart).DropDownRows = 6; 
        } 
    }
}

{% endhighlight %}

{% highlight vb %}

Private Sub Grid_CurrentCellShowingDropDown(sender As Object, e As GridCurrentCellShowingDropDownEventArgs)
    Try
        Dim grid As GridControlBase = sender
        Dim cc As GridCurrentCell = grid.CurrentCell

        If cc.Renderer Is GetType(GridComboBoxCellRenderer) Then
            Dim cellRenderer As GridComboBoxCellRenderer = cc.Renderer
			
			'Sets number of visible items for combobox in Row 6 as 4, Row 4 as 7, Row 2 as 10 , and so on.
            If cc.RowIndex = 6 Then
                CType(cellRenderer.ListBoxPart, GridComboBoxListBoxPart).DropDownRows = 4

            ElseIf cc.RowIndex = 4 Then
                CType(cellRenderer.ListBoxPart, GridComboBoxListBoxPart).DropDownRows = 7
 
            ElseIf cc.RowIndex = 2 Then
                CType(cellRenderer.ListBoxPart, GridComboBoxListBoxPart).DropDownRows = 10

            Else
                CType(cellRenderer.ListBoxPart, GridComboBoxListBoxPart).DropDownRows = 6
            End If
        End If
    Catch
    End Try
End Sub

{% endhighlight %}
{% endtabs %}