---
layout: post
title: Pivot-Grid
description: pivot grid
platform: windowsform
control: Grid
documentation: ug
---

### Pivot Grid

Essential Pivot Grid simulates Pivot Table feature of MS Excel. Pivot Grid pivots data via drag-and-drop to organize data in a cross-tabulated form. The major advantage of pivot grid is that you can extract any desired information within a limited span of time. Apart from being able to present the data in a proper manner, you can also summarize and group data. Pivot Grid has its main application in the financial domain. It is used to organize and analyze business data.

Pivot Grid control is built on the foundation of the Grid control. It comprises of the following components.

* Display Grid - Displays data extracted from the underlying database.
* Pivot Table Field List - Lists available fields from the database. Provides a way to add/remove fields from the grid.
* Drag-Drop Panel - Serves as a view state of the pivot grid, where you can rearrange the fields by performing drag-and-drop operation between row and column label areas.
* Filter Area - Lets you filter the results according to certain criteria in a desired manner.

 Pivot Grid provides UI that allows you to specify the rows and columns in the pivot table through drag-and-drop operations. The visual aspects of the control are saved in an Appearance object. The control supports Office 2003 and Office 2007 styles.

Calculations are done through Grouping Engine, which is a part of Essential Grouping. The default calculation is _Summation_, but there exists an option to change calculation type to _Average_, _Median_, _Percentiles_, _Variances_, _Standard Deviations_, etc. You can also provide "custom" calculations through the grouping engine.

Features

* Data-binding support
* Auto-calculation of Total Summary
* Filters
* Grouping support
* Customizable Appearance
* Support for XML and Binary Serialization

APIs

Here is a brief explanation on some of the important methods implemented in Pivot Grid.

* CollapseAll() - This will collapse all the expanded tables in the Pivot Grid.



{% highlight c# %}



pivotGridControl1.CollapseAll();

{% endhighlight %}

* ExpandAll() - Expands all the collapsed nodes in the Pivot Grid.



{% highlight c# %}



pivotGridControl1.ExpandAll();


{% endhighlight %}
* InitSchema() - A new Pivot schema will be created and it will be associated with the Pivot Grid.



{% highlight c# %}



pivotGridControl1.InitSchema();

{% endhighlight %}

* ResetSchema() - Resets Pivot Grid control into an initial schema, which will be empty.



{% highlight c# %}



pivotGridControl1.ResetSchema();

{% endhighlight %}

* SetAppearance() - This method sets the appearance of the Pivot Grid.



{% highlight c# %}



pivotGridControl1.SetAppearance(new PivotGridLibrary.PivotAppearance(pivotGridControl2));
{% endhighlight %}

Here is a brief explanation on some of the important properties implemented in the Pivot Grid.

* AllString - This will get the string values that appear in the dropdown filter, when all the filter values get selected.

{% highlight c# %}



pivotGridControl1.AllString = "All";
{% endhighlight %}

* AutoSizeColumns - Sizes the column according to the calculated value of the display width.

{% highlight c# %}



pivotGridControl1.AutoSizeColumns = true;
{% endhighlight %}


* ColumnCount - This specifies the number of columns in the main display grid.



{% highlight c# %}



int i = pivotGridControl1.ColumnCount;
{% endhighlight %}

* ColumnsCount - This specifies the number of distinct fields in the pivot grid.



{% highlight c# %}



int i = pivotGridControl1.ColumnsCount;

{% endhighlight %}

* DataRowCount - This specifies the number of rows in the underlying IList datasource.



{% highlight c# %}



int i = pivotGridControl1.DataRowCount;

{% endhighlight %}

* DefaultComputationName - This specifies the name of the default calculation. The default value is _Sum_.



{% highlight c# %}



pivotGridControl1.DefaultComputationName = "Sum";

{% endhighlight %}

* DefaultDescriptionFormat - This specifies the format of calculated description. By default it will be, _{0} of {1}_, where {0} is the value of computation name and {1} is the value of the field name.



{% highlight c# %}



pivotGridControl1.DefaultDescriptionFormat = "{0} of {1}";
{% endhighlight %}


* FilterCount - This specifies the number of distinct fields added to the filter.



{% highlight c# %}



int i = pivotGridControl1.FilterCount;

{% endhighlight %}

* FreezeHeaders - This determines whether the row and column headers should be frozen.



{% highlight c# %}



pivotGridControl1.FreezeHeaders = true;

{% endhighlight %}

* GrandTotalString - This provides the text for the summary cells of the Pivot Grid.



{% highlight c# %}



pivotGridControl1.GrandTotalString = "Grand Total";

{% endhighlight %}

* LeftPanelWidth - This specifies the width of the left-most Panel.



{% highlight c# %}



pivotGridControl1.LeftPanelWidth = 20;

{% endhighlight %}

* LeftPanelHeight - This specifies the height of the top-most Panel.



{% highlight c# %}



pivotGridControl1.LeftPanelHeight = 20;

{% endhighlight %}

* MainDisplayGrid - This is a basic grid, which stores the pivot results.
* MultipleString - This specifies the text that should appear when the Multiple Filter selected in the Filter Combo Box is changed. By default it will be set to Multiple.



{% highlight c# %}



pivotGridControl1.MultipleString = "Multiple";

{% endhighlight %}

* Print Option - The print option is extended for the PivotGrid control to allow users to preview the contents before the contents are printed on paper.

This feature is used to print PivotGrid control in landscape and portrait views. This feature has overridden GridPrintDocumentAdv from Syncfusion.GridHelperClasses.Windows. 

The pivot grid visual style color is automatically applied in the printed document based on the visual styles of the grid. 

The print functionality can be invoked using the following code:

 {% highlight c# %}



private void button1_Click_1(object sender, EventArgs e)

{

 try

   {

PivotGridPrintDocumentAdv pd = new PivotGridPrintDocumentAdv(this.pivotGridControl1);



pd.DefaultPageSettings.Margins = new System.Drawing.Printing.Margins(25, 25, 25, 25);

PrintPreviewDialog previewDialog = new PrintPreviewDialog();

previewDialog.Document = pd;

previewDialog.Show();

   }

catch (Exception ex)

   {

MessageBox.Show("Error while print preview" + ex.ToString());

   }



}


{% endhighlight %}


{% highlight vbnet %}



Private Sub button1_Click_1(ByVal sender As Object, ByVal e As EventArgs)



 Try



Dim pd As New PivotGridPrintDocumentAdv(Me.pivotGridControl1)



pd.DefaultPageSettings.Margins = New System.Drawing.Printing.Margins(25, 25, 25, 25)

Dim previewDialog As New PrintPreviewDialog()

previewDialog.Document = pd

previewDialog.Show()



Catch ex As Exception

MessageBox.Show("Error while print preview" & ex.ToString())



End Try



End Sub

{% endhighlight %}

The following screen shots illustrate the print feature of the PivotGrid control: Headers and footers can also be added by using DrawGridPrintHeader and DrawGridPrintFooter events. The following code illustrates how to add the header and footer.

{% highlight c# %}

pd.DrawGridPrintHeader+=new GridPrintDocumentAdv.DrawGridHeaderFooterEventHandler(pd_DrawGridPrintHeader);



pd.DrawGridPrintFooter+=new GridPrintDocumentAdv.DrawGridHeaderFooterEventHandler(pd_DrawGridPrintFooter);


{% endhighlight %}


{% highlight vbnet %}



AddHandler pd.DrawGridPrintHeader, AddressOf pd_DrawGridPrintHeader



AddHandler pd.DrawGridPrintFooter, AddressOf pd_DrawGridPrintFooter



{% endhighlight %}

The following image shows the printed output of the pivot grid:



![C:/Users/athirams/Desktop/print/page1.png](Grid-Control_images/Grid-Control_img167.png)

 Figure 267: Pivot Grid in Print Preview



Sample Link

         <Install Location>\Syncfusion\EssentialStudio\[Version Number]\Windows\PivotGrid.Windows\Samples\Printing\Pivot Print Demo

