---
layout: post
title: How to Hide Custom Option in the FilterBar DropDown | Syncfusion
description: Learn here all about how to hide custom option in the filterbar dropdown of Syncfusion Windows Forms GridControl control and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Hide Custom Option in the FilterBar DropDown

To achieve this, you need to implement custom FilterBar cell deriving CellModel/CellRenderer from GridTableFilterBarCellModel/GridTableFilterBarCellRenderer.

* GridTableFilterBarCellModel.FillWithChoices method is overridden to remove the string "Custom" from the list.
* GridTableFilterBarCellModel.Select method is rewritten with "Select_WithoutCustom" method, which specifies the index for the selected item. You can pass the index for the "Custom" selected item as 0.
* GridTableFilterBarCellModel.ListBoxMouseUp() method is overridden to invoke Select_WithoutCustom method instead of the Select method.


 
{% highlight c# %}
public class GridTableFilterBarCellModel1: GridTableFilterBarCellModel
{
    public GridTableFilterBarCellModel1(Syncfusion.Windows.Forms.Grid.GridModel gm):base(gm)
    {
    }

//Overrides FillWithChoices to remove 'Custom' option from the list.
    public override void FillWithChoices(ListBox listBox, GridStyleInfo style, out bool exclusive)
    {
       exclusive = true;
       GridTableCellStyleInfo tableStyleInfo = (GridTableCellStyleInfo) style;
       object[] items = (object[]) GetFilterBarChoices(tableStyleInfo.TableCellIdentity);
       listBox.Items.Clear();
       if (items != null)
       {
            listBox.Items.Add(SelectAllText);
            foreach (object item in items)
            {
                 if (item is DBNull)
                 listBox.Items.Add(SelectEmptyText);
                 else if (item != null)
                 listBox.Items.Add(style.GetFormattedText(item));
            }
       }
    }

	//Customizes the 'Select' method to hide the Custom option.
    public void Select_WithoutCustom(GridTableCellStyleInfoIdentity tableCellIdentity, int index)
    {
        if (index >= 0)
        {
           if (index == 0)
           {
                ResetFilterBar(tableCellIdentity);
           }
           else if (index == 1)
           {
                SelectItem(tableCellIdentity, 0); 
           }
           else
           {
                SelectItem(tableCellIdentity, index-1);
           }
        }
    }

    public override GridCellRendererBase CreateRenderer(GridControlBase control)
    {
        return new CellRenderer(control, this); 
    }
}

public class CellRenderer : GridTableFilterBarCellRenderer
{
    public CellRenderer(GridControlBase grid, GridCellModelBase cellModel): base(grid , cellModel)
    {

    }

    public new Model.Form1.GridTableFilterBarCellModel1 Model
    {
            get
           {
               return (Model.Form1.GridTableFilterBarCellModel1) base.Model;
           }
    }

	//Overrides ListBoxMouseUP method to call Customized Select method instead of the usual 'Select' method.
    protected override void ListBoxMouseUp(object sender, MouseEventArgs e)
    {
        CurrentCell.CloseDropDown(PopupCloseType.Done);
        GridTableCellStyleInfo tableStyleInfo = (GridTableCellStyleInfo) this.StyleInfo;
        GridTableCellStyleInfoIdentity tableCellIdentity = tableStyleInfo.TableCellIdentity;
        Model.Select_WithoutCustom(tableCellIdentity, this.ListBoxPart.SelectedIndex);

	  //Does not call base class - ignores. 
        SetTextBoxText(GetFilterBarText(StyleInfo), false);
    }
}

{% endhighlight  %}
{% highlight vb %}

Public Class GridTableFilterBarCellModel1: Inherits GridTableFilterBarCellModel 
       Public Sub New(ByVal gm As Syncfusion.Windows.Forms.Grid.GridModel) 
            MyBase.New(gm) 
       End Sub 

'Overrides FillWithChoices to remove 'Custom' option from the list.
      Public Overrides Sub FillWithChoices(ByVal listBox As ListBox, ByVal style As GridStyleInfo, &lt;System.Runtime.InteropServices.Out()&gt;     ByRef exclusive As Boolean) 
            exclusive = True 
            Dim tableStyleInfo As GridTableCellStyleInfo = CType(style, GridTableCellStyleInfo) 
            Dim items As Object() = CType(GetFilterBarChoices(tableStyleInfo.TableCellIdentity), Object()) 
            listBox.Items.Clear() 
            If Not items Is Nothing Then 
                  listBox.Items.Add(SelectAllText) 
                  For Each item As Object In items 
                        If TypeOf item Is DBNull Then 
                               listBox.Items.Add(SelectEmptyText) 
                        Else If Not item Is Nothing Then 
                               listBox.Items.Add(style.GetFormattedText(item))
                        End If 
                   Next item 
            End If 
       End Sub
  
	   'Customizes the 'Select' method to hide the Custom option. 
       Public Sub Select_WithoutCustom(ByVal tableCellIdentity As GridTableCellStyleInfoIdentity, ByVal index As Integer) 
             If index >= 0 Then 
                  If index = 0 Then 
                         ResetFilterBar(tableCellIdentity) 
                  Else If index = 1 Then 
                         SelectItem(tableCellIdentity, 0) 
                  Else 
                         SelectItem(tableCellIdentity, index-1) 
                 End If 
             End If 
       End Sub 

       Public Overrides Function CreateRenderer(ByVal control As GridControlBase) As GridCellRendererBase 
            Return New CellRenderer(control, Me) 
       End Function 
End Class 

Public Class CellRenderer : Inherits GridTableFilterBarCellRenderer 
           Public Sub New(ByVal grid As GridControlBase, ByVal cellModel As GridCellModelBase) 
                 MyBase.New(grid, cellModel) 
           End Sub 
           Public Shadows ReadOnly Property Model() As Model.Form1.GridTableFilterBarCellModel1 
              Get 
                    Return CType(MyBase.Model, Model.Form1.GridTableFilterBarCellModel1) 
              End Get 
           End Property 

		   'Overrides ListBoxMouseUP method to call Customized Select method instead of the usual 'Select' method.
           Protected Overrides Sub ListBoxMouseUp(ByVal sender As Object, ByVal e As MouseEventArgs) 
                  CurrentCell.CloseDropDown(PopupCloseType.Done) 
                  Dim tableStyleInfo As GridTableCellStyleInfo = CType(Me.StyleInfo, GridTableCellStyleInfo) 
                  Dim tableCellIdentity As GridTableCellStyleInfoIdentity = tableStyleInfo.TableCellIdentity 
                  Model.Select_WithoutCustom(tableCellIdentity, Me.ListBoxPart.SelectedIndex) 

				  'Does not call base class - ignores. 
                 SetTextBoxText(GetFilterBarText(StyleInfo), False) 
            End Sub 
End Class
{% endhighlight  %}