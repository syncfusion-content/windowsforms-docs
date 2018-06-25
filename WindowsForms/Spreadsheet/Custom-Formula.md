---
layout: post
title: Custom Formula in Spreadsheet
description: How to add custom formulas in Spreadsheet
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Custom Formula

Spreadsheet allows you to add custom formulas into its function library. You can add the custom formula into the Spreadsheet by using the [AddFunction](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Spreadsheet.Windows~Syncfusion.Windows.Forms.CellGrid.FormulaEngine~AddFunction.html) method of [FormulaEngine](http://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Spreadsheet.Windows~Syncfusion.Windows.Forms.CellGrid.FormulaEngine.html),

{% tabs %}
{% highlight c# %}

spreadsheet.WorkbookLoaded += spreadsheet_WorkbookLoaded;

void spreadsheet_WorkbookLoaded(object sender, WorkbookLoadedEventArgs args)
{

  foreach (var grid in args.GridCollection)
    AddCustomFormula(grid); 
  
  //Computing the formula at runtime
   var range = spreadsheet.ActiveSheet.Range["B2"];
   spreadsheet.ActiveGrid.SetCellValue(range,"=FindLength(Sample)");
         
}  

private void AddCustomFormula(SpreadsheetGrid grid)
{

  // Add a formula named FindLength to the Library.
   grid.FormulaEngine.AddFunction("FindLength", new FormulaEngine.LibraryFunction(ComputeLength));      
}    

//Implementation of formula
    
public string ComputeLength(string range)
{

  //Used to calculate the length of the string
    return range.Length.ToString();
}   

{% endhighlight %}
{% endtabs %}