---
layout: post
title: Working with ICalcData in Windows Forms Calculate | Syncfusion
description: Learn about Working with ICalcData support in Syncfusion Windows Forms Calculation Engine (Calculate) control and more details.
platform: windowsforms
control: Calculate
documentation: ug
---

# Working with ICalcData in Windows Forms Calculation Engine

Essential Calculate provides calculation support to arbitrary business objects through [ICalcData](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.ICalcData.html) interface. To add calculation support to classes that represent data in a row/column format like a Data Grid, then you need to derive the classes inherited from `ICalcData` interface.

## Methods and Events in ICalcData

`ICalcData` has three methods and one event. This interface allows the [CalcEngine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html) class in Essential Calculate to communicate with arbitrary data sources that implement this interface.

### SetValueRowCol

[SetValueRowCol](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.ICalcData.html#Syncfusion_Calculate_ICalcData_SetValueRowCol_System_Object_System_Int32_System_Int32_) method is used to set the value to mentioned row and column index. Essential Calculate expects any indexes (rows / column integer values) to be one-based.

An example of defining the `SetValueRowCol` method in custom class(CalcData) is explained below,

{% tabs %}
{% highlight c# %}

//Custom class,

public class CalcData : ICalcData
{
    Dictionary<string, object> values = new Dictionary<string, object>();

    //Defining SetValueRowCol method in Custom(user defined) Class,
    public void SetValueRowCol(object value, int row, int col)
    {
        var key = RangeInfo.GetAlphaLabel(col) + row;
        if (!values.ContainsKey(key))
            values.Add(key, value);
        else if (values.ContainsKey(key) && values[key] != value)
            values[key] = value;
    }
}

//Main class,

public void Main()
{
    CalcData calcData = new CalcData();

    //To set the data value of a specified row and column,
    calcData.SetValueRowCol(90, 1, 1);
    calcData.SetValueRowCol(50, 1, 2);;
} 

{% endhighlight %}
{% endtabs %}

### GetValueRowCol

[GetValueRowCol](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.ICalcData.html#Syncfusion_Calculate_ICalcData_GetValueRowCol_System_Int32_System_Int32_) method is used to get the value from mentioned row and column index. Essential Calculate expects any indexes (rows / column integer values) to be one-based.

An example of defining the `GetValueRowCol` method in custom class(CalcData) is explained below,

{% tabs %}
{% highlight c# %}

//Custom class,

public class CalcData : ICalcData
{
    Dictionary<string, object> values = new Dictionary<string, object>();

    //Defining GetValueRowCol method in Custom(user defined) Class,
    public object GetValueRowCol(int row, int col)
    {
        object value = null;
        var key = RangeInfo.GetAlphaLabel(col) + row;
        this.values.TryGetValue(key, out value);
        return value;
    }
}

//Main class,

public void Main()
{
    CalcData calcData = new CalcData();

    //To get the data value of a specified row and column,
    var value1 = calcData.GetValueRowCol(1, 1);
    var value2 = calcData.GetValueRowCol(1, 2);
} 

{% endhighlight %}
{% endtabs %}

### WireParentObject

[WireParentObject](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.ICalcData.html#Syncfusion_Calculate_ICalcData_WireParentObject) method that wires the ParentObject after the `CalcEngine` object is created or when a [RegisterGridAsSheet](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_RegisterGridAsSheet_System_String_Syncfusion_Calculate_ICalcData_System_Int32_) call is made. The purpose is to give the data object 
a chance to do any initialization steps it may need, such as subscribe the events to handle the changes in data notifications.

### ValueChanged

[ValueChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.ICalcData.html) event of `ICalcData` interface occurs whenever the value is changed. The `CalcEngine` listens to this event and accordingly reacts to data changes.
 It is through this event that formulas are processed and dependencies are tracked by the `CalcEngine`.

{% tabs %}
{% highlight c# %}

//Custom class,
public class CalcData : ICalcData
{
    public event ValueChangedEventHandler ValueChanged;

    private void OnValueChanged(int row, int col, string value)
    {
        if (ValueChanged != null)
            ValueChanged(this, new ValueChangedEventArgs(row, col, value));
    }
}

{% endhighlight %}
{% endtabs %}

## Computation using ICalcData

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

CalcData calcData = new CalcData();

calcData.SetValueRowCol(10, 1, 1);

calcData.SetValueRowCol(20, 1, 2);

{% endhighlight %}
{% endtabs %}

### Initialization of CalcEngine

The `ICalcData` object can be integrated into `CalcEngine` by passing it through constructor. Now, you can compute the expressions or equations using `CalcEngine`.

{% tabs %}
{% highlight c# %}

CalcData calcData = new CalcData();

CalcEngine engine = new CalcEngine(calcData);

{% endhighlight %}
{% endtabs %}


### Evaluation of formula

The [ParseAndComputeFormula](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Calculate.CalcEngine.html#Syncfusion_Calculate_CalcEngine_ParseAndComputeFormula_System_String_) method of `CalcEngine` is used to evaluate the formulas using the values from `ICalcData` object by cell references.

{% tabs %}
{% highlight c# %}

CalcData calcData = new CalcData();

calcData.SetValueRowCol(10, 1, 1);

calcData.SetValueRowCol(20, 1, 2);

CalcEngine engine = new CalcEngine(calcData);

string formula = “SUM (A1, B1)”;

string result = engine.ParseAndComputeFormula(formula);

{% endhighlight %}
{% endtabs %}

### How to use custom control with CalcEngine

You can use any of Tools to in our CalcEngine. But it should be derived from ICalcData. 

{% tabs %}
{% highlight c# %}

this.grid.ItemsSource = dt.DefaultView; 
engine = new CalcEngine(this.grid); 
 
public class CustomGrid : DataGrid,ICalcData 
{ 
    public CustomGrid() 
    { } 
 
    public event ValueChangedEventHandler ValueChanged; 
 
    public object GetValueRowCol(int row, int col) 
    { 
        if (row < 0 || col < 0) 
            return "Invalid cell"; 
        string s = (this.Items[row-1] as DataRowView).Row.ItemArray[col-1].ToString(); 
        return s; 
    } 
 
    public void SetValueRowCol(object value, int row, int col) 
    { 
        //To set the value to specific cell.    
    } 
 
    public void WireParentObject() 
    { 
         //To trigger any of event for parent. This method is called when calcEngine assigned the parent object as CustomDataGrid. 
    } 
} 

{% endhighlight %}
{% endtabs %}

A sample that demonstrates using custom control with CalcEngine is available [here](https://github.com/SyncfusionExamples/how-to-use-custom-control-with-calcengine-) 

N> To support cross-references among several `ICalcData` objects, you must register the objects with a single instance of the `CalcEngine`.
For more reference, refer [here](https://help.syncfusion.com/windowsforms/calculate/getting-started#cross-sheet-reference).
