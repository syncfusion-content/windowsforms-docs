---
layout: post
title: How-to-Create-a-Multi-Select-DropDown-Grid-in-a-Ce
description: how to create a multi-select dropdown grid in a cell
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Create a Multi-Select DropDown Grid in a Cell

## Introduction

To have a cell that has a multi-selection dropdown grid, you must use a derived custom cell that is derived from GridDropDownGridCellModel and GridDropDownGridCellRenderer. 

1. In the derived renderer, the code embeds GridControl whose ListBoxSelectionMode is set to MultiSimple. The renderer uses DropDownContainerCloseDropDown override to move the text in the selected rows of the embedded grid, into a string that is set into the style. The CellValue of the cell in the parent grid, which hosts this custom celltype lists the selected options as a hyphen delimited string for every column, and the NewLine delimited string for every row.



   Example





					//Creates an instance of DropDownGrid Model.

					DropDownGridCellModel aModel = new 

					DropDownGridCellModel(this.gridControl1.Model);

					aModel.EmbeddedGrid = GridA;



					//Registers the DropDownGridCellModel to GridModel.

					gridControl1.CellModels.Add("MultiSelectCombo",aModel);







						'Creates an instance of the DropDownGrid Model.

						Dim aModel As DropDownGridCellModel = New 

						DropDownGridCellModel(Me.gridControl1.Model)

						aModel.EmbeddedGrid = GridA



						'Registers the DropDownGridCellModel to GridModel.

						gridControl1.CellModels.Add("MultiSelectCombo",aModel)



2. Set the CellType property to "MultiSelectCombo".

   Example





					//Sets the CellType to 'MultiSelectCombo'.

					this.gridControl1[4,2].CellType = "MultiSelectCombo";







					'Sets the CellType to 'InPlaceRTB'.

					Me.gridControl1(4,2).CellType = "MultiSelectCombo"

   {:.prettyprint}

