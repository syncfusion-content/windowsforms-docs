---
layout: post
title: How to Place a Checkbox in a Header Cell | Windows Forms | Syncfusion
description: Learn here all about how to Place a Checkbox in a Header Cell of Syncfusion Windows Forms GridGroupingControl and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# Place a Checkbox in a Header Cell in Windows Forms GridGroupingControl

This page explains how to Place a Checkbox in a Header Cell in Windows Forms GridGroupingControl and more details.

## How to Place a Checkbox in a Header Cell in Windows Forms GridGroupingControl

A CheckBox can be placed in a header cell of the GridGroupingControl by handling QueryCellStyleInfo event. The value of the check box has to be stored in any data type and SaveCellText handler saves the value from the grid. To get this working, you need to cancel sorting of the header cell by handling TableControlCellClick event.

In the TableControl.MouseUp event handler, CellRenderer's MouseUp has to be raised. By default, SelectCells MouseController calls CellRenderer's MouseUp, which in turn raises CheckBoxClick. DragGroupHeader MouseController, which is for the header cells and does not call Renderer's MouseUp. So you have to explicitly call Renderer's MouseUp from TableControl's MouseUp checking for MouseController type. Refer to the attached sample for more details.

## Example


 
{% highlight c# %}


 this.gridGroupingControl1.TableControl.MouseUp += new MouseEventHandler(TableControl_MouseUp);

private void TableControl_MouseUp(object sender, MouseEventArgs e)

{

      int row, col;

      this.gridGroupingControl1.TableControl.PointToRowCol(new Point(e.X, e.Y), out row, out col);

      GridTableCellStyleInfo style = this.gridGroupingControl1.TableControl.Model[row, col];

      IMouseController controller;

      this.gridGroupingControl1.TableControl.MouseControllerDispatcher.HitTest(new Point(e.X, e.Y), e.Button, e.Clicks, out controller);

      if(controller.Name == "DragGroupHeader")

      {

           this.gridGroupingControl1.TableControl.GetCellRenderer(row, col).RaiseMouseUp(row, col, e);

      }

}


{% endhighlight  %}
{% highlight vb %}




AddHandler gridGroupingControl1.TableControl.MouseUp, AddressOf TableControl_MouseUp

Private Sub TableControl_MouseUp(ByVal sender As Object, ByVal e As MouseEventArgs)

       Dim row, col As Integer

       Me.gridGroupingControl1.TableControl.PointToRowCol(New Point(e.X, e.Y), row, col)

       Dim style As GridTableCellStyleInfo = Me.gridGroupingControl1.TableControl.Model(row, col)

       Dim controller As IMouseController

       Me.gridGroupingControl1.TableControl.MouseControllerDispatcher.HitTest(New Point(e.X, e.Y), e.Button, e.Clicks, controller)

       If controller.Name = "DragGroupHeader" Then

             Me.gridGroupingControl1.TableControl.GetCellRenderer(row, col).RaiseMouseUp(row, col, e)

       End If

End Sub
{% endhighlight  %}