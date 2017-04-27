---
layout: post
title: Working with Essential XlsIO
description: Explains about working with CalcWorkbook, CalcSheet
platform: windowsforms
control: Calculate
documentation: ug
---

# Working with Essential XlsIO

Essential XIsIO provides an Excel-like Automation-type support without having Microsoft Excel installed on the host system.This means that you can use this library 
to read and write an XLS file and hold its contents in memory. But you cannot perform actual computations on the contents of the XLS file. Hence Essential Calculate
is integrated with Essential XlsIO, to calculate formulas entered at runtime without any additional references or packages.

## CalcSheet

The `CalcSheet` class is an `ICalcData` derived object that plays the role of a single worksheet. It does have the optional facility to hold row/column type data objects 
that can be set through indexing an instance of the class. It will also allocate the storage to hold such data. It maintains its own internal data object
to hold `FormulaInfo` objects used by the `CalcEngine` in its calculation work. The `CalcSheet` accesses the raw data / formulas that you want to use in the 
calculations via the `ICalcData` interface.

**For example:**

Create a class **XlsIOCalcSheet** which is derived from `CalcSheet` and implement `Syncfusion.XlsIO.IWorksheet`. This derived class overrides the base class's method to get and set the data 
through the `XlsIO` objects that holds the XLS data. 

{% tabs %}
{% highlight c# %}

// Specially derived CalcSheet to access the contents of XlsIO IWorksheet.
public class XlsIOCalcSheet : CalcSheet
{
    //XlsIO object,
	IWorksheet excelSheet;
	
	// Constructor
	public XlsIOCalcSheet()
	{
		excelSheet = null;
	}

	
	//Constructor with underlying IWorksheet object.
	public XlsIOCalcSheet(IWorksheet sheet)
	{
		excelSheet = sheet;
	}

	
	// Sets the value into the mentioned row and column index of XlsIO worksheet. 
    // If CalculationsSuspended is not True, a ValueChanged event is raised.
	public override void SetValue(int rowPos, int colPos, string val)
	{
		SetValueRowCol(val, rowPos, colPos);
		if(CalculationsSuspended)
			return;
			
		ValueChangedEventArgs e1 = new ValueChangedEventArgs(rowPos, colPos, val);
		base.OnValueChanged(e1);
	}

	
	// Number of rows in the worksheet.
	public new int RowCount
	{
		get{return this.excelSheet.UsedRange.Rows.GetLength(0);}
	}
	
	// Number of columns in the worksheet.
	public new int ColCount
	{
		get{return this.excelSheet.UsedRange.Columns.GetLength(0);}
	}
		 
	// Gets the value at the specified row and column index of worksheet.
	public override object GetValueRowCol(int row, int col)
	{
		object o = excelSheet[row, col].Formula;
		if(o == null)
			o = excelSheet[row, col].Value;
		if(o != null)
		{
			return o.ToString();//.Replace("'", ""); //keep the tic defect#541
		}
		return o;
	}

	// Sets the value at a specified row and column index of worksheet.
	public override void SetValueRowCol(object value, int row, int col)
	{
		//set the row and col value for excel sheet
		excelSheet[row, col].Value = value.ToString();
	}
}

{% endhighlight %}
{% endtabs %}

## CalcWorkbook

The `CalcWorkbook` class is a collection of `CalcSheet` objects. This class is used to provide support for creating and computing with Excel files.
It maintains the sheet id, name and count of the `CalcSheet` objects in the workbook.

**For example:**

Create a class **XlsIOCalcWorkbook** which is derived from `CalcWorkbook` and implement `Syncfusion.XlsIO.IWorkbook`. This class uses XlsIO library 
through the supported interfaces to populate a `CalcWorkbook` object from an XLS file. In addition, the derived class overrides the methods of base class
to create and calculate the XLS data through XlsIO objects, instead of relying on the internal data storage that is available in `CalcSheet`. 
This gives us the ability to change values in the `CalcWorkbook` object and view the newly computed results.

{% tabs %}
{% highlight c# %}

// A `CalcWorkbook` derived class that uses XlsIO object to read / compute Excel XLS files.
public class XlsIOCalcWorkbook : CalcWorkbook
{

	// XlsIO object.
	public IWorkbook excelRWWB;
		 
	// Constructor with array of `XlsIOCalcSheet` objects and a hashtable containing
	// named ranges in the workbook
	public XlsIOCalcWorkbook(XlsIOCalcSheet[]calcSheets, Hashtable namedRanges) 
		: base(calcSheets, namedRanges)
	{

	}

	//Creates a XlsIOCalcWorkbook object from an XLS file with the given pathname.	
	public static XlsIOCalcWorkbook CreateFromXLS(string fileName)
	{
		IWorkbook wb;
		try
		{
			wb = ExcelUtils.Open(fileName);
			ExcelUtils.ThrowNotSavedOnDestroy = false;
		}
		catch
		{
			throw new FileLoadException("XlsIO cannot load the file.", fileName);
		}

		XlsIOCalcSheet[] sheets = new XlsIOCalcSheet[wb.Worksheets.Count];
        string nameList = "!";

		for(int i = 0; i < wb.Worksheets.Count; ++i)
		{
			sheets[i] = new XlsIOCalcSheet(wb.Worksheets[i]);
			sheets[i].Name = wb.Worksheets[i].Name;
            nameList += sheets[i].Name + "!";
				
		}
		Hashtable ranges = new Hashtable();
		foreach(IName name in wb.Names)
		{
            if (name.Scope.Length > 0 && nameList.IndexOf("!" + name.Scope + "!") > -1)
            {
                ranges.Add((name.Scope + "!" + name.Name).ToUpper(), name.Value.Replace("'", ""));
            }
            else
            {
                ranges.Add(name.Name.ToUpper(), name.Value.Replace("'", ""));
            }
        }

		XlsIOCalcWorkbook cwb = new XlsIOCalcWorkbook(sheets, ranges);
        cwb.excelRWWB = wb;
		return cwb;
	}


	// Performs all calculations in the workbook.
	public override void CalculateAll()
	{
		foreach(CalcSheet sheet in this.CalcSheetList)
		{
			sheet.CalculationsSuspended = false;
		}

		foreach(XlsIOCalcSheet sheet in this.CalcSheetList)
		{
			sheet.Engine.UpdateCalcID();
			for(int row = 1; row <= sheet.RowCount; ++row)
			{
				for(int col = 1; col <= sheet.ColCount; ++col)
				{
					object o = sheet[row, col];
					if(o != null)
					{
						string s2 = o.ToString();
						if(s2.Length > 0 && s2[0] == '=')
							sheet[row, col] = s2;
					}
				}
					
			}				
		}
	}
}

{% endhighlight %}
{% endtabs %}

## Computation using XlsIO

To use an XLS file in your business objects and modify the values or get new calculated results, add the two classes derived from `CalcSheet` and `CalcWorkbook` 
to the project and utilize the support to get/set or compute/display the values in the workbook.

### Initialization of Workbook

To read and instantiate an `CalcWorkbook` object from the given XLS file, user need to invoke a method(`Open` method of `ExcelUtils` which relies on XlsIO Source) to open the XLS file with given path and also
invoke `CalculateAll` method to perform calculations.

{% tabs %}
{% highlight c# %}

//Instantiates the workbook object,
XlsIOCalcWorkbook calcWB = XlsIOCalcWorkbook.CreateFromXLS(@"..\..\..\Book.xls");

//Perform Calculations,
this.calcWB.Engine.LockDependencies = false;
this.calcWB.CalculateAll();

{% endhighlight %}
{% endtabs %}

### Set and Compute the values at runtime in the Worksheet

At runtime, user can set the values in the particular `CalcSheet` by indexing the workbook with the sheet name 
and then use the appropriate row and column indexes. Invoking `UpdateCalcID` and `PullUpdatedValue` method of `CalcEngine` 
guarantees the current/updated values in the workbook.

`CalculatingSuspended` method of `CalcEngine`  is to suspend calculations while a series of changes are made to dependent cells 
either by the user or programmatically. When the changes are complete, set this property to False.

{% tabs %}
{% highlight c# %}

//Initialize CalcSheet,
CalcSheet inputSheet = this.calcWB["Inputs"];

Random r = new Random();

this.calcWB.Engine.CalculatingSuspended = true;

//Set random values into the "Inputs" sheet,
inputSheet[1, 2] = (r.Next(74) + 15).ToString();
inputSheet[2, 2] = r.Next(2) == 1 ? "M" : "F";
inputSheet[3, 2] = r.Next(50);
inputSheet[4, 2] = r.Next(15).ToString();
inputSheet[5, 2] = r.Next(11).ToString();
inputSheet[6, 2] = (33 + r.Next(1972)).ToString();
inputSheet[7, 2] = r.Next(2) == 1 ? "Yes" : "No";
inputSheet[8, 5] = r.Next(20); ;

//Calculations are suspended so need to pull the computed value to make sure it has been calculated with the latest changes,
this.calcWB.Engine.UpdateCalcID();
this.calcWB.Engine.PullUpdatedValue(this.calcWB.GetSheetID("Outputs"), 1, 1);

//Get the Calculated value from "Outputs" sheet,
string val = calcWB["Outputs"][1, 1].ToString();

this.calcWB.Engine.CalculatingSuspended = false;

{% endhighlight %}
{% endtabs %}

## Ambiguity Issue 

If the Calculate.Base and XlsIO.Base references are added in the same application, it will throw conflict errors. Since Calculate.Base is already integrated with XlsIO. Hence, if XlsIO.Base reference has been included in the application, 
there is no need to add Calculate.Base reference explicitly. The calculate references get reflected in the XlsIO.Base permanently.  

But if you want both the references in your project, you can use `extern alias` to differentiate the namespaces.
For your reference, please find the msdn [link](https://blogs.msdn.microsoft.com/ansonh/2006/09/27/extern-alias-walkthrough/) regarding
`extern alias`.