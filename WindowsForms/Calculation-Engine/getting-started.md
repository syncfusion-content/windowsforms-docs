---
layout: post
title: Getting Started with WinForms Calculation Engine| Syncfusion
description: Learn here about getting started with Syncfusion Windows Forms Calculation Engine (Calculate) control and more.
platform: windowsforms
control: Calculate
documentation: ug
---

# Getting Started with Windows Forms Calculation Engine (Calculate)

This section helps you to get started with Essential Calculate.

## Assembly Deployment

When the Essential Calculate is used in your application, the following assembly need to be referenced in the project based on the platform.

<table>
<tr>
<thead><th>
Platform(s)</th>
<th>
Assembly
</th>
<th>
NuGet Package
</th>
</thead>
</tr>
<tbody>
<tr>
<td>
WPF, Windows Forms, ASP. NET 
</td>
<td>
Syncfusion.Calculate.Base
</td>
<td>
<a href="https://www.nuget.org/packages/Syncfusion.Calculate.Base/">[Syncfusion.Calculate.Base.nupkg]</a>
</td>
</tr>
<tr>
<td>
Universal Windows Platform
</td>
<td>
Syncfusion.Calculate.UWP
</td>
<td>
<a href="https://www.nuget.org/packages/Syncfusion.Calculate.UWP/">[Syncfusion.Calculate.UWP.nupkg]</a>
</td>
</tr>
<tr>
<td>
Xamarin.Forms
</td>
<td>
Syncfusion.Calculate.Portable<br/>
</td>
<td>
<a href="https://www.nuget.org/packages/Syncfusion.Xamarin.Calculate/">[Syncfusion.Xamarin.Calculate.nupkg]</a>
</td>
</tr>
<tr>
<td>
Xamarin.Android
</td>
<td>
Syncfusion.Calculate.Android<br/>
</td>
<td>
<a href="https://www.nuget.org/packages/Syncfusion.Xamarin.Calculate/">[Syncfusion.Xamarin.Calculate.nupkg]</a>
</td>
</tr>
<tr>
<td>
Xamarin.iOS
</td>
<td>
Syncfusion.Calculate.iOS<br/>
</td>
<td>
<a href="https://www.nuget.org/packages/Syncfusion.Xamarin.Calculate/">[Syncfusion.Xamarin.Calculate.nupkg]</a>
</td>
</tr>
<tr>
<td>
 .NET Core
</td>
<td>
Syncfusion.Calculate.Base<br/>
</td>
<td>
<a href="https://www.nuget.org/packages/Syncfusion.Calculate.Base/">[Syncfusion.Calculate.Base.nupkg]</a>
</td>
</tr>
</tbody>
</table>

## Compute formula using CalcQuickBase

The [CalcQuickBase](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcQuickBase.html) will provide options to directly parse and compute a formula, or register variable names that can later be used in more complex formulas involving these variables.
`CalcQuickBase` is predefined derived class from [ICalcData](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.ICalcData.html).

Below example shows the computation of formula using [ParseAndCompute](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcQuickBase.html#Syncfusion_Calculate_CalcQuickBase_ParseAndCompute_System_String_) method of `CalcQuickBase`.

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
{% highlight vb %}

    Sub Main()

        'Computing Expressions

        Dim calcQuick As CalcQuickBase = New CalcQuickBase()

        Dim formula As String = "(5+25)*2"
        Dim result As String = calcQuick.ParseAndCompute(formula)

        'Computing in built formulas

        Dim formula1 As String = "SUM(5,5)"
        Dim result1 As String = calcQuick.ParseAndCompute(formula)

    End Sub
{% endhighlight %}
{% endtabs %}

## Compute formula using ICalcData

Essential Calculate provides calculation support to arbitrary business objects through [ICalcData](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.ICalcData.html) interface.
The methods and events used in `ICalcData` interface are

* [GetValueRowCol](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.ICalcData.html#Syncfusion_Calculate_ICalcData_GetValueRowCol_System_Int32_System_Int32_)       - A method that is used to get the value from mentioned row and column index.

* [SetValueRowCol](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.ICalcData.html#Syncfusion_Calculate_ICalcData_SetValueRowCol_System_Object_System_Int32_System_Int32_)       - A method that is used to set the value to mentioned row and column index.

* [WireParentObject](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.ICalcData.html#Syncfusion_Calculate_ICalcData_WireParentObject)   - A method that wires the ParentObject after the `CalcEngine` object is created or when a `RegisterGridAsSheet` call is made.

* [ValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.ICalcData.html)        - An event that occurs when the value is changed.

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
{% highlight vb %}

    Public Class CalcData
        Implements ICalcData

        Private values As Dictionary(Of String, Object) = New Dictionary(Of String, Object)()
        Public Event ValueChanged As ValueChangedEventHandler

        Private Sub OnValueChanged(ByVal row As Integer, ByVal col As Integer, ByVal value As String)
            RaiseEvent ValueChanged(Me, New ValueChangedEventArgs(row, col, value))
        End Sub

        Public Function GetValueRowCol1(row As Integer, col As Integer) As Object Implements ICalcData.GetValueRowCol
            Dim value As Object = Nothing
            Dim key As String = RangeInfo.GetAlphaLabel(col) + row.ToString()
            Me.values.TryGetValue(key, value)
            Return value
        End Function

        Public Sub SetValueRowCol1(value As Object, row As Integer, col As Integer) Implements ICalcData.SetValueRowCol
            Dim key = RangeInfo.GetAlphaLabel(col) + row.ToString()

            If Not values.ContainsKey(key) Then
                values.Add(key, value)
            ElseIf values.ContainsKey(key) AndAlso values(key) <> value Then
                values(key) = value
            End If
        End Sub

        Public Event ValueChanged1(sender As Object, e As ValueChangedEventArgs) Implements ICalcData.ValueChanged

        Public Sub WireParentObject1() Implements ICalcData.WireParentObject

        End Sub
    End Class

{% endhighlight %}
{% endtabs %}

### Setting Value into ICalcData

The `SetValueRowCol` method is used to set the value to `ICalcData` object.

{% tabs %}
{% highlight c# %}

calcData.SetValueRowCol(“10”, 1, 1);

calcData.SetValueRowCol(“20”, 1, 2);

{% endhighlight %}
{% highlight vb %}

calcData.SetValueRowCol1("10", 1, 1)
calcData.SetValueRowCol1("20", 1, 2)

{% endhighlight %}
{% endtabs %}

### Evaluation of formula

The `ICalcData` object can be integrated into [CalcEngine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html) by passing it through constructor. Now, you can compute the expressions or equations using `CalcEngine`.

The [ParseAndComputeFormula](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_ParseAndComputeFormula_System_String_) method of `CalcEngine` is used to evaluate the formulas using the values from `ICalcData` object by cell references.

{% tabs %}
{% highlight c# %}

calcData = new CalcData();

CalcEngine engine = new CalcEngine(calcData);

string formula = “SUM (A1, B1)”;

string result = engine.ParseAndComputeFormula(formula);

{% endhighlight %}
{% highlight vb %}

Dim calcData As CalcData = New CalcData()

Dim engine As CalcEngine = New CalcEngine(calcData)
            
Dim formula As String = "SUM (A1,B1)"
        
Dim result As String = engine.ParseAndComputeFormula(formula)

{% endhighlight %}
{% endtabs %}

A sample that demonstrates the computation of formula using ICalcData is available [here](https://github.com/SyncfusionExamples/formula-computation-using-ICalcData-in-vb-.net) 

## Choosing between CalcQuickBase and ICalcData 

### CalcQuickBase
 
The simplest way to use Essential Calculate is through an instance of its [CalcQuickBase](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcQuickBase.html) class. This class provides options to directly parse and compute a formula, or register variable names that can later be used in more complex formulas involving these variables. But we cannot change the values of the variables at runtime for computation. Also by default, `CalcQuickBase` does not try to track any dependencies among the variables you set, hence to enable automatic recalculation of dependent variables, users need to set the [AutoCalc](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcQuickBase.html#Syncfusion_Calculate_CalcQuickBase_AutoCalc) property to `True`.

For more information regarding calculating with `CalcQuickBase`, refer [here](https://help.syncfusion.com/windowsforms/calculate/working-with-calcquick)

N> Please find the sample which uses `CalcQuickBase` class for computations, [CalcQuick_Sample](http://www.syncfusion.com/downloads/support/directtrac/general/ze/CalcQuickBaseWFSample1022512026)

### ICalcData

To use Essential Calculate support, we need to derive the class from [ICalcData](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.ICalcData.html) interface which allows the [CalcEngine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html) class to communicate with arbitrary data sources.
To add calculation support to classes that represent data in a row/column format like a Data Grid, then you need to derive the classes inherited from `ICalcData` interface. Since `GetValueRowCol` and `SetValueRowCol` methods 
of `ICalcData` interface is used to get and set the values of the variables at runtime for computation. `CalcEngine` listens to the `ValueChanged` event of `ICalcData` interface to tracks the dependencies and compute the formulas.

For more information regarding calculating with `ICalcData`, refer [here](https://help.syncfusion.com/windowsforms/calculation-engine/working-with-icalcdata)

N> Please find the sample which uses `ICalcData` interface for computations, [ICalcData_Sample](http://www.syncfusion.com/downloads/support/directtrac/general/ze/ICalcDataWFSample101764257)

## Cross Sheet Reference

[CalcEngine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html) provides support to perform the calculation by accessing the values from the different sheets using [RegisterGridAsSheet](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_RegisterGridAsSheet_System_String_Syncfusion_Calculate_ICalcData_System_Int32_) method.
This method registers an `ICalcData` object so it can be referenced in a formula with another `ICalcData` object. [CreateSheetFamilyID](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_CreateSheetFamilyID) method of `CalcEngine` is used to create a unique family identifier for the sheet.
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

Essential Calculate have support to compute the formulas in different region settings. The two static members such as [ParseArgumentSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_ParseArgumentSeparator) and [ParseDecimalSeparator](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_ParseDecimalSeparator) of `CalcEngine` class is used to set the separators based on local region settings. By default, the value of `ParseArgumentSeparator` is comma(,) and the value of `ParseDecimalSeparator` is dot(.).

{% tabs %}
{% highlight c# %}

//Assign the current culture's decimal separator,
CalcEngine.ParseDecimalSeparator = System.Threading.Thread.CurrentThread.CurrentCulture.NumberFormat.NumberDecimalSeparator.ToCharArray()[0];

//Assign the current culture's argument separator,
CalcEngine.ParseArgumentSeparator = System.Threading.Thread.CurrentThread.CurrentCulture.TextInfo.ListSeparator.ToCharArray()[0];

{% endhighlight %}
{% endtabs %}
