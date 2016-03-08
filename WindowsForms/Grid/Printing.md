---
layout: post
title: Printing for Syncfusion Essential Windows Forms
description: This section explains on how to print and print preview the contents of GridControl.
platform: windowsforms
control: GridControl
documentation: ug
---

# Printing
The GridControl has in-built support for printing. To print the contents of the grid, convert the grid into the printable document using [GridPrintDocument](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridPrintDocument_members.html) and pass it to the [PrintDialog](https://msdn.microsoft.com/en-us/library/system.windows.forms.printdialog.aspx). 

{% tabs %}
{% highlight c# %}
//Convert the Grid as printing document
GridPrintDocument gpd = new GridPrintDocument(this.gridControl1);
PrintDialog pd = new PrintDialog();
pd.Document = gpd;
//Print the contents of the Grid
gpd.Print();
{% endhighlight %}
{% highlight vb %}
'Convert the Grid as printing document
Dim gpd As New GridPrintDocument(Me.gridControl1)
Dim pd As New PrintDialog()
pd.Document = gpd
'Print the contents of the Grid
gpd.Print()
{% endhighlight %}
{% endtabs %}
![](Printing_images/Printing_img1.jpeg)

## Print Preview
The [PrintPreviewDialog](https://msdn.microsoft.com/en-us/library/system.windows.forms.printpreviewdialog.aspx) is used to preview the pages before printing the contents of the grid. 

{% tabs %}
{% highlight c# %}
// Converting the grid to printable document
GridPrintDocument gpd = new GridPrintDocument(this.gridControl1, true);
PrintPreviewDialog ppd = new PrintPreviewDialog();
//Set the Grid contents to the print preview document
ppd.Document = gpd;
//Display the print preview dialog
ppd.ShowDialog();
{% endhighlight %}
{% highlight vb %}
' Converting the grid to printable document
Dim gpd As New GridPrintDocument(Me.gridControl1, True)
Dim ppd As New PrintPreviewDialog()
'Set the Grid contents to the print preview document
ppd.Document = gpd
'Display the print preview dialog
ppd.ShowDialog()
{% endhighlight %}
{% endtabs %}

![](Printing_images/Printing_img2.jpeg)

### Printing using Keyboard shortcut
There is no direct support for printing the grid using <kbd>Ctrl</kbd>+<kbd>P</kbd> combination but this can be achieved by handling the `KeyDown` event of the grid.
{% tabs %}
{% highlight c# %}
this.gridControl1.KeyDown += new KeyEventHandler(gridControl1_KeyDown);
void gridControl1_KeyDown(object sender, KeyEventArgs e)
{
   if(e.Control && e.KeyCode== Keys.P)
   {
       //Call the method used to print the grid.
       PrintGridControl();
   }
}

public void PrintGridControl()
{
    GridPrintDocument document = new GridPrintDocument(this.gridControl1, true);
    PrintDialog pd = new PrintDialog();
    pd.Document = document;
    document.Print();
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridControl1.KeyDown, AddressOf gridControl1_KeyDown
Private Sub gridControl1_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)
   If e.Control AndAlso e.KeyCode= Keys.P Then
       'Call the method used to print the grid.
       PrintGridControl()
   End If
End Sub

Public Sub PrintGridControl()
    Dim document As New GridPrintDocument(Me.gridControl1, True)
    Dim pd As New PrintDialog()
    pd.Document = document
    document.Print()
End Sub
{% endhighlight %}
{% endtabs %}

## Print Settings
GridControl supports all the default settings of the printing. This section explains about the additional settings and the usages of [GridPrintDocument](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridPrintDocument_members.html) and [GridPrintDocumentAdv](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPrintDocumentAdv.html).

### Scaling 
All the columns of the grid can be printed with in a single page by enabling the [ScaleColumnsToFitPage](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPrintDocumentAdv~ScaleColumnsToFitPage.html) property of the `GridPrintDocumentAdv`.
{% tabs %}
{% highlight c# %}
//Create the Grid as printing document
GridPrintDocumentAdv gpd = new GridPrintDocumentAdv(this.gridControl1);
PrintDialog pd = new PrintDialog();
//Scale all columns to fit within a page
gpd.ScaleColumnsToFitPage = true;
pd.Document = gpd;
//Print the contents of the Grid
gpd.Print();           
{% endhighlight %}
{% highlight vb %}
'Create the Grid as printing document
Dim gpd As New GridPrintDocumentAdv(Me.gridControl1)
Dim pd As New PrintDialog()
'Scale all columns to fit within a page
gpd.ScaleColumnsToFitPage = True
pd.Document = gpd
'Print the contents of the Grid
gpd.Print()
{% endhighlight %}
{% endtabs %}

### Printing All the Contents into a Single Page
The grid data will be fit to a single page or the minimal number of pages using [PagesToFit](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPrintDocumentAdv~PagesToFit.html) property and this option will be enabled only when the [PrintColumnToFitPage](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPrintDocumentAdv~PrintColumnToFitPage.html) is set to `true`.

{% tabs %}
{% highlight c# %}
//Create the grid document for print
GridPrintDocumentAdv gpd = new GridPrintDocumentAdv(this.gridControl1);
//Used to print all columns to fit within a page
gpd.PrintColumnToFitPage = true;
// Printing All the Contents into a Single Page
gpd.PagesToFit = 1;
PrintDialog pd = new PrintDialog();
pd.Document = gpd;
gpd.Print();           
{% endhighlight %}
{% highlight vb %}
'Create the grid document for print
Dim gpd As New GridPrintDocumentAdv(Me.gridControl1)
'Used to print all columns to fit within a page
gpd.PrintColumnToFitPage = True
' Printing All the Contents into a Single Page
gpd.PagesToFit = 1
Dim pd As New PrintDialog()
pd.Document = gpd
gpd.Print()
{% endhighlight %}
{% endtabs %}

### Printing the grid with the Frame
The contents of the grid can be printed with an outer frame by setting the [PrintFrame](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridProperties~PrintFrame.html) property to `true`.
{% tabs %}
{% highlight c# %}
//Print the grid with frame
this.gridControl1.Model.Properties.PrintFrame = true;
{% endhighlight %}
{% highlight vb %}
'Print the grid with frame
Me.gridControl1.Model.Properties.PrintFrame = True
{% endhighlight %}
{% endtabs %}

### Changing Orientation 
The orientation of the printing layout can be changed to landscape by setting [LandScape](https://msdn.microsoft.com/en-us/library/system.drawing.printing.pagesettings.landscape.aspx) property to `true`.
{% tabs %}
{% highlight c# %}
//Create the Grid as printing document
GridPrintDocument gpd = new GridPrintDocument(this.gridControl1);
//Print the page in landscape mode
gpd.DefaultPageSettings.Landscape = true;            
PrintDialog pd = new PrintDialog();
pd.Document = gpd;
//Print the contents of the Grid
gpd.Print(); 
{% endhighlight %}
{% highlight vb %}
'Create the Grid as printing document
Dim gpd As New GridPrintDocument(Me.gridControl1)
'Print the page in landscape mode
gpd.DefaultPageSettings.Landscape = True
Dim pd As New PrintDialog()
pd.Document = gpd
'Print the contents of the Grid
gpd.Print()
{% endhighlight %}
{% endtabs %}

## Black and White Printing 
The grid can be printed with the `black and white` color combination by setting [BlackWhite](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridProperties~BlackWhite.html) property to `true`. 

{% tabs %}
{% highlight c# %}
//To print the grid in a Black and White color
this.gridControl1.Model.Properties.BlackWhite = true;
{% endhighlight %}
{% highlight vb %}
'To print the grid in a Black and White color
Me.gridControl1.Model.Properties.BlackWhite = True
{% endhighlight %}
{% endtabs %}

## Multiple Grid Printing
Multiple grids can be printed across various pages using helper class [MultipleGridPrintDocument](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.MultiGridPrintDocument.html). This is achieved by drawing full-size grid to a large bitmap and then scaling this bitmap to fit the output page.

The [GridPrintOption](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.MultiGridPrintDocument~GridPrintOption.html) property is used to specify the multiple grids printing options. 

**MultiGridPrinting** - Customizes the way printing support is provided for grids. It enables multiple grids to be printed in a single print.<br/>
**PrintGridInNewPage** - Multiple grids can be printed continuously. However, the consecutive grid’s starting page will begin on a new page.<br/>
**DefaultGridPrint** - Multiple grids will be printed without considering column breaks.<br/>
**ScaleColumnsToFit** - Multiple grid columns will be scaled to fit the printed page.<br/>

{% tabs %}
{% highlight c# %}
List<Control> gridsToPrint = new List<Control>();
foreach (Control cd in this.Controls)
{
    if (cd is Control)
    {
        gridsToPrint.Add((Control)cd);
    }
}
MultiGridPrintDocument mgpd = new MultiGridPrintDocument(gridsToPrint);
mgpd.GridPrintOption = MultiGridPrintDocument.GridPrintOptions.MultipleGridPrint;
mgpd.ShowHeaderFooterOnAllPages = true;
PrintPreviewDialog printDialog = new PrintPreviewDialog();
printDialog.Document = mgpd;
{% endhighlight %}
{% highlight vb %}
Dim gridsToPrint As New List(Of Control)()
For Each cd As Control In Me.Controls
    If TypeOf cd Is Control Then
        gridsToPrint.Add(CType(cd, Control)
    End If
Next cd
Dim mgpd As New MultiGridPrintDocument(gridsToPrint)
mgpd.GridPrintOption = MultiGridPrintDocument.GridPrintOptions.MultipleGridPrint
mgpd.ShowHeaderFooterOnAllPages = True
Dim printDialog As New PrintPreviewDialog()
printDialog.Document = mgpd
{% endhighlight %}
{% endtabs %}

![](Printing_images/Printing_img3.jpeg)

N> The headers and footers can be printed for all the pages by setting the [ShowHeaderFooterOnAllPages](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.MultiGridPrintDocument~ShowHeaderFooterOnAllPages.html) property to `true`. The particular grid can be removed from the printing grid collection by handling the [MultipleGridPrint](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.MultiGridPrintDocument~MultipleGridPrint_EV.html) event.

The sample illustrates this feature is given in the following location,<br/>
_&lt;Installed_Location&gt;\Syncfusion\EssentialStudio\&lt;Version_No&gt;\Windows\Grid.Windows\Samples\Printing\Multi-Grid Printing\CS_

## Setting Header and Footer 
The grid can be print with the headers and footers by setting the [HeaderPrintStyleInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPrintDocumentAdv~HeaderPrintStyleInfo.html) and [FooterPrintStyleInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.GridPrintDocumentAdv~FooterPrintStyleInfo.html) properties of the advanced GridPrintDocument.
{% tabs %}
{% highlight c# %}
GridPrintDocumentAdv gpd = new GridPrintDocumentAdv(this.gridControl1);
PrintPreviewDialog ppd = new PrintPreviewDialog();
ppd.Document = gpd;
//Setting the height for header and footer
gpd.HeaderHeight = 30;
gpd.FooterHeight = 30;
gpd.HeaderPrintStyleInfo.Text = "Syncfusion Software Private Ltd";
gpd.FooterPrintStyleInfo.Text = "Time :" + DateTime.Now.TimeOfDay.ToString();
gpd.HeaderPrintStyleInfo.TextColor = Color.Orange;
gpd.HeaderPrintStyleInfo.Font.Bold = true;
gpd.HeaderPrintStyleInfo.Font.Size = 20;
//Set the alignments 
gpd.HeaderPrintStyleInfo.HorizontalAlignment = GridHorizontalAlignment.Center;
gpd.FooterPrintStyleInfo.HorizontalAlignment = GridHorizontalAlignment.Right;
ppd.ShowDialog();
{% endhighlight %}

{% highlight vb %}
Dim gpd As New GridPrintDocumentAdv(Me.gridControl1)
Dim ppd As New PrintPreviewDialog()
ppd.Document = gpd
'Setting the height for header and footer
gpd.HeaderHeight = 30
gpd.FooterHeight = 30
gpd.HeaderPrintStyleInfo.Text = "Syncfusion Software Private Ltd"
gpd.FooterPrintStyleInfo.Text = "Time :" & DateTime.Now.TimeOfDay.ToString()
gpd.HeaderPrintStyleInfo.TextColor = Color.Orange
gpd.HeaderPrintStyleInfo.Font.Bold = True
gpd.HeaderPrintStyleInfo.Font.Size = 20
'Set the alignments 
gpd.HeaderPrintStyleInfo.HorizontalAlignment = GridHorizontalAlignment.Center
gpd.FooterPrintStyleInfo.HorizontalAlignment = GridHorizontalAlignment.Right
ppd.ShowDialog()
{% endhighlight %}
{% endtabs %}

![](Printing_images/Printing_img4.jpeg)

## Page Break
Print Page Layout feature enables viewing page layout on the grid by displaying a segment line and page number with each segment. This helps to analyze page breaks within the grid, and manage them accordingly.

Properties are available to define colors for the line and text of the page layout. The number of rows and columns to be printed for each page can be set by using the [PageBreaks](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.XlsIO.Base~Syncfusion.XlsIO.Parser.Biff_Records.HorizontalPageBreaksRecord~PageBreaks.html) through [LayoutSupportHelper](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.LayoutSupportHelper.html). The following code examples illustrate how to set the line and text color of the page layout.

{% tabs %}
{% highlight c# %}
LayoutSupportHelper layoutHelper = new LayoutSupportHelper(gridControl1);
layoutHelper.LineColor = Color.Blue;
layoutHelper.TextColor = Color.Blue;
{% endhighlight %}
{% highlight vb %}
Dim layoutHelper As New LayoutSupportHelper(gridControl1)
layoutHelper.LineColor = Color.Blue
layoutHelper.TextColor = Color.Blue
{% endhighlight %}
{% endtabs %}
![](Printing_images/Printing_img5.jpeg)

To display the layout lines and page number in the grid, set the [ShowLayoutLines](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.LayoutSupportHelper~ShowLayoutLines.html) property to `true`.
{% tabs %}
{% highlight c# %}
if (layoutHelper != null)
    layoutHelper.ShowLayoutLines = this.checkBox1.Checked;
{% endhighlight %}
{% highlight vb %}
If layoutHelper IsNot Nothing Then
    layoutHelper.ShowLayoutLines = Me.checkBox1.Checked
End If
{% endhighlight %}
{% endtabs %}

The sample demonstrating the printing layout is given in the below location,<br/>
&lt;Installed_Location&gt;\Syncfusion\EssentialStudio\&lt;Version_No&gt;\Windows\Grid.Windows\Samples\Printing\Print Page Layout Demo\CS

### Customizing Page Breaks
The row breaks and column breaks for each pages can be customized by using the [PrintInfo](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~PrintInfo.html) property. This will provide the list of first row index and first column index of each pages while printing.
{% tabs %}
{% highlight c# %}
private void btnPageBreak_Click(object sender, EventArgs e)
{
    GridPrintDocument document = new GridPrintDocument(this.gridControl1);
    PrintPreviewDialog dialog = new PrintPreviewDialog();
    document.PrintPage += Document_PrintPage1;
    dialog.Document = document;
    dialog.ShowDialog();
}
private void Document_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
{
    // set the row count need to be printed for each page
    this.gridControl1.PrintInfo.m_awPageFirstRow = new ArrayList();
    this.gridControl1.PrintInfo.m_awPageFirstRow.Add(0);
    this.gridControl1.PrintInfo.m_awPageFirstRow.Add(30);
    this.gridControl1.PrintInfo.m_awPageFirstRow.Add(60);

    // Set the starting column count for each page
    this.gridControl1.PrintInfo.m_awPageFirstCol = new ArrayList();
    this.gridControl1.PrintInfo.m_awPageFirstCol.Add(0);
    this.gridControl1.PrintInfo.m_awPageFirstCol.Add(5);
}
{% endhighlight %}
{% highlight vb %}
Private Sub btnPageBreak_Click(ByVal sender As Object, ByVal e As EventArgs)
    Dim document As New GridPrintDocument(Me.gridControl1)
    Dim dialog As New PrintPreviewDialog()
    AddHandler document.PrintPage, AddressOf Document_PrintPage1
    dialog.Document = document
    dialog.ShowDialog()
End Sub
Private Sub Document_PrintPage(ByVal sender As Object, ByVal e As System.Drawing.Printing.PrintPageEventArgs)
    ' set the row count need to be printed for each page
    Me.gridControl1.PrintInfo.m_awPageFirstRow = New ArrayList()
    Me.gridControl1.PrintInfo.m_awPageFirstRow.Add(0)
    Me.gridControl1.PrintInfo.m_awPageFirstRow.Add(30)
    Me.gridControl1.PrintInfo.m_awPageFirstRow.Add(60)

    ' Set the starting column count for each page
    Me.gridControl1.PrintInfo.m_awPageFirstCol = New ArrayList()
    Me.gridControl1.PrintInfo.m_awPageFirstCol.Add(0)
    Me.gridControl1.PrintInfo.m_awPageFirstCol.Add(5)
End Sub
{% endhighlight %}
{% endtabs %}

## Printing Customizations
The printing options of the grid can be customized by using the following methods.

### Applying Header Colors While Printing
The cell styles can be changed dynamically on printing the grid by using [PrintingMode](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~PrintingMode.html) property. The following code snippet is used to set the header colors for the GridControl only on the printed document,
{% tabs %}
{% highlight c# %}
this.gridControl1.QueryCellInfo += new GridQueryCellInfoEventHandler(gridControl1_QueryCellInfo);
void gridControl1_QueryCellInfo(object sender, GridQueryCellInfoEventArgs e)
{
   //Change the back color of the headers only when the grid is in printing mode.
   if(this.gridControl1.PrintingMode)
   {
       //Column headers or Row headers
       if(e.RowIndex == 0 || e.ColIndex ==0)
       {
           e.Style.BackColor = Color.Pink;
       }
   }
} 
{% endhighlight %}
{% highlight vb %}
AddHandler gridControl1.QueryCellInfo, AddressOf gridControl1_QueryCellInfo
Private Sub gridControl1_QueryCellInfo(ByVal sender As Object, ByVal e As GridQueryCellInfoEventArgs)
   'Change the back color of the headers only when the grid is in printing mode.
   If Me.gridControl1.PrintingMode Then
                 'Column headers or Row headers
       If e.RowIndex = 0 OrElse e.ColIndex =0 Then
           e.Style.BackColor = Color.Pink
       End If
   End If
End Sub
{% endhighlight %}
{% endtabs %}
The grid in normal mode looks like the below screen shot,

![](Printing_images/Printing_img6.jpeg)

The grid headers printed with Pink color on the printing mode,

![](Printing_images/Printing_img7.jpeg)

### Hiding Row and Column Headers 
To hide the row and column headers while printing or print previewing the grid, set the [PrintRowHeader](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~PrintRowHeader.html) and [PrintColumnHeader](http://help.syncfusion.com/cr/cref_files/windowsforms/gridconverter/Syncfusion.Grid.Grouping.Windows~Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl~PrintColumnHeader.html) property values as `false`.
{% tabs %}
{% highlight c# %}
//Hide Row and column headers while printing the document
this.gridControl1.Properties.PrintRowHeader = false;
this.gridControl1.Properties.PrintColHeader = false;
{% endhighlight %}
{% highlight vb %}
'Hide Row and column headers while printing the document
Me.gridControl1.Properties.PrintRowHeader = False
Me.gridControl1.Properties.PrintColHeader = False
{% endhighlight %}
{% endtabs %}

### Printing the Grid with Center Aligned 
The grid can be centered vertically while printing by setting the [CenterVertical](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridProperties~CenterVertical.html) property to `true`. The grid can be printed with centered horizontally by enabling the [CenterHorizontal](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridProperties~CenterHorizontal.html) property.
{% tabs %}
{% highlight c# %}
//Specifies if the grid should be centered vertically on printing.
this.gridControl1.Properties.CenterVertical = true;
//Specifies if the grid should be centered horizontally while printing.
this.gridControl1.Properties.CenterHorizontal = true;
{% endhighlight %}
{% highlight vb %}
'Specifies if the grid should be centered vertically on printing.
Me.gridControl1.Properties.CenterVertical = True
'Specifies if the grid should be centered horizontally while printing.
Me.gridControl1.Properties.CenterHorizontal = True
{% endhighlight %}
{% endtabs %}

### Hiding Grid Lines While Printing
The horizontal and the vertical lines can be hidden in the printed document by setting the following code snippet,
{% tabs %}
{% highlight c# %}
//To avoid printing the Horizontal and vertical lines
this.gridControl1.PrintHorizontalLines = false;
this.gridControl1.PrintVerticalLines = false;
{% endhighlight %}
{% highlight vb %}
'To avoid printing the Horizontal and vertical lines
Me.gridControl1.PrintHorizontalLines = False
Me.gridControl1.PrintVerticalLines = False
{% endhighlight %}
{% endtabs %}

### Hiding the Row/columns using Events
To hide some of the rows and columns while printing the grid, set the size of the row height and column width value as zero at the [QueryRowHeight](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~QueryRowHeight_EV.html) and [QueryColWidth](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridModel~QueryColWidth_EV.html) events while the grid entered into the [PrintingMode](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~PrintingMode.html).
{% tabs %}
{% highlight c# %}
void gridControl1_QueryRowHeight(object sender, GridRowColSizeEventArgs e)
{
    //Apply the condition only on printing 
    if(this.gridControl1.PrintingMode)
    {
        if(e.Index==2 || e.Index ==3)
        {
            //Set the row height value as zero while the Grid in printing mode
            e.Size = 0;
            e.Handled = true;
        }
    }
}
void gridControl1_QueryColWidth(object sender, GridRowColSizeEventArgs e)
{
    //Apply the condition only on printing 
    if (this.gridControl1.PrintingMode)
    {
        if (e.Index == 3)
        {
            //Set the Column width value as zero while the Grid in printing mode
            e.Size = 0;
            e.Handled = true;
        }
    }
}    
{% endhighlight %}
{% highlight vb %}
Private Sub gridControl1_QueryRowHeight(ByVal sender As Object, ByVal e As GridRowColSizeEventArgs)
    'Apply the condition only on printing 
    If Me.gridControl1.PrintingMode Then
        If e.Index=2 OrElse e.Index =3 Then
            'Set the row height value as zero while the Grid in printing mode
            e.Size = 0
            e.Handled = True
        End If
    End If
End Sub
Private Sub gridControl1_QueryColWidth(ByVal sender As Object, ByVal e As GridRowColSizeEventArgs)
    'Apply the condition only on printing 
    If Me.gridControl1.PrintingMode Then
        If e.Index = 3 Then
            'Set the Column width value as zero while the Grid in printing mode
            e.Size = 0
            e.Handled = True
        End If
    End If
End Sub
{% endhighlight %}
{% endtabs %}

### Print the selected range of the cells 
To print only the selected range of cells from the grid, set the [PrintRange](https://msdn.microsoft.com/en-us/library/system.drawing.printing.printrange.aspx) value as `Selection`. It will print the selected range of cells or the selected page from the GridControl. 
{% tabs %}
{% highlight c# %}
GridPrintDocument gpd = new GridPrintDocument(this.gridControl1, true);
//To print the selected range of cells
gpd.PrinterSettings.PrintRange = System.Drawing.Printing.PrintRange.Selection;
{% endhighlight %}
{% highlight vb %}
Dim gpd As New GridPrintDocument(Me.gridControl1, True)
'To print the selected range of cells
gpd.PrinterSettings.PrintRange = System.Drawing.Printing.PrintRange.Selection
{% endhighlight %}
{% endtabs %}
The `PrintRange` enumeration has the following printing options,

**AllPages –**Used to print all the pages of the Grid<br/>
**CurrentPage –**Used to print the Current page<br/>
**Selection –**Used to print the selected range of cells<br/>
**SomePages –**Used to print particular range of pages.<br/>

N> By default the [PrintRange](https://msdn.microsoft.com/en-us/library/system.drawing.printing.printrange.aspx) will be pointed to `AllPages`, so that the print method will print all the pages of the grid.

### Printing needed pages alone
The needed pages in the grid can only be printed by setting the [PrintRange](https://msdn.microsoft.com/en-us/library/system.drawing.printing.printrange.aspx) property value as `SomePages`.
{% tabs %}
{% highlight c# %}
GridPrintDocument gpd = new GridPrintDocument(this.gridControl1, true);
PrintPreviewDialog ppd = new PrintPreviewDialog();
ppd.Document = gpd;
//To print the specific range of pages
gpd.PrinterSettings.FromPage = 2;
gpd.PrinterSettings.ToPage = 3;
gpd.PrinterSettings.PrintRange = System.Drawing.Printing.PrintRange.SomePages;
ppd.ShowDialog();
{% endhighlight %}
{% highlight vb %}
Dim gpd As New GridPrintDocument(Me.gridControl1, True)
Dim ppd As New PrintPreviewDialog()
ppd.Document = gpd
'To print the specific range of pages
gpd.PrinterSettings.FromPage = 2
gpd.PrinterSettings.ToPage = 3
gpd.PrinterSettings.PrintRange = System.Drawing.Printing.PrintRange.SomePages
ppd.ShowDialog()
{% endhighlight %}
{% endtabs %}

## Deriving GridPrintDocument 
The [GridPrintDocument](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridPrintDocument_members.html) has the events [BeginPrint](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridPrintDocument_members.html), [PrintPage](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridPrintDocument_members.html) and [EndPrint](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridPrintDocument_members.html) inherited from `PrintDocument`, which allows to access the printing flow at certain points. To gain more control over the printing document, derive the `GridPrintDocument` and override the members like [OnPrintPage](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridPrintDocument~OnPrintPage.html). Using this overrides, the [ViewLayout](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~ViewLayout.html) and [TopRowIndex](http://help.syncfusion.com/cr/cref_files/windowsforms/grid/Syncfusion.Grid.Windows~Syncfusion.Windows.Forms.Grid.GridControlBase~TopRowIndex.html) of the grid members can be accessed to obtain the information about the page that is being printed. The following code shows how to print the top and bottom row of the page.
{% tabs %}
{% highlight c# %}
public class MyPrintDocument : GridPrintDocument
{
    GridControlBase _grid;

    public MyPrintDocument(GridControlBase grid, bool printPreview)
        : base(grid, printPreview)
    {
        _grid = grid;
    }

    protected override void OnPrintPage(System.Drawing.Printing.PrintPageEventArgs ev)
    {
        base.OnPrintPage(ev);
        _grid.PrintingMode = true;

        //Gets Top Row Index.
        int topRow = _grid.TopRowIndex;
        _grid.ViewLayout.Reset();

        //Gets Bottom Row Index.
        int botRow = this._grid.ViewLayout.LastVisibleRow
                        - (this._grid.ViewLayout.HasPartialVisibleRows ? 1 : 0);

        _grid.PrintingMode = false;

        //Prints.
        Console.WriteLine("OnPrintPage " + topRow.ToString() + "   " + botRow.ToString();
    }
}
{% endhighlight %}
{% highlight vb %}
Public Class MyPrintDocument
    Inherits GridPrintDocument
    Private _grid As GridControlBase

    Public Sub New(ByVal grid As GridControlBase, ByVal printPreview As Boolean)
        MyBase.New(grid, printPreview)
        _grid = grid
    End Sub

    Protected Overrides Sub OnPrintPage(ByVal ev As System.Drawing.Printing.PrintPageEventArgs)
        MyBase.OnPrintPage(ev)
        _grid.PrintingMode = True

        'Gets Top Row Index.
        Dim topRow As Integer = _grid.TopRowIndex
        _grid.ViewLayout.Reset()

        'Gets Bottom Row Index.
        Dim botRow As Integer = Me._grid.ViewLayout.LastVisibleRow - (If(Me._grid.ViewLayout.HasPartialVisibleRows, 1, 0)

        _grid.PrintingMode = False

        'Prints.
        Console.WriteLine("OnPrintPage " & topRow.ToString() & "   " & botRow.ToString()
    End Sub
End Class
{% endhighlight %}
{% endtabs %}