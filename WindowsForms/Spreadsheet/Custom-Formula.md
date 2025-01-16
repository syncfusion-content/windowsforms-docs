---
layout: post
title: Custom Formula in Windows Forms Spreadsheet control | Syncfusion
description: Learn about Custom Formula support in Syncfusion® Windows Forms Spreadsheet control and more details.
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Custom Formula in Windows Forms Spreadsheet

Spreadsheet allows you to add custom formulas into its function library. You can add the custom formula into the Spreadsheet by using the [AddFunction](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.CellGrid.FormulaEngine.html#Syncfusion_Windows_Forms_CellGrid_FormulaEngine_AddFunction_System_String_Syncfusion_Windows_Forms_CellGrid_FormulaEngine_LibraryFunction_) method of [FormulaEngine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.CellGrid.FormulaEngine.html),

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
