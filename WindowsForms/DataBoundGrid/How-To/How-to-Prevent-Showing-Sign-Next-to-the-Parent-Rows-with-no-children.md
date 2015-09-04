---
layout: post
title: How-to-Prevent-Showing--Sign-Next-to-the-Parent-Rows-with-no-children
description: how to prevent showing sign next to the parent rows with no children
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# How to Prevent Showing '+' Sign Next to the Parent Rows with no Children

### Introduction

To hide expansion indicator that reflects that no children are present at the parent row in a hierarchical grid, you will need to handle CellDrawn and CellButtonClick Event. 

Follow the steps given below.

1. In the CellDrawn Event Handler, to assign the number of children in the parent row, to count, and to paint the current cell with BackgroundColor if count equals zero.

   #### Example

   ~~~ cs

		private void gridDataBoundGrid1_CellDrawn(object sender, Syncfusion.Windows.Forms.Grid.GridDrawCellEventArgs e)



		{

				if( flag )



				{



					  if(e.ColIndex == 1)



					  {

		//Retrieves the record state of a row.

							 GridBoundRecordState state = this.gridDataBoundGrid1.Binder.GetRecordStateAtRowIndex(e.RowIndex);



							 count = 0;



		//Checks its Hierarchy Level Index.

							 if( state.LevelIndex == 0 )



							 {

									this.gridDataBoundGrid1.BeginUpdate();



									this.gridDataBoundGrid1.Model.SuspendChangeEvents();



		//Expands the rowIndex for finding childCount.

									this.gridDataBoundGrid1.ExpandAtRowIndex(e.RowIndex);



		//Gets the number of children.

									count = state.ChildCount;



		//Collapses the expanded row.

								   this.gridDataBoundGrid1.CollapseAtRowIndex(e.RowIndex);



								   this.gridDataBoundGrid1.Model.ResumeChangeEvents();



								   this.gridDataBoundGrid1.EndUpdate();



							 }



					   }



		//If no. of children is zero, fills with backcolor to avoid plus sign.

					   if( count == 0 && e.ColIndex == 1 )



					   {



						   Brush brush = new SolidBrush(e.Style.BackColor);



						   try



						   {



		//Paints the current to BackColor.

								e.Graphics.FillRectangle(brush,e.Bounds);



								e.Cancel = true;



						   }



						   finally



						   {



								brush.Dispose();



							}

					   }

			   }

		}

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Private Sub gridDataBoundGrid1_CellDrawn(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridDrawCellEventArgs)





		   If flag Then



			 If e.ColIndex = 0 then



		'Retrieves the record state of a row.

				Dim state As GridBoundRecordState = Me.gridDataBoundGrid1.Binder.GetRecordStateAtRowIndex(e.RowIndex) 



				count = 0



		'Checks its Hierarchy Level Index.

				If state.LevelIndex = 0 Then





					 Me.gridDataBoundGrid1.BeginUpdate()



					 Me.gridDataBoundGrid1.Model.SuspendChangeEvents()



		'Expands the rowIndex for finding the childCount.

					 Me.gridDataBoundGrid1.ExpandAtRowIndex(e.RowIndex)



		'Get the no. of children.

					 count = state.ChildCount



		'Collapses the expanded row.

					 Me.gridDataBoundGrid1.CollapseAtRowIndex(e.RowIndex)



					 Me.gridDataBoundGrid1.Model.ResumeChangeEvents()



					 Me.gridDataBoundGrid1.EndUpdate()



				 End If



			 End If



		'If no. of children is zero, fills with backcolor to avoid plus sign.

			 If count = 0 And e.ColIndex = 1 Then



				 Dim brush As Brush = New SolidBrush(e.Style.BackColor) 



				   Try



		'Paints the current to BackColor.

					   e.Graphics.FillRectangle(brush,e.Bounds)



					   e.Cancel = True



				   Finally



					   brush.Dispose()



					End Try





				End If



			End If 



		End Sub
		
   ~~~
   {:.prettyprint }

2. In CellButtonClick EventHandler to set the flag to control the Current Cell Drawing.

   #### Example

   ~~~ cs

		//Sets flag to false to control the Current Cell Drawing.

		private void gridDataBoundGrid1_CellButtonClicked(object sender, Syncfusion.Windows.Forms.Grid.GridCellButtonClickedEventArgs e)

		{

				flag = false;

		}

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		'Sets flag to false to control the Current Cell Drawing.

				Private Sub gridDataBoundGrid1_CellButtonClicked(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridCellButtonClickedEventArgs)



					   flag = False



				End Sub

   ~~~
   {:.prettyprint }