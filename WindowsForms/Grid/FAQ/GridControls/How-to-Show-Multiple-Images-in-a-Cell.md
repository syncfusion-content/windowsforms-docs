---
layout: post
title: How-to-Show-Multiple-Images-in-a-Cell
description: how to show multiple images in a cell
platform: windowsforms
control: Tools
documentation: ug
---

# How to Show Multiple Images in a Cell

## Introduction

To show multiple Images in a cell, you need to handle CellDrawn Event. Follow the steps that are given below to achieve this.

1. Sets the CellType to GridCellTypeName.Image.

   Example





				//Sets the CellType to Image Type.

				this.gridControl1[3,3].CellType = GridCellTypeName.Image;



				


				'Sets the CellType to Image Type.

				Me.gridControl1(3,3).CellType = GridCellTypeName.Image



2. In the CellDrawn EventHandler, draw Combinedbitmap using DrawImage function.

   Example





				private void gridControl1_CellDrawn(object sender, Syncfusion.Windows.Forms.Grid.GridDrawCellEventArgs e)

				{

						if( e.RowIndex == 3 && e.ColIndex == 3)

						{

				//Draws the image to the Cell.

							  e.Graphics.DrawImage(bitmap ,e.Bounds.X,e.Bounds.Y );



						 }

				}



				



				Private Sub gridControl1_CellDrawn(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridDrawCellEventArgs)

						   If e.RowIndex = 3 And e.ColIndex = 3 Then

				'Draws the image to the Cell.

								 e.Graphics.DrawImage(bitmap,e.Bounds.X,e.Bounds.Y)

						   End If

				End Sub
				
   {:.prettyprint}


