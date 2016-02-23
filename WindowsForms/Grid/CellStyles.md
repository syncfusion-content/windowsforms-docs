---
layout: post
title: Cell Styles in GridControl for Syncfusion Essential WindowsForms
description: This section explains on the architecture of a cell and its properties in GridControl.
platform: WindowsForms
control: GridControl
documentation: ug
---

#Cell Style Architecture

GridControl can be thought of as a rectangular table of grid cells. Each cell contains distinct information and can be displayed independently of other cells. 
GridControl uses [GridStyleInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo.html) objects to store state information about the appearance of a grid cell. So attributes like font, backcolor, cellvalue and celltype are all reflected in a single GridStyleInfo object. This section explains how to access and use the GridStyleInfo objects.

## GridStyleInfo properties

`GridStyleInfo` provides a lot of properties to control the appearance and behavior of grid cells. This topic explains some of the styling properties.

### BackColor

[BackColor](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~BackColor.html) property specifies the background color for the cell.
{% tabs %}{% highlight c# %}
this.gridControl1[2, 2].BackColor = Color.LightSkyBlue;
this.gridControl1[3, 3].BackColor = Color.LightCoral;
this.gridControl1[4, 4].BackColor = Color.LightPink;
{% endhighlight %}

{% highlight vb %}
Me.gridControl1(2, 2).BackColor = Color.LightSkyBlue
Me.gridControl1(3, 3).BackColor = Color.LightCoral
Me.gridControl1(4, 4).BackColor = Color.LightPink
{% endhighlight %}

{% endtabs %} ![](CellStyles_images/CellStyles_img1.png)

### Font

[Font](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~Font.html) property of the `GridStyleInfo` class specifies the font for the text displayed in the cell. In GridControl [GridFontInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridFontInfo.html) class acts as a wrapper class for the standard [System.Drawing.Font](https://msdn.microsoft.com/en-us/library/system.drawing.font.aspx) class. The `GridFontInfo` class has special static members that easily modify font property members.
{% tabs %}{% highlight c# %}
GridFontInfo fontsize = new GridFontInfo();
fontsize.Size = 11f;
this.gridControl1[2, 2].Font = fontsize;
this.gridControl1[2, 3].Font.Bold = true;
this.gridControl1[2, 3].Font.Italic = true;
this.gridControl1[3, 2].Font.Underline = true;
this.gridControl1[3, 3].Font.Strikeout = true;
{% endhighlight %}

{% highlight vb %}
Dim fontsize As New GridFontInfo()
fontsize.Size = 11f
Me.gridControl1(2, 2).Font = fontsize
Me.gridControl1(2, 3).Font.Bold = True
Me.gridControl1(2, 3).Font.Italic = True
Me.gridControl1(3, 2).Font.Underline = True
Me.gridControl1(3, 3).Font.Strikeout = True
{% endhighlight %}

{% endtabs %}

![](CellStyles_images/CellStyles_img2.png)

### Text and CellValue

Value for the cells can be changed by using either [Text](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~Text.html) or [CellValue](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~CellValue.html) property. Both the properties are closely related. The major difference is that, `Text` property is a string and `CellValue` property is an object.

{% tabs %}{% highlight c# %}
this.gridControl1[2, 2].Text = "Essential Grid";
object obj = new object();
obj = "Essential Grid";
this.gridControl1[3,2].CellValue = obj;
{% endhighlight %}

{% highlight vb %}
Me.gridControl1(2, 2).Text = "Essential Grid"
Dim obj As New Object()
obj = "Essential Grid"
Me.gridControl1(3,2).CellValue = obj
{% endhighlight %}

{% endtabs %} ![](CellStyles_images/CellStyles_img3.png)

### ImageList

[ImageList](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~ImageList.html) property holds [Systems.Windows.Forms.ImageList](https://msdn.microsoft.com/en-us/library/system.windows.forms.imagelist.aspx). Generally the whole grid will store the ImageList in the parent `GridStyleInfo`. The images can be retrieved by using [ImageIndex](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~ImageIndex.html) property and can set on cell-by-cell basis.

{% tabs %}{% highlight c# %}
ImageList imageList = new ImageList();
imageList.Images.Add(new Bitmap(SystemIcons.Error.ToBitmap()));
imageList.Images.Add(new Bitmap(SystemIcons.Exclamation.ToBitmap()));
// Assigning images to the whole Grid
this.gridControl1.TableStyle.ImageList = imageList;
// Assigning images using the ImageIndex property
this.gridControl1[2, 2].ImageIndex = 0;
this.gridControl1[3, 2].ImageIndex = 1;
{% endhighlight %}

{% highlight vb %}
Dim imageList As New ImageList()
imageList.Images.Add(New Bitmap(SystemIcons.Error.ToBitmap()))
imageList.Images.Add(New Bitmap(SystemIcons.Exclamation.ToBitmap()))
' Assigning images to the whole Grid
Me.gridControl1.TableStyle.ImageList = imageList
' Assigning images using the ImageIndex property
Me.gridControl1(2, 2).ImageIndex = 0
Me.gridControl1(3, 2).ImageIndex = 1
{% endhighlight %}

{% endtabs %}

![](CellStyles_images/CellStyles_img4.png)

### Interior

[Interior](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~Interior.html) property specifies solid, gradient, or pattern style for cell’s background. Grid cells can be painted by using Interior property under Syncfusion.Drawing.BrushInfo class. [BrushInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Drawing.BrushInfo.html) holds information on filling the background of a grid cell. [PatternStyle](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Drawing.PatternStyle.html) specifies which the pattern style to be used and [GradientStyle](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Drawing.GradientStyle.html) specifies the gradient style that has to be used.

{% tabs %}{% highlight c# %}
gridControl1[2, 2].Interior = new BrushInfo(GradientStyle.Horizontal, Color.Yellow, Color.Blue);
gridControl1[3, 2].Interior = new BrushInfo(PatternStyle.DashedHorizontal, Color.Black, Color.White);
{% endhighlight %}

{% highlight vb %}
gridControl1(2, 2).Interior = New BrushInfo(GradientStyle.Horizontal, Color.Yellow, Color.Blue)
gridControl1(3, 2).Interior = New BrushInfo(PatternStyle.DashedHorizontal, Color.Black, Color.White)
{% endhighlight %}

{% endtabs %}

![](CellStyles_images/CellStyles_img5.png)

### TextColor

[TextColor](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~TextColor.html) property is used to change the color of the cell text in GridControl.

{% tabs %}{% highlight c# %}
gridControl1[2, 2].Text = "Essential Grid";
gridControl1[2, 2].TextColor = Color.Red;
{% endhighlight %}

{% highlight vb %}
gridControl1(2, 2).Text = "Essential Grid"
gridControl1(2, 2).TextColor = Color.Red
{% endhighlight %}

{% endtabs %}

![](CellStyles_images/CellStyles_img6.png)

### Borders

Borders can be set on all sides of a cell by setting [Borders](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~Borders.html) property to an instance of [GridBorder](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridBorder.html). GridBorder class holds the formatting information for the borders of the cell.

{% tabs %}{% highlight c# %}
gridControl1[2, 2].Text = "Essential Grid";
gridControl1[2, 2].Borders.All = new GridBorder(GridBorderStyle.Solid, Color.Red);
{% endhighlight %}

{% highlight vb %}
gridControl1(2, 2).Text = "Essential Grid"
gridControl1(2, 2).Borders.All = New GridBorder(GridBorderStyle.Solid, Color.Red)
{% endhighlight %}

{% endtabs %}![](CellStyles_images/CellStyles_img7.png)

### Orientation

[Orientation](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridFontInfo~Orientation.html) property specifies the orientation of the grid cell text. The orientation will change accordingly to the angle specified.
{% tabs %}{% highlight c# %}
gridControl1[2, 2].Text = "Essential Grid";
gridControl1[2, 2].Font.Orientation = 180;
{% endhighlight %}

{% highlight vb %}
gridControl1(2, 2).Text = "Essential Grid"
gridControl1(2, 2).Font.Orientation = 180
{% endhighlight %}

{% endtabs %}![](CellStyles_images/CellStyles_img8.png)

### Format

The formats of a cell value can be changed by using [Format](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~Format.html) property. For more details on the different types of formatting types, please check the msdn link over [here.](https://msdn.microsoft.com/en-us/library/26etazsy.aspx)
{% tabs %}{% highlight c# %}
gridControl1[2, 2].CellValue = 31456;
this.gridControl1[2, 2].Format = "C";
{% endhighlight %}

{% highlight vb %}
gridControl1(2, 2).CellValue = 31456
Me.gridControl1(2, 2).Format = "C"
{% endhighlight %}

{% endtabs %}![](CellStyles_images/CellStyles_img9.png)

### CellTipText

[CellTipText](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~CellTipText.html) object specifies the ToolTip Text that needs to be displayed when the mouse pointer is moved over a cell. Cell tip text can be set for rows, columns, tables and individual cells. 

{% tabs %}{% highlight c# %}
gridControl1[2, 2].CellValue = 31456;
//Tip Text for cell (2,2).
this.gridControl1[2, 2].CellTipText = "TipText for cell 2,2";
{% endhighlight %}

{% highlight vb %}
gridControl1(2, 2).CellValue = 31456
'Tip Text for cell (2,2).
Me.gridControl1(2, 2).CellTipText = "TipText for cell 2,2"
{% endhighlight %}

{% endtabs %}![](CellStyles_images/CellStyles_img10.png)

## BaseStyles

[BaseStyle](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~BaseStyle.html)s is one of the parent-type style which is used to customize the cell’s appearance. BaseStyles are `GridStyleInfo` objects which can be associated with an arbitrary collection of cells. 
Base styles that are used in GridControl are.

1. [Standard](#standard)

2. [Header](#header)

3. [Row Header](#row-header)

4. [Column Header](#column-header)

### BaseStyles Editor

To work with `BaseStyles` from within the Visual Studio designer, make use of the Edit base styles verb that appears at the bottom of the GridControl’s property grid.

![](CellStyles_images/CellStyles_img11.png)

When `Edit base styles` verb is clicked, then `GridBaseStyleCollectionEditor` dialog box will be displayed. This editor dialog box can be used to edit existing `BaseStyles` or add new ones.

![](CellStyles_images/CellStyles_img12.png)

N> It is also possible to add a new BaseStyle or remove an existing BaseStyle using the `GridBaseStyleCollectionEditor` dialog box. 

### Standard

The Standard base style can be used to make changes to all the cells in GridControl, except for the header cells.

{% tabs %} {% highlight c# %}
gridControl1.BaseStylesMap["Standard"].StyleInfo.BackColor = Color.Aqua;
{% endhighlight %}

{% highlight vb %}
gridControl1.BaseStylesMap("Standard").StyleInfo.BackColor = Color.Aqua
{% endhighlight %}

{% endtabs %}
![](CellStyles_images/CellStyles_img13.png)

### Header

The Header base style can be used to make changes only for the header cells that are present in the GridControl.

{% tabs %} {% highlight c# %}
gridControl1.BaseStylesMap["Header"].StyleInfo.TextColor = Color.Red;
{% endhighlight %}

{% highlight vb %}
gridControl1.BaseStylesMap("Header").StyleInfo.TextColor = Color.Red
{% endhighlight %}

{% endtabs %}![](CellStyles_images/CellStyles_img14.png)

### Column header

The Column Header base style can be used to make changes only in the column header cells that are present in the GridControl.
{% tabs %} {% highlight c# %}
gridControl1.BaseStylesMap["Column Header"].StyleInfo.TextColor = Color.Red;
{% endhighlight %}

{% highlight vb %}
gridControl1.BaseStylesMap("Column Header").StyleInfo.TextColor = Color.DarkGreen
{% endhighlight %}

{% endtabs %}![](CellStyles_images/CellStyles_img15.png)

### Row header

The Row Header base style can be used to make changes only in the row header cells that are available in the GridControl.
{% tabs %}{% highlight c# %}
gridControl1.BaseStylesMap["Row Header"].StyleInfo.TextColor = Color.Red;
{% endhighlight %}

{% highlight vb %}
gridControl1.BaseStylesMap("Row Header").StyleInfo.TextColor = Color.Orange
{% endhighlight %}

{% endtabs %}![](CellStyles_images/CellStyles_img16.png)

### Custom BaseStyles

Custom BaseStyles can be defined in GridControl by using the [GridBaseStyle](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridBaseStyle.html). After defining a BaseStyle, it has to be added to the [BaseStylesMap](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridBaseStylesMap.html) so that it can be accessed in `GridStyleInfo` objects. Assign the defined base style to the desired cells by using the [BaseStyle](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~BaseStyle.html) property in the `GridStyleInfo`.

{% tabs %} {% highlight c# %}
//Adds a new base style.
GridBaseStyle gridBaseStyle1 = new GridBaseStyle("BaseStyleTest", false);
gridBaseStyle1.StyleInfo.BackColor = Color.SkyBlue;
gridBaseStyle1.StyleInfo.TextColor = Color.RosyBrown;
gridControl1.BaseStylesMap.Add(gridBaseStyle1);
//Applies this base style to couple of cells.
gridControl1[2, 2].BaseStyle = "BaseStyleTest";
gridControl1[3, 2].BaseStyle = "BaseStyleTest";
{% endhighlight %}

{% highlight vb %}
'Adds a new base style.
Dim gridBaseStyle1 As New GridBaseStyle("BaseStyleTest", False)
gridBaseStyle1.StyleInfo.BackColor = Color.SkyBlue
gridBaseStyle1.StyleInfo.TextColor = Color.RosyBrown
gridControl1.BaseStylesMap.Add(gridBaseStyle1)
'Applies this base style to couple of cells.
gridControl1(2, 2).BaseStyle = "BaseStyleTest"
gridControl1(3, 2).BaseStyle = "BaseStyleTest"
{% endhighlight %}

{% endtabs %} ![](CellStyles_images/CellStyles_img17.png)

## Assigning styles in cells

In this section let’s discuss on some of the ways that can be used to assign the `GridStyleInfo` object.

### ChangeCells Method

For assigning the `GridStyleInfo` objects for a range of cells, make use of the [ChangeCells](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~ChangeCells.html)()method. This overloaded method accepts `GridRangeInfo` and `GridStyleInfo` objects. [GridRangeInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridRangeInfo.html) class specifies a range of cells in GridControl.
The ChangeCells method depends on the [StyleModifyType](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Shared.Base~Syncfusion.Styles.StyleModifyType.html) parameter. This modify type defines the style operations. Default modify type is `StyleModifyType.Override`.

{% tabs %} {% highlight c# %}
// Creates a GridStyleInfo object
GridStyleInfo style = new GridStyleInfo();
// Set values and properties
style.BackColor = Color.LightPink;
style.CellValue = "Grid";
style.Font.Facename = "Verdana";
style.TextColor = Color.SaddleBrown;
style.Borders.All = new GridBorder(GridBorderStyle.Dashed, Color.Gray);
style.CellTipText = "Comments for Grid";
style.Font.Size = 8.2f;
style.Font.Bold = true;
style.Font.Italic = true;
// Applies styles to a range of cells
this.gridControl1.ChangeCells(GridRangeInfo.Cells(3, 2, 4, 3), style, StyleModifyType.Override);
{% endhighlight %}

{% highlight vb %}
'Creates a GridSyleInfo object
Dim style As New GridStyleInfo()
' Set values and properties
style.BackColor = Color.LightPink
style.CellValue = "Grid"
style.Font.Facename = "Verdana"
style.TextColor = Color.SaddleBrown
style.Borders.All = New GridBorder(GridBorderStyle.Dashed, Color.Gray)
style.CellTipText = "Comments for Grid"
style.Font.Size = 8.2f
style.Font.Bold = True
style.Font.Italic = True
' Applies styles to a range of cells
Me.gridControl1.ChangeCells(GridRangeInfo.Cells(3, 2, 4, 3), style, StyleModifyType.Override)
{% endhighlight %}

{% endtabs %}![](CellStyles_images/CellStyles_img18.png)

### Table styles

Changes can be done for the whole grid by using the [TableStyle](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~TableStyle.html) property. TableStyle is a single `GridStyleInfo` object that is associated with the entire grid. 

{% tabs %}{% highlight c# %}
//Creates a GridSyleInfo object
GridStyleInfo style = new GridStyleInfo();
// Set values and properties
style.BackColor = Color.LightPink;
style.CellValue = "Grid";
style.Font.Facename = "Verdana";
style.TextColor = Color.SaddleBrown;
style.Borders.All = new GridBorder(GridBorderStyle.Dashed, Color.Gray);
style.CellTipText = "Comments for Grid";
style.Font.Size = 8.2f;
style.Font.Bold = true;
style.Font.Italic = true;
// Applies the styles for the whole Grid
this.gridControl1.TableStyle = style;
{% endhighlight %}

{% highlight vb %}
'Creates a GridSyleInfo object
Dim style As New GridStyleInfo()
' Set values and properties
style.BackColor = Color.LightPink
style.CellValue = "Grid"
style.Font.Facename = "Verdana"
style.TextColor = Color.SaddleBrown
style.Borders.All = New GridBorder(GridBorderStyle.Dashed, Color.Gray)
style.CellTipText = "Comments for Grid"
style.Font.Size = 8.2f
style.Font.Bold = True
style.Font.Italic = True
' Applies the styles for the whole Grid
Me.gridControl1.TableStyle = style
{% endhighlight %}

{% endtabs %}![](CellStyles_images/CellStyles_img19.png)

### Row styles

Changes can be done for a particular or range of rows by using the [RowStyles](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~RowStyles.html) property. This property is a `GridStyleInfo` object which is associated with each row.

{% tabs %}{% highlight c# %}
//Creates a GridSyleInfo object
GridStyleInfo style = new GridStyleInfo();
// Set values and properties
style.BackColor = Color.LightPink;
style.CellValue = "Grid";
style.Font.Facename = "Verdana";
style.TextColor = Color.SaddleBrown;
style.Borders.All = new GridBorder(GridBorderStyle.Dashed, Color.Gray);
style.CellTipText = "Comments for Grid";
style.Font.Size = 8.2f;
style.Font.Bold = true;
style.Font.Italic = true;
// Applies the styles for the mentioned Rows in Grid
this.gridControl1.RowStyles[3] = style;
this.gridControl1.RowStyles[4] = style;
{% endhighlight %}

{% highlight vb %}
'Creates a GridSyleInfo object
Dim style As New GridStyleInfo()
' Set values and properties
style.BackColor = Color.LightPink
style.CellValue = "Grid"
style.Font.Facename = "Verdana"
style.TextColor = Color.SaddleBrown
style.Borders.All = New GridBorder(GridBorderStyle.Dashed, Color.Gray)
style.CellTipText = "Comments for Grid"
style.Font.Size = 8.2f
style.Font.Bold = True
style.Font.Italic = True
' Applies the styles for the mentioned Rows in Grid
Me.gridControl1.RowStyles(3) = style
Me.gridControl1.RowStyles(4) = style
{% endhighlight %}

{% endtabs %}![](CellStyles_images/CellStyles_img20.png)

### Column styles

Changes can be done for a particular or range of columns by using the [ColStyles](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~ColStyles.html) property. This property is a `GridStyleInfo` object which is associated with each column.

{% tabs %} {% highlight c# %}
//Creates a GridSyleInfo object
GridStyleInfo style = new GridStyleInfo();
// Set values and properties
style.BackColor = Color.LightPink;
style.CellValue = "Grid";
style.Font.Facename = "Verdana";
style.TextColor = Color.SaddleBrown;
style.Borders.All = new GridBorder(GridBorderStyle.Dashed, Color.Gray);
style.CellTipText = "Comments for Grid";
style.Font.Size = 8.2f;
style.Font.Bold = true;
style.Font.Italic = true;
// Applies the styles of the columns 3 and 4.
this.gridControl1.ColStyles[3] = style;
this.gridControl1.ColStyles[4] = style;
{% endhighlight %}

{% highlight vb %}
'Creates a GridSyleInfo object
Dim style As New GridStyleInfo()
' Set values and properties
style.BackColor = Color.LightPink
style.CellValue = "Grid"
style.Font.Facename = "Verdana"
style.TextColor = Color.SaddleBrown
style.Borders.All = New GridBorder(GridBorderStyle.Dashed, Color.Gray)
style.CellTipText = "Comments for Grid"
style.Font.Size = 8.2f
style.Font.Bold = True
style.Font.Italic = True
' Applies the styles of the columns 3 and 4.
Me.gridControl1.ColStyles(3) = style
Me.gridControl1.ColStyles(4) = style
{% endhighlight %}

{% endtabs %}![](CellStyles_images/CellStyles_img21.png)

## Removing Styles

For removing the `GridStyleInfo` object from the grid cells, make use of the [ModifyStyle](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridStyleInfo~ModifyStyle.html) method. This method can remove the styles for whole grid or a particular range of cells.

{% tabs %} {% highlight c# %}
// Removes cell styles for all the cells in the grid.
this.gridControl1.TableStyle.ModifyStyle(null, StyleModifyType.Remove);
// Removes cell styles for the particular cell (2, 2).
this.gridControl1[2, 2].ModifyStyle(null, StyleModifyType.Remove);
// Removes styles for the column 3.
this.gridControl1.ColStyles[3].ModifyStyle(null, StyleModifyType.Remove);
// Remove styles for the row 3.
this.gridControl1.RowStyles[3].ModifyStyle(null, StyleModifyType.Remove);
{% endhighlight %}

{% highlight vb %}
'Removes cell styles for all the cells in the grid.
Me.gridControl1.TableStyle.ModifyStyle(Nothing, StyleModifyType.Remove)
'Removes cell styles for the particular cell (2, 2).
Me.gridControl1(2, 2).ModifyStyle(Nothing, StyleModifyType.Remove)
'Removes styles for the column 3.
Me.gridControl1.ColStyles(3).ModifyStyle(Nothing, StyleModifyType.Remove)
'Remove styles for the row 3.
Me.gridControl1.RowStyles(3).ModifyStyle(Nothing, StyleModifyType.Remove)
{% endhighlight %}
{% endtabs %}

N> Null denotes to add an empty style after removing the existing styles.

### Clearing styles along with data

It is possible to clear styles along with data in a cell by using the [Model.ClearCells](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~ClearCells.html) method. In this method mention the range of cells to be cleared and also a boolean value whether to clear the style along with it. If `true`, the styles will be cleared, otherwise only the data will be cleared.

{% tabs %} {% highlight c# %}
// Will clear styles along with data of the range (2, 2, 5, 5).
this.gridControl1.Model.ClearCells(GridRangeInfo.Cells(2, 2, 5, 5), true);
// Will clear styles along with data of 3rd row.
this.gridControl1.Model.ClearCells(GridRangeInfo.Row(2), true);
// Will clear styles along with data of 3rd column.
this.gridControl1.Model.ClearCells(GridRangeInfo.Col(2), true);
{% endhighlight %}

{% highlight vb %}
'Will clear styles along with data of the range (2, 2, 5, 5).
Me.gridControl1.Model.ClearCells(GridRangeInfo.Cells(2, 2, 5, 5), True)
'Will clear styles along with data of 3rd row.
Me.gridControl1.Model.ClearCells(GridRangeInfo.Row(2), True)
'Will clear styles along with data of 3rd column.
Me.gridControl1.Model.ClearCells(GridRangeInfo.Col(2), True)
{% endhighlight %}
{% endtabs %}

N> <kbd>Ctrl</kbd>+<kbd>Del</kbd> key combination can be used to clear the data along with the styles.

### Clearing only the data

For clearing only the selected range of cells, make use of the [Model.Clear](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~Clear.html) method. This method clears only the cells that are selected. 

{% tabs %}{% highlight c# %}
// Will clear the selected contents.
this.gridControl1.Model.Clear(true);
{% endhighlight %}

{% highlight vb %}
'Will clear the selected contents.
Me.gridControl1.Model.Clear(True)
{% endhighlight %}

{% endtabs %}

N> <kbd>Del</kbd> key can be used for clearing the data alone.
