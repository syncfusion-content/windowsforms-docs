---
layout: post
title: Multiple-Grid-Printing
description: multiple grid printing
platform: windowsform
control: Grid
documentation: ug
---

# Multiple Grid Printing

Multiple grids can be printed across various pages using helper class MultipleGridPrintDocument. This is achieved by drawing full-size grid to a large bitmap and then scaling this bitmap to fit the output page.

* MultiGridPrinting - Customizes the way printing support is provided for grids. It enables multiple grids to be printed in a single print.
* PrintGridInNewPage - Multiple grids can be printed continuously. However, the consecutive grid’s starting page will begin on a new page.
* DefaultGridPrint - Multiple grids will be printed without considering column breaks.
* ScaleColumnsToFit - Multiple grid columns will be scaled to fit the printed page.



Properties

Table 73: Properties Table

<table>
<tr>
<th>
PROPERTY </th><th>
DESCRIPTION </th><th colspan = "2">
TYPE </th><th>
DATA TYPE </th><th>
REFERENCE LINKS </th></tr>
<tr>
<td>
GridPrintOptions</td><td>
Used to customize the printing of a grid.</td><td colspan = "2">
enum </td><td>
enum</td><td>
</td></tr>
<tr>
<td colspan = "3">
GRIDPRINTOPTIONS NAME</td><td colspan = "3">
DESCRIPTION</td></tr>
<tr>
<td colspan = "3">
MultiGridPrinting</td><td colspan = "3">
Multiple grids are printed in a single print continuously one after another. </td></tr>
<tr>
<td colspan = "3">
PrintGridInNewPage</td><td colspan = "3">
Prints multiple grids in a new page.</td></tr>
<tr>
<td colspan = "3">
DefaultGridPrint</td><td colspan = "3">
Default grid printing without column breaks for each new page.</td></tr>
<tr>
<td colspan = "3">
ScaleColumnsToFit </td><td colspan = "3">
Multiple grid columns are scaled to fit the printed page.</td></tr>
</table>


Sample Link

          <Install Location>\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Printing\Multi-Grid Printing

## Adding Multi-Grid Printing to an Application

* The Print Preview can be enabled by using MultipleGridPrintDocument class or by clicking Print Preview button under Grid Printing Options in UI.
* Headers and footers can be added by using DrawGridPrintHeader and DrawGridPrintFooter events or by selecting Show Header and Footer check box under Grid Printing Options in UI.



{% highlight c# %}



List<Control> gridsToPrint = new List<Control>();

foreach (Control cd in this.Controls)

{

   if (cd is Control)

   {

     gridsToPrint.Add((Control)cd);

   }

}

MultiGridPrintDocument pd = new MultiGridPrintDocument(gridsToPrint);

pd.GridPrintOption = MultiGridPrintDocument.GridPrintOptions.MultipleGridPrint;            

pd.ShowHeaderFooterOnAllPages = true;

PrintPreviewDialog printDialog = new PrintPreviewDialog();

printDialog.Document = pd;

printDialog.ShowDialog();

{% endhighlight %}

{% highlight vbnet %}



Dim ctrls As New List(Of Control)()

Dim gridsToPrint As New List(Of Control)()

   For Each cd As Control In Me.Controls

       If TypeOf cd Is Control Then

         gridsToPrint.Add(CType(cd, Control))

       End If

   Next cd

Dim pd As New MultiGridPrintDocument(gridsToPrint)

pd.GridPrintOption = MultiGridPrintDocument.GridPrintOptions.MultipleGridPrint

pd.ShowHeaderFooterOnAllPages = True

Dim printDialog As New PrintPreviewDialog()

printDialog.Document = pd

printDialog.ShowDialog()

{% endhighlight %}



The following screen shot illustrates the advanced printing functionality provided by MultipleGridPrintDocument class:

  ![](Grid-Control_images/Grid-Control_img221.png)

