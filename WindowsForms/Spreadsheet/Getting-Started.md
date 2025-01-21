---
layout: post
title: Getting Started with WinForms Spreadsheet control | Syncfusion®
description: Learn here about getting started with Syncfusion® Windows Forms Spreadsheet control, its elements and more details.
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Getting Started with Windows Forms Spreadsheet

This section helps you to get started with the Spreadsheet

## Assemblies deployment

Below table describes, list of assemblies required to be added in project when the [WinForms Spreadsheet](https://www.syncfusion.com/winforms-ui-controls/spreadsheet) control is used in your application.

<table>
<tr>
<th>
Assembly</th><th>
Description</th></tr>
<tr>
<td>
Syncfusion.Spreadsheet.Windows.dll</td><td>
Contains the classes  that handles all the UI Operations of Spreadsheet such as importing of sheets, applying formulas/styles etc.</td></tr>
<tr>
<td>
Syncfusion.Shared.Base.dll</td><td>
Contains the classes which holds the controls like TabBarPage, TabBarSplitterControl etc.</td></tr>
<tr>
<td>
Syncfusion.Tools.Windows.dll</td><td>
Contains the classes which holds the controls like Ribbon, ToolStripPanelItem,MaskedEditBox,ToolStripGallery,BackStageButton  etc which are used in Spreadsheet.</td></tr>
<tr>
<td>
Syncfusion.XlsIO.Base.dll</td><td>
Contains the base classes which is responsible for read and write in Excel files, Worksheet Manipulations, Formula calculations etc.</td></tr>
</table>
Below are the assemblies list that can be added when you want to enable certain features in Spreadsheet control. 

<table>
<tr>
<th>
Optional Assemblies</th><th>
Description</th></tr>
<tr>
<td>
Syncfusion.SpreadsheetHelper.Windows.dll</td><td>
Contains the classes which is responsible for importing charts and sparklines into Spreadsheet</td></tr>
<tr>
<td>
Syncfusion.ExcelChartToImageConverter.WPF.dll</td><td>
Contains the classes which is responsible for converting charts as image</td></tr>
<tr>
<td>
Syncfusion.Chart.Base.dll</td><td>
Contains the base classes which is responsible for importing charts like Line charts, Pie charts, Sparklines etc.</td></tr>
<tr>
<td>
Syncfusion.Chart.Windows.dll</td><td>
Contains the classes which is responsible for creating charts that holds axes, series, legends etc.</td></tr>
<tr>
<td>
Syncfusion.ExcelToPDFConverter.Base.dll</td><td>
Contains the base and fundamental classes which is responsible for converting excel to PDF.</td></tr>
<tr>
<td>
Syncfusion.Pdf.Base.dll</td><td>
Contains the base and fundamental classes for creating PDF.</td></tr>
</table>

## Create a simple application with Spreadsheet

WinForms Spreadsheet control can be added into the application either via designer or via coding. 

### Adding a control via designer

1.Create new Windows Forms application in Visual Studio.

2.Open the Visual Studio **Tool** **box**. Navigate to Syncfusion<sup>®</sup> Controls tab, and find the  Spreadsheet/SpreadsheetRibbon toolbox items 

![Toolbox in WindowsForms Spreadsheet](getting-started_images/windowsforms-spreadsheet-toolbox.jpg)

3.Drag `Spreadsheet` and drop in the Designer area from the Toolbox

4.Ribbon can be added to the application by dragging `SpreadsheetRibbon` to the Designer area.

5.To make an interaction between Ribbon items and `Spreadsheet`, bind the Spreadsheet as DataContext to the `SpreadsheetRibbon`.

### Adding control via coding

Spreadsheet is available in the following namespace `Syncfusion.Windows.Forms.Spreadsheet` and it can be created programmatically by using below code. 

_For_ _Spreadsheet_

{% tabs %}

{% highlight c# %}

private Spreadsheet spreadsheet;
spreadsheet = new Spreadsheet();
SpreadsheetRibbon ribbon = new SpreadsheetRibbon() { Spreadsheet = spreadsheet };
spreadsheet.Dock = DockStyle.Fill;
spreadsheet.Anchor = AnchorStyles.Left | AnchorStyles.Top;
          
this.Controls.Add(spreadsheet);
this.Controls.Add(ribbon);

{% endhighlight %}

{% endtabs %}

_You_ _can_ _get_ _the_ _following_ _output_ _when_ _execute_ _the_ _application_.

![Adding control via coding in WindowsForms Spreadsheet](getting-started_images/windowsforms-spreadsheet-coding.png)

## Creating a new Excel Workbook

A new workbook can be created by using a [Create](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html#Syncfusion_Windows_Forms_Spreadsheet_Spreadsheet_Create_System_Int32_) method with specified number of worksheets. By default, a workbook will be created with single worksheet.

{% tabs %}
{% highlight c# %}

spreadsheet.Create(2);

{% endhighlight %}
{% endtabs %}

## Opening an existing Excel Workbook

The Excel Workbook can be opened in Spreadsheet using the [Open](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html#Syncfusion_Windows_Forms_Spreadsheet_Spreadsheet_Open_Syncfusion_XlsIO_IWorkbook_) method in various ways,

{% tabs %}
{% highlight c# %}

//Using Stream,
spreadsheet.Open (Stream file);

//Using String,
spreadsheet.Open (string file);

//Using Workbook,
spreadsheet.Open(IWorkbook workbook);
      
{% endhighlight %}
{% endtabs %}

{% tabs %}
{% highlight c# %}

spreadsheet.Open (@"..\..\Data\Outline.xlsx");

{% endhighlight %}
{% endtabs %}

![Opening an existing excel workbook in WindowsForms Spreadsheet](getting-started_images/windowsforms-spreadsheet-opening-an-existing-excel-workbook.png)


Opening Excel File in Spreadsheet
   {:.caption}

## Saving the Excel Workbook

The Excel workbook can be saved in Spreadsheet using [Save](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html#Syncfusion_Windows_Forms_Spreadsheet_Spreadsheet_Save) method. If the workbook already exists in the system drive, it will be saved in the same location, otherwise Save Dialog box opens to save the workbook in user specified location. 

{% tabs %}
{% highlight c# %}

spreadsheet.Save();

{% endhighlight %}
{% endtabs %}

You can also use [SaveAs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.Spreadsheet.html#Syncfusion_Windows_Forms_Spreadsheet_Spreadsheet_SaveAs) method directly to save the existing excel file with modifications.

The `SaveAs` method in Spreadsheet can be used in various ways,

{% tabs %}
{% highlight c# %}

//Using Stream,
spreadsheet.SaveAs (Stream file);

//Using String,
spreadsheet.SaveAs (string file);

//For Dialog box,
spreadsheet.SaveAs();
      
{% endhighlight %}
{% endtabs %}

## Displaying charts and sparklines

For importing charts and sparklines in Spreadsheet, add the following assembly as reference into the application.
 
Assembly: **Syncfusion.SpreadsheetHelper.Windows.dll** 

### Charts
 
Create an instance of Syncfusion.Windows.Forms.SpreadsheetHelper.[GraphicChartCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.SpreadsheetHelper.GraphicChartCellRenderer.html) and add that renderer into [GraphicCellRenderers](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.GraphicCells.GraphicModel.html#Syncfusion_Windows_Forms_Spreadsheet_GraphicCells_GraphicModel_GraphicCellRenderers) collection by using the helper method [AddGraphicChartCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.GraphicCells.GraphicCellHelper.html#Syncfusion_Windows_Forms_Spreadsheet_GraphicCells_GraphicCellHelper_AddGraphicChartCellRenderer_Syncfusion_Windows_Forms_Spreadsheet_Spreadsheet_Syncfusion_Windows_Forms_Spreadsheet_GraphicCells_IGraphicCellRenderer_) which is available under the namespace `Syncfusion.Windows.Forms.Spreadsheet.GraphicCells`. 

{% tabs %}
{% highlight c# %}

public Form1()
{
    InitializeComponent();
  
    //For importing charts,
    this.spreadsheet.AddGraphicChartCellRenderer(new GraphicChartCellRenderer());
}

{% endhighlight %}
{% endtabs %}

### Sparklines

Create an instance of Syncfusion.Windows.Forms.SpreadsheetHelper.[SparklineCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.SpreadsheetHelper.SparklineCellRenderer.html) and add that renderer into Spreadsheet by using the helper method [AddSparklineCellRenderer](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Spreadsheet.GraphicCells.GraphicCellHelper.html#Syncfusion_Windows_Forms_Spreadsheet_GraphicCells_GraphicCellHelper_AddSparklineCellRenderer_Syncfusion_Windows_Forms_Spreadsheet_Spreadsheet_Syncfusion_Windows_Forms_Spreadsheet_CellRenderer_ISpreadsheetCellRenderer_) which is available under the namespace `Syncfusion.Windows.Forms.Spreadsheet.GraphicCells`.

{% tabs %}
{% highlight c# %}

public Form1()
{
    InitializeComponent();
      
    //For importing sparklines,
    this.spreadsheet.AddSparklineCellRenderer(new SparklineCellRenderer());
}

{% endhighlight %}
{% endtabs %}

N> You can refer to our [WinForms Spreadsheet](https://www.syncfusion.com/winforms-ui-controls/spreadsheet) control feature tour page for its groundbreaking feature representations. You can also explore our [WinForms Spreadsheet example](https://github.com/syncfusion/winforms-demos/tree/master/spreadsheet) that shows you how to render and configure the Spreadsheet.