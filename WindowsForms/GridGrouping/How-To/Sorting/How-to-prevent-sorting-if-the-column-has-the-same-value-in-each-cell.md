---
layout: post
title: How-to-prevent-sorting-if-the-column-has-the-same-
description: how to prevent sorting if the column has the same value in each cell
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to prevent sorting if the column has the same value in each cell

To prevent sorting column with same cell values, the choices are obtained through ‘GetFilterBarChoices()’ method from the filter bar cell model. This retrieves the unique values of the respective column. ‘OptimizeFilterPerformance’ property can also be enabled to get these choices.

{% highlight c# %}

GridTableFilterBarCellModel filterModel = null;//Declares this globally. 

//In form load.

filterModel = this.gridGroupingControl1.TableModel.CellModels["FilterBarCell"] as GridTableFilterBarCellModel;

this.gridGroupingControl1.OptimizeFilterPerformance = true;

//In event.

private void gridGroupingControl1_TableControlQueryAllowSortColumn(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridQueryAllowSortColumnEventArgs e)

{

int rowIndex = e.TableControl.Table.Records[0].GetRowIndex();

int colIndex = e.Column.GetRelativeColumnIndex() + 1; //Check the col index with your application.

GridTableCellStyleInfo tableStyleInfo = e.TableControl.GetTableViewStyleInfo(rowIndex, colIndex);

object[] items = (object[])filterModel.GetFilterBarChoices(tableStyleInfo.TableCellIdentity);

if (items.Length == 2 && items[0].GetType() == typeof(System.DBNull)) //Checks if there is only one unique item.

{

e.AllowSort = false;

}

}


{% endhighlight %}


{% highlight vbnet %}



Dim filterModel As GridTableFilterBarCellModel = Nothing 'Declares this globally.



'In form load.



filterModel = TryCast(Me.gridGroupingControl1.TableModel.CellModels("FilterBarCell"), GridTableFilterBarCellModel)



Me.gridGroupingControl1.OptimizeFilterPerformance = True



'In event.



private void gridGroupingControl1_TableControlQueryAllowSortColumn(Object sender, 



Syncfusion.Windows.Forms.Grid.Grouping.GridQueryAllowSortColumnEventArgs e)



Dim rowIndex As Integer = e.TableControl.Table.Records(0).GetRowIndex()



Dim colIndex As Integer = e.Column.GetRelativeColumnIndex() + 1 'Checks the col index with your application.



Dim tableStyleInfo As GridTableCellStyleInfo = e.TableControl.GetTableViewStyleInfo(rowIndex, colIndex)



Dim items() As Object = CType(filterModel.GetFilterBarChoices(tableStyleInfo.TableCellIdentity), Object())



If items.Length = 2 AndAlso items(0).GetType() Is GetType(System.DBNull) Then 'Checks if there is only one unique item.



e.AllowSort = False

{% endhighlight %}

