---
layout: post
title: Getting Started | Calculate | Xamarin.Forms | Syncfusion
description: This session explains that how to calculate the formulasusing CalcQuickBase,CalcEngine and ICalcData in Xamarin.Forms Calculate
platform: xamarin
control: Calculate
documentation: ug
---

# Getting Started

This section helps you to get started with Essential Calculate.

## Adding Calculate reference

You can add Calculate reference using one of the following methods:

**Method 1: Adding Calculate reference from nuget.org**

Syncfusion Xamarin components are available in [nuget.org](https://www.nuget.org/). To add Calculate to your project, open the NuGet package manager in Visual Studio, search for [Syncfusion.Xamarin.Calculate](https://www.nuget.org/packages/Syncfusion.Xamarin.Calculate), and then install it.

![Adding Calculate reference from nuget](Getting-Started_images/Adding Calculate reference.png)

N> Install the same version of Calculate NuGet in all the projects.

**Method 2: Adding Calculate reference from toolbox**

Syncfusion also provides Xamarin Toolbox. Using this toolbox, you can drag the Calculate control to the XAML page. It will automatically install the required NuGet packages and add the namespace to the page. To install Syncfusion Xamarin Toolbox, refer to [Toolbox](https://help.syncfusion.com/xamarin/utility#toolbox).

**Method 3: Adding Calculate assemblies manually from the installed location**

If you prefer to manually reference the assemblies instead referencing from NuGet, add the following assemblies in respective projects.

Location: {Installed location}/{version}/Xamarin/lib

<table>
<tr>
<td>PCL</td>
<td>Syncfusion.Calculate.Portable.dll<br/>Syncfusion.Licensing.dll<br/></td>
</tr>
</table>

N> To know more about obtaining our components, refer to these links for [Mac](https://help.syncfusion.com/xamarin/introduction/download-and-installation/mac/) and [Windows](https://help.syncfusion.com/xamarin/introduction/download-and-installation/windows/).

I> Starting with v16.2.0.x, if you reference Syncfusion assemblies from the trial setup or from the NuGet feed, you also have to include a license key in your projects. Please refer to [Syncfusion license key](https://help.syncfusion.com/common/essential-studio/licensing/license-key/) to know about registering Syncfusion license key in your Xamarin application to use our components.

## Compute formula using CalcQuickBase

The [CalcQuickBase](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.CalcQuickBase.html) will provide options to directly parse and compute a formula, or register variable names that can later be used in more complex formulas involving these variables.
`CalcQuickBase` is predefined derived class from [ICalcData](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.ICalcData.html).

Below example shows the computation of formula using [ParseAndCompute](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.CalcQuickBase~ParseAndCompute.html) method of `CalcQuickBase`.

{% tabs %}
{% highlight c# %}

CalcQuickBase calcQuick = new CalcQuickBase();   

//Computing expressions,

string formula = "(5+25)*2";
string result = calcQuick.ParseAndCompute(formula);

//Computing in built formulas,

string formula = "SUM(5,5)";
string result = calcQuick.ParseAndCompute(formula);

{% endhighlight %}
{% endtabs %}

## Compute formula using ICalcData

Essential Calculate provides calculation support to arbitrary business objects through [ICalcData](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.ICalcData.html) interface.
The methods and events used in `ICalcData` interface are

* [GetValueRowCol](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.ICalcData~GetValueRowCol.html)       - A method that is used to get the value from mentioned row and column index.

* [SetValueRowCol](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.ICalcData~SetValueRowCol.html)       - A method that is used to set the value to mentioned row and column index.

* [WireParentObject](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.ICalcData~WireParentObject.html)   - A method that wires the ParentObject after the `CalcEngine` object is created or when a `RegisterGridAsSheet` call is made.

* [ValueChanged](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.ICalcData~ValueChanged_EV.html)        - An event that occurs when the value is changed.

Below example shows the computation of formula using `ICalcData` interface.

### Creating a Class from ICalcData 

Create CalcData class derived from `ICalcData` interface,

{% tabs %}
{% highlight c# %}

public class CalcData : ICalcData
{
    public event ValueChangedEventHandler ValueChanged;

    Dictionary<string, object> values = new Dictionary<string, object>();
    public object GetValueRowCol(int row, int col)
    {
        object value = null;
        var key = RangeInfo.GetAlphaLabel(col) + row;
        this.values.TryGetValue(key, out value);
        return value;
    }

    public void SetValueRowCol(object value, int row, int col)
    {
        var key = RangeInfo.GetAlphaLabel(col) + row;
        if (!values.ContainsKey(key))
            values.Add(key, value);
        else if (values.ContainsKey(key) && values[key] != value)
            values[key] = value;
    }

    public void WireParentObject(){}

    private void OnValueChanged(int row, int col, string value)
    {
        if (ValueChanged != null)
            ValueChanged(this, new ValueChangedEventArgs(row, col, value));
    }
}

{% endhighlight %}
{% endtabs %}

### Setting Value into ICalcData

The `SetValueRowCol` method is used to set the value to `ICalcData` object.

{% tabs %}
{% highlight c# %}

calcData.SetValueRowCol(“10”, 1, 1);

calcData.SetValueRowCol(“20”, 1, 2);

{% endhighlight %}
{% endtabs %}

### Evaluation of formula

The `ICalcData` object can be integrated into [CalcEngine](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.CalcEngine.html) by passing it through constructor. Now, you can compute the expressions or equations using `CalcEngine`.

The [ParseAndComputeFormula](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.CalcEngine~ParseAndComputeFormula.html) method of `CalcEngine` is used to evaluate the formulas using the values from `ICalcData` object by cell references.

{% tabs %}
{% highlight c# %}

calcData = new CalcData();

CalcEngine engine = new CalcEngine(calcData);

string formula = “SUM (A1, B1)”;

string result = engine.ParseAndComputeFormula(formula);

{% endhighlight %}
{% endtabs %}

## Choosing between CalcQuickBase and ICalcData 

### CalcQuickBase
 
The simplest way to use Essential Calculate is through an instance of its [CalcQuickBase](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.CalcQuickBase.html) class. This class provides options to directly parse and compute a formula, or register variable names that can later be used in more complex formulas involving these variables. But we cannot change the values of the variables at runtime for computation. Also by default, `CalcQuickBase` does not try to track any dependencies among the variables you set, hence to enable automatic recalculation of dependent variables, users need to set the [AutoCalc](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.CalcQuickBase~AutoCalc.html) property to `True`.

For more information regarding calculating with `CalcQuickBase`, refer [here](https://help.syncfusion.com/xamarin/calculate/working-with-calcquick)

### ICalcData

To use Essential Calculate support, we need to derive the class from [ICalcData](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.ICalcData.html) interface which allows the [CalcEngine](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.CalcEngine.html) class to communicate with arbitrary data sources.
To add calculation support to classes that represent data in a row/column format like a Data Grid, then you need to derive the classes inherited from `ICalcData` interface. Since `GetValueRowCol` and `SetValueRowCol` methods 
of `ICalcData` interface is used to get and set the values of the variables at runtime for computation. `CalcEngine` listens to the `ValueChanged` event of `ICalcData` interface to tracks the dependencies and compute the formulas.

For more information regarding calculating with `ICalcData`, refer [here](https://help.syncfusion.com/xamarin/calculate/working-with-icalcdata)

## Cross Sheet Reference

[CalcEngine](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.CalcEngine.html) provides support to perform the calculation by accessing the values from the different sheets using [RegisterGridAsSheet](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.CalcEngine~RegisterGridAsSheet.html) method.
This method registers an `ICalcData` object so it can be referenced in a formula with another `ICalcData` object. [CreateSheetFamilyID](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.CalcEngine~CreateSheetFamilyID.html) method of `CalcEngine` is used to create a unique family identifier for the sheet.
In `RegisterGridAsSheet` method, while registering the `ICalcData` objects, users need to pass this unique identifier to mark the `ICalcData` objects are belonging
to this family. Also cross reference of `ICalcData` objects can be done within the same family.

The class which is derived from `ICalcData` can be registered as a worksheet for identifying the cell references.

Below code illustrates the registering of two `ICalcData` objects and use the cell references from two objects for computation of formula.

{% tabs %}
{% highlight c# %}

//Initialization of first ICalcData object in CalcEngine,
calcData = new CalcData();
CalcEngine engine = new CalcEngine(calcData);

//Initialization of second ICalcData object in CalcEngine,
calcData1 = new calcData1();
engine = new CalcEngine(calcData1);

//Create a unique family id,
int i = CalcEngine.CreateSheetFamilyID();

//Register the first ICalcData object as "Sheet1",
engine.RegisterGridAsSheet("Sheet1", calcData, i);

//Register the second ICalcData object as "Sheet2",
engine.RegisterGridAsSheet("Sheet2", calcData1, i);

//Access the two sheet references in the formula,
string formula = “SUM(Sheet1!A1, Sheet2!A1)”;

//Computation of result,
string result = engine.ParseAndComputeFormula(formula);

{% endhighlight %}
{% endtabs %}

## Compute formulas in different region settings

Essential Calculate have support to compute the formulas in different region settings. The two static members such as [ParseArgumentSeparator](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.CalcEngine~ParseArgumentSeparator.html) and [ParseDecimalSeparator](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Calculate.Base~Syncfusion.Calculate.CalcEngine~ParseDecimalSeparator.html) of `CalcEngine` class is used to set the separators based on local region settings. By default, the value of `ParseArgumentSeparator` is comma(,) and the value of `ParseDecimalSeparator` is dot(.).

{% tabs %}
{% highlight c# %}

//Assign the current culture's decimal separator,
CalcEngine.ParseDecimalSeparator = System.Threading.Thread.CurrentThread.CurrentCulture.NumberFormat.NumberDecimalSeparator.ToCharArray()[0];

//Assign the current culture's argument separator,
CalcEngine.ParseArgumentSeparator = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ListSeparator.ToCharArray()[0];

{% endhighlight %}
{% endtabs %}