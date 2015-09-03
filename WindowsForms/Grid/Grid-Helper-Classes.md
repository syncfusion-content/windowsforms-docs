---
layout: post
title: Grid-Helper-Classes
description: grid helper classes
platform: windowsform
control: GridControl
documentation: ug
---

# Grid Helper Classes

## Custom Cell Types

Following are the custom cell types supported by the Grid Helper Library.

* ButtonEdit
* CalculatorTextBox
* Calendar
* DateTimePicker
* FNumericUpDown
* GridinCell
* LinkLabelCell
* PictureBox
* ButtonEdit

You can implement Button Edit control in grid cells by using ButtonEdit cell type. ButtonEdit cell types can be used by initializing ButtonEditStyleProperties class for grid cells.

Following are the Button Edit cell types available in the Grid control.

* Browse
* Check
* Down
* Image
* Left
* Leftend
* None
* Redo
* Right
* Rightend
* Undo
* Up

The following code example illustrates how to set the grid cell type to ButtonEdit.



{% highlight c#  %}

//Registers the Cell Type with Grid control.

RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.ButtonEdit);

Syncfusion.GridHelperClasses.ButtonEditStyleProperties sp;

sp = new Syncfusion.GridHelperClasses.ButtonEditStyleProperties(this.gridControl1[rowIndex, colIndex]);

sp.ButtonEditInfo.ButtonEditType = Syncfusion.GridHelperClasses.ButtonType.Browse;



this.gridControl1[2, 2].CellType = "ButtonEdit";



{% endhighlight   %}

{% highlight vbnet  %}

'Registers the Cell Type with Grid control.

RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.ButtonEdit)

Dim sp As Syncfusion.GridHelperClasses.ButtonEditStyleProperties

sp = New Syncfusion.GridHelperClasses.ButtonEditStyleProperties(Me.gridControl1(rowIndex, colIndex))

sp.ButtonEditInfo.ButtonEditType = Syncfusion.GridHelperClasses.ButtonType.Browse

gridControl1[2, 2].CellType = "ButtonEdit"
{% endhighlight   %}

Following screen shots illustrate different Button Edit cell types.



![](Grid-Helper-Classes_images/Grid-Helper-Classes_img1.jpeg)


![](Grid-Helper-Classes_images/Grid-Helper-Classes_img2.jpeg)





 ![](Grid-Helper-Classes_images/Grid-Helper-Classes_img3.jpeg) 





![](Grid-Helper-Classes_images/Grid-Helper-Classes_img4.jpeg) 





![](Grid-Helper-Classes_images/Grid-Helper-Classes_img5.jpeg) 





![](Grid-Helper-Classes_images/Grid-Helper-Classes_img6.jpeg) 



![](Grid-Helper-Classes_images/Grid-Helper-Classes_img7.jpeg) 





![](Grid-Helper-Classes_images/Grid-Helper-Classes_img8.jpeg) 





![](Grid-Helper-Classes_images/Grid-Helper-Classes_img9.jpeg) 



_Figure_ _559__: "Right" Button Edit Cell Type_



![](Grid-Helper-Classes_images/Grid-Helper-Classes_img10.jpeg) 





![](Grid-Helper-Classes_images/Grid-Helper-Classes_img11.jpeg) 





![](Grid-Helper-Classes_images/Grid-Helper-Classes_img12.jpeg) 





## CalculatorTextBox

You can implement Calculator control in grid cells by using CalculatorTextBox cell type. This cell type is implemented as a drop-down container, embedded into the cell. The drop down contains the calculator, which displays and stores the value in the cell.

The following code example illustrates how to set the grid cell type to CalculatorTextBox.



{% highlight c#  %}

RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.CalculatorTextBox);



CalculatorControl c1 = new CalculatorControl();

c1.BorderStyle = Border3DStyle.Flat;

c1.ButtonStyle = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;

c1.UseVisualStyle = true;



GridStyleInfo style = gridControl1[4, 2];

style.CellType = "CalculatorTextBox";

style.Control = c1;


{% endhighlight   %}


{% highlight vbnet  %}

RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.CalculatorTextBox)



Dim c1 As New CalculatorControl()

c1.BorderStyle = Border3DStyle.Flat

c1.ButtonStyle = Syncfusion.Windows.Forms.ButtonAppearance.Office2007

c1.UseVisualStyle = True



Dim style As GridStyleInfo = gridControl1(4, 2)

style.CellType = "CalculatorTextBox"

style.Control = c1

{% endhighlight   %}

Following screen shot illustrates CalculatorTextBox cell type in the Grid control.

![](Grid-Helper-Classes_images/Grid-Helper-Classes_img13.jpeg) 





## Calendar

You can implement MonthCalendar control in a grid cell by enabling Calendar cell type for that particular cell.

The following code example illustrates how to set the grid cell type to Calendar.

 


{% highlight c#  %}
RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.Calendar);

GridStyleInfo style;

style = gridControl1[row, 2];

style.CellType = "Calendar";



//Provides Month Calendar control for drawing cell contents.

style.Control = new MonthCalendar();


{% endhighlight   %}
{% highlight vbnet  %}




RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.Calendar)

Dim style As GridStyleInfo

style = gridControl1(row, 2)

style.CellType = "Calendar"



'Provides Month Calendar control for drawing cell contents.

style.Control = New MonthCalendar()


{% endhighlight   %}

Following screen shot illustrates Calendar cell type in Grid control.

![](Grid-Helper-Classes_images/Grid-Helper-Classes_img14.jpeg) 





## DateTimePicker

You can implement Date Time Picker control in grid cells by using DateTimePicker cell type. This cell type is implemented as a drop-down container, embedded into the cell where date and time picker is added. The drop down contains calendar, which displays and stores date value in the cell. Various formats for date and time can be specified by using Format style property.

The following code example illustrates how to set grid cell type to DateTimePicker.

 


{% highlight c#  %}
RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.DateTimePicker);



//Sets up DateTimePicker Cells.

this.gridControl1[4, 2].CellType = "DateTimePicker";

this.gridControl1[4, 2].CellValueType = typeof(DateTime);

this.gridControl1[4, 2].CellValue = DateTime.Now;

this.gridControl1[4, 2].Format = "MM/dd/yyyy hh:mm";



{% endhighlight   %}

{% highlight vbnet  %}

RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.DateTimePicker)



'Sets up DateTimePicker Cells.

Me.gridControl1(4, 2).CellType = "DateTimePicker"

Me.gridControl1(4, 2).CellValueType = GetType(DateTime)

Me.gridControl1(4, 2).CellValue = DateTime.Now

Me.gridControl1(4, 2).Format = "MM/dd/yyyy hh:mm"
{% endhighlight   %}


Following screen shot illustrates DateTimePicker cell type in Grid control.

![](Grid-Helper-Classes_images/Grid-Helper-Classes_img15.jpeg) 



## FnumericUpDown

You can implement Float Numeric Up Down control in grid cells by using FNumericUpDown cell type. FNumericUpDown cell types can be used by initializing FloatNumericUpDownStyleProperties class for grid cells. This will allow you set limitations of numeric values and several other properties can also be added as follows.

The following code example illustrates how to set grid cell type to FNumericUpDown.



{% highlight c#  %}

RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.FNumericUpDown);

GridStyleInfo style = this.gridControl1[2, 2];



//Sets up FNumericUpDown Cell. 

style.CellType = "FNumericUpDown";

style.Text = "0.5";





{% endhighlight   %}
{% highlight vbnet  %}
RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.FNumericUpDown)

Dim style As GridStyleInfo = Me.gridControl1(2, 2)



'Sets up FNumericUpDown Cell. 

style.CellType = "FNumericUpDown"

style.Text = "0.5"


{% endhighlight   %}

Following screen shot illustrates FNumericUpDown cell type in the Grid control.

![](Grid-Helper-Classes_images/Grid-Helper-Classes_img16.jpeg) 





## GridinCell

GridinCell cell type provides covered range of cells to embed the grid, which is added as a control to the cells. The registered cell model initializes the range by calculating the size of the grid control to be embedded, and adds styles such as borders and scroll bars to have the control within the range.

The following code example illustrates how to set grid cell type to GridinCell.




{% highlight c#  %}
RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.GridinCell);

GridControl grid;

this.gridControl1[3, 2].CellType = "GridinCell";

this.gridControl1.CoveredRanges.Add(GridRangeInfo.Cells(3, 2, 7, 4));

grid = new Syncfusion.GridHelperClasses.CellEmbeddedGrid(this.gridControl1);

grid.BackColor = Color.FromArgb(0xb4, 0xe7, 0xf2);

grid.RowCount = 10;

grid.ColCount = 4;

grid[1, 1].Text = "this is a 10x4 grid";

grid.ThemesEnabled = true;

this.gridControl1[3, 2].Control = grid;

this.gridControl1.Controls.Add(grid);



{% endhighlight   %}
{% highlight vbnet  %}



RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.GridinCell)

Dim grid As GridControl

Me.gridControl1(3, 2).CellType = "GridinCell"

Me.gridControl1.CoveredRanges.Add(GridRangeInfo.Cells(3, 2, 7, 4))

grid = New Syncfusion.GridHelperClasses.CellEmbeddedGrid(Me.gridControl1)

grid.BackColor = Color.FromArgb(&HB4, &HE7, &HF2)

grid.RowCount = 10

grid.ColCount = 4

grid(1, 1).Text = "this is a 10x4 grid"

grid.ThemesEnabled = True

Me.gridControl1(3, 2).Control = grid

Me.gridControl1.Controls.Add(grid)
{% endhighlight   %}

Following screen shot illustrates GridinCell cell type in Grid control.

![](Grid-Helper-Classes_images/Grid-Helper-Classes_img17.jpeg) 





## LinkLabelCell

LinkLabelCell cell type displays text, which can be hyperlinked to a specific location. The path to be hyperlinked is specified by using the Tag property.

The following code example illustrates how to set grid cell type to LinkLabelCell.

 

{% highlight c#  %}

RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.LinkLabelCell);

int rowIndex = 5;

gridControl1[rowIndex, 2].CellType = "LinkLabelCell";

gridControl1[rowIndex, 2].Text = "Syncfusion, Inc.";

gridControl1[rowIndex, 2].Font.Bold = true;

gridControl1[rowIndex, 2].Tag = "http://www.syncfusion.com";

gridControl1[rowIndex, 2].HorizontalAlignment = GridHorizontalAlignment.Center;



{% endhighlight  %}
{% highlight vbnet  %}



RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.LinkLabelCell)

Dim rowIndex As Integer = 5

gridControl1(rowIndex, 2).CellType = "LinkLabelCell"

gridControl1(rowIndex, 2).Text = "Syncfusion, Inc."

gridControl1(rowIndex, 2).Font.Bold = True

gridControl1(rowIndex, 2).Tag = "http://www.syncfusion.com"

gridControl1(rowIndex, 2).HorizontalAlignment = GridHorizontalAlignment.Center

{% endhighlight   %}

Following screen shot illustrates LinkLabelCell cell type in the Grid control.                                      

![](Grid-Helper-Classes_images/Grid-Helper-Classes_img18.jpeg) 





## PictureBox

PictureBox cell type can be embedded into a cell by calculating the size of the picture and extending the width and height of the cell accordingly. PictureBoxStyleProperties class is used to specify the style for Picture Box control.

The following code example illustrates how to set the grid cell type to PictureBox.



{% highlight c#  %}

RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.PictureBox);

Syncfusion.GridHelperClasses.PictureBoxStyleProperties tsp = new Syncfusion.GridHelperClasses.PictureBoxStyleProperties(new GridStyleInfo(gridControl1.TableStyle));

tsp.SizeMode = PictureBoxSizeMode.AutoSize;



Syncfusion.GridHelperClasses.PictureBoxStyleProperties sp;



GridStyleInfo style;



gridControl1.ColWidths[1] = 20;



style = gridControl1[2, 2];

style.CellType = "PictureBox";



sp = new Syncfusion.GridHelperClasses.PictureBoxStyleProperties(style);

sp.Image = GetImage("one.jpg");




{% endhighlight   %}
{% highlight vbnet  %}


RegisterCellModel.GridCellType(gridControl1, CustomCellTypes.PictureBox)

Dim tsp As New Syncfusion.GridHelperClasses.PictureBoxStyleProperties(New GridStyleInfo(gridControl1.TableStyle))

tsp.SizeMode = PictureBoxSizeMode.AutoSize

Dim sp As Syncfusion.GridHelperClasses.PictureBoxStyleProperties



Dim style As GridStyleInfo



gridControl1.ColWidths(1) = 20



style = gridControl1(2, 2)

style.CellType = "PictureBox"



sp = New Syncfusion.GridHelperClasses.PictureBoxStyleProperties(style)

sp.Image = GetImage("one.jpg")

{% endhighlight   %}

Following screen shot illustrates PictureBox cell type in Grid control.

![](Grid-Helper-Classes_images/Grid-Helper-Classes_img19.jpeg) 



## Grid Format Cell Dialog

Grid Format Cell Dialog, similar to the Excel-like Format Cell Dialog, enables users to format cells dynamically. It provides options to customize cell font family, font color, font size, font style, font effects, background, alignment, text format, and so on. You can instantiate Grid Format Cell Dialog by using the following code.



{% highlight c#  %}

GridFormatCellDialog f = new GridFormatCellDialog(this.gridControl1);

f.ShowDialog();



{% endhighlight   %}
{% highlight vbnet  %}



Dim f As New GridFormatCellDialog(Me.gridControl1)

f.ShowDialog()


{% endhighlight   %}

Following screen shot illustrates the Format Cell Dialog of Grid control.

![](Grid-Helper-Classes_images/Grid-Helper-Classes_img20.jpeg) 



## Printing

This topic elaborates on printing options supported by Grid control.

### Printing Multiple Grids

You can print multiple grids across various pages by using GridPrintDocumentAdv helper class. This is achieved by drawing full sized grid to a large bitmap and then drawing this bitmap scaled to fit the output page.

By using ScaleColumnsToFitPage property, columns can be scaled to fit a single page. Headers and footers can also be added by using DrawGridPrintHeader and DrawGridPrintFooter events. The following code examples illustrate how to do this.



{% highlight c#  %}

Syncfusion.GridHelperClasses.GridPrintDocumentAdv pd = new Syncfusion.GridHelperClasses.GridPrintDocumentAdv(this.gridControl1);

pd.DefaultPageSettings.Margins = new System.Drawing.Printing.Margins(25, 25, 25, 25);

pd.HeaderHeight = 70;

pd.FooterHeight = 50;



pd.ScaleColumnsToFitPage = true;



PrintPreviewDialog previewDialog = new PrintPreviewDialog();

previewDialog.Document = pd;

previewDialog.Show();


{% endhighlight   %}
{% highlight vbnet  %}




Dim pd As New Syncfusion.GridHelperClasses.GridPrintDocumentAdv(Me.gridControl1)

pd.DefaultPageSettings.Margins = New System.Drawing.Printing.Margins(25, 25, 25, 25)

pd.HeaderHeight = 70

pd.FooterHeight = 50



pd.ScaleColumnsToFitPage = True



Dim previewDialog As New PrintPreviewDialog()

previewDialog.Document = pd

previewDialog.Show()

{% endhighlight   %}

The following screen shots illustrate the Print Preview feature of the Grid control.

![](Grid-Helper-Classes_images/Grid-Helper-Classes_img21.png) 



![](Grid-Helper-Classes_images/Grid-Helper-Classes_img22.jpeg) 





### Print Page Layout

Print Page Layout feature enables viewing page layout on the grid by displaying a segment line and page number with each segment. This helps users to analyze page breaks within the grid, and manage them accordingly.

Properties are available to define colors for the line and text of the page layout. The following code examples illustrate how to set the line and text color of the page layout.



{% highlight c#  %}

LayoutSupportHelper layoutHelper;

layoutHelper = new LayoutSupportHelper(gridControl1);

layoutHelper.LineColor= Color.Blue;

layoutHelper.TextColor = Color.Green;



{% endhighlight   %}
{% highlight vbnet  %}



Dim layoutHelper As LayoutSupportHelper

layoutHelper = New LayoutSupportHelper(gridControl1)

layoutHelper.TextColor = Color.Orange

layoutHelper.LineColor = Color.SteelBlue


{% endhighlight   %}
Following screen shot illustrates print page layout feature of the Grid control.

![](Grid-Helper-Classes_images/Grid-Helper-Classes_img23.jpeg) 



## Fill Series 

### Support to implement Excel-like Fill Series in the Grid

A helper class implementing IMouseController interface has been added to GridHelperClasses library to implement Excel-like Fill Series in the Grid. To make use of this functionality, Syncfusion.GridHelperClasses.Windows .dll must be referred and the mouse controller has to be added in MouseControllerDispatcher of grid.

The following support has been provided since 8.2.

The behavior has extended support, which pops up a menu after the drag, and has two items:

* Copy Series - Copy paste the content from the cell.
* Fill Series - Fill the cell with appropriate sequence.



The Excel Like fill Series has support on:

* Number - From active range with single or multiple cells (e.g. 1, 2, 3...)
* Text - Will paste the same text for both 'copy series' and 'fill series'
* Date - Date format must be MM/DD/YYYY
* Month - The month in text (e.g. January, February, March... or Jan, Feb, Mar...)

The following code illustrates how to add Excel Like fill Series.

 {% highlight c#  %}

            gridControl1.ExcelLikeCurrentCell = true;

            Syncfusion.GridHelperClasses.ExcelSelectionMarkerMouseController marker = new

 Syncfusion.GridHelperClasses.ExcelSelectionMarkerMouseController(this.gridControl1);

            this.gridControl1.MouseControllerDispatcher.Add(marker);







            GridControl1.ExcelLikeCurrentCell = True

            Dim excelMarker As New ExcelMarkerMouseController(GridControl1)

            GridControl1.MouseControllerDispatcher.Add(excelMarker)

{% endhighlight   %}

Methods of IMouseController Interface Implemented

* MouseMove - The code handled in this method allows dragging series in either one of the four directions at a time, retaining a rectangular layout.
* MouseUp - The code handled in this method sets the cell values based on dragged series accordingly (if it is a formula or text or numeric value).

Following are screen shots illustrating the feature.

1. Image displaying drag operation of the selected series towards bottom.

   ![](Grid-Helper-Classes_images/Grid-Helper-Classes_img24.jpeg) 





2. Image displaying the filled series.

   ![](Grid-Helper-Classes_images/Grid-Helper-Classes_img25.jpeg) 





3. The image shows popup menu displayed after dragging the cell that displays January.

   ![](Grid-Helper-Classes_images/Grid-Helper-Classes_img26.jpeg) 



   N> The cell has been dragged exactly the same as it is done in Excel.

4. The image shows cells have been filled after the Fill series has been selected from the popup menu.



   ![](Grid-Helper-Classes_images/Grid-Helper-Classes_img28.jpeg) 



   {:.prettyprint}