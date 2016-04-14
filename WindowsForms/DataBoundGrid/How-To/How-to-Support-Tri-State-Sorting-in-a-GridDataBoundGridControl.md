---
layout: post
title: How-to-Support-Tri-State-Sorting-in-a-GridDataBoundGridControl | Windows Forms | Syncfusion
description: how to support tri-state sorting in a griddataboundgridcontrol
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to Support Tri-State Sorting in a GridDataBoundGridControl

### Introduction 

The standard sorting never removes sorting from a column; so once a column is sorted it will either be in ascending or descending order. By using GridDataBoundGridControl'sCellClick event, it is possible to alter this behavior so that when a column is clicked once, it will be sorted in an ascending order; when it is clicked a second time, the column will be sorted in a descending order; and when the column is clicked a third time, its sorting will be removed.

The tri-state sort behavior is accomplished by storing sort indicator, which is in the Tag property of the column and by handling the CellClick event. When a column is sorted in descending order, then the sorting is removed the next time the column is clicked.

1. There are a couple of problems that you will have to work around. One is that the standard column header cell uses Tag for its sort header and it explicitly sets the non-sorted header's Tag to ascending/descending only. It does not support none option for unsorting GridDataBoundGridControl. So, you need to hide HeaderCell and add the New Header.

   #### Example

   ~~~ cs

		//Sets Datasource.

		this.gridDataBoundGrid1.DataSource = dt;

		this.gridDataBoundGrid1.Model.BaseStylesMap["Column Header"].StyleInfo.CellType = "Header"; 

		this.gridDataBoundGrid1.Model.Data.RowCount = 1;

		this.gridDataBoundGrid1.Model.Rows.HeaderCount = 1;

		this.gridDataBoundGrid1.Model.Rows.FrozenCount = 1;



		//Hides Column Header Cells.

		this.gridDataBoundGrid1.Model.HideRows[0] = true;



		//Adds New Header Cells.

		for(int col = 1; col <= 3; ++col)

		{

				this.gridDataBoundGrid1[1, col] = this.gridDataBoundGrid1[0,1] ;

				this.gridDataBoundGrid1[1, col].CellType = "ColumnHeaderCell";

		}

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		'Sets Datasource.

		Me.gridDataBoundGrid1.DataSource = dt

		Me.gridDataBoundGrid1.Model.BaseStylesMap("Column Header").StyleInfo.CellType = "Header" 

		Me.gridDataBoundGrid1.Model.Data.RowCount = 1

		Me.gridDataBoundGrid1.Model.Rows.HeaderCount = 1

		Me.gridDataBoundGrid1.Model.Rows.FrozenCount = 1



		'Hides the Column Header Cells.

		Me.gridDataBoundGrid1.Model.HideRows(0) = True



		'Adds New Header Cells.

		Dim col As Integer

		For col = 1 To 3 Step + 1

				 Me.gridDataBoundGrid1(1, col) = Me.gridDataBoundGrid1(0,1) 

				 Me.gridDataBoundGrid1(1, col).CellType = "ColumnHeaderCell"

		Next

   ~~~
   {:.prettyprint }
   
2. In the CellClick Event perform the sorting.

   #### Example

   ~~~ cs

		private void gridDataBoundGrid1_CellClick(object sender, Syncfusion.Windows.Forms.Grid.GridCellClickEventArgs e)

		{

		//Checks for Column Header Cell.

			 if(this.gridDataBoundGrid1[e.RowIndex,e.ColIndex].CellType == "ColumnHeaderCell")

			 { 

				   if(this.gridDataBoundGrid1[e.RowIndex,e.ColIndex].HasTag )

				   { 

		//If Column values are not in sorted order, then Sorts them in ascending order.

						if(this.gridDataBoundGrid1[e.RowIndex,e.ColIndex].Tag.ToString() == "None") 

						{

							  this.gridDataBoundGrid1[e.RowIndex,e.ColIndex].Tag = ListSortDirection.Ascending;

							  SortColumn(e.RowIndex,e.ColIndex);

						 }



		//If Column values are sorted in ascending order, then Sorts them in descending order.

						 else if((ListSortDirection )this.gridDataBoundGrid1[e.RowIndex, e.ColIndex].Tag == ListSortDirection.Ascending)

						 { 



							 this.gridDataBoundGrid1[e.RowIndex,e.ColIndex].Tag = ListSortDirection.Descending ;

							 SortColumn(e.RowIndex,e.ColIndex);

						 }



		//If Column values are sorted in descending order, then removes Sorting.

						 else if((ListSortDirection)this.gridDataBoundGrid1[e.RowIndex, e.ColIndex].Tag == ListSortDirection.Descending)

						 {

							  this.gridDataBoundGrid1[e.RowIndex,e.ColIndex].Tag = "None"; 

							  SortColumn(e.RowIndex,e.ColIndex);

						 }

				  }

				  else

				  {

						this.gridDataBoundGrid1[e.RowIndex,e.ColIndex].Tag = ListSortDirection.Ascending ;

						SortColumn(e.RowIndex,e.ColIndex);

				  }

			 }



		}

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Private Sub gridDataBoundGrid1_CellClick(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridCellClickEventArgs)



		'Checks for Column Header Cell.

			If Me.gridDataBoundGrid1(e.RowIndex,e.ColIndex).CellType = "ColumnHeaderCell" Then

			   If Me.gridDataBoundGrid1(e.RowIndex,e.ColIndex).HasTag Then



		'If Column values are not in sorted order, then Sorts them in ascending order.

				  If Me.gridDataBoundGrid1(e.RowIndex,e.ColIndex).Tag.ToString() = "None" Then

					 Me.gridDataBoundGrid1(e.RowIndex,e.ColIndex).Tag = ListSortDirection.Ascending

					 SortColumn(e.RowIndex,e.ColIndex)



		'If Column values are sorted in ascending order, then Sorts them in descending order.

				  Else If CType(Me.gridDataBoundGrid1(e.RowIndex,e.ColIndex).Tag = ListSortDirection.Ascending,ListSortDirection) Then 

					 Me.gridDataBoundGrid1(e.RowIndex,e.ColIndex).Tag = ListSortDirection.Descending 

					 SortColumn(e.RowIndex,e.ColIndex)



		'If Column values are sorted in descending order, then removes Sorting.

				  Else If CType(Me.gridDataBoundGrid1(e.RowIndex,e.ColIndex).Tag = ListSortDirection.Descending,ListSortDirection) Then 

					 Me.gridDataBoundGrid1(e.RowIndex,e.ColIndex).Tag = "None" 

					 SortColumn(e.RowIndex,e.ColIndex)

				 End If

			 Else 

					 Me.gridDataBoundGrid1(e.RowIndex,e.ColIndex).Tag = ListSortDirection.Ascending 

					 SortColumn(e.RowIndex,e.ColIndex)

				 End If

			End If



		End Sub

   ~~~
   {:.prettyprint }