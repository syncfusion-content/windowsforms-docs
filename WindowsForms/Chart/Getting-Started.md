---
layout: post
title: Getting-Started | Windows Forms | Syncfusion
description: getting started
platform: windowsforms
control: Chart
documentation: ug
---

# Getting Started

This section provides the details that you will need to know about getting started with our Chart control. 

## Creating a Simple Chart

To create a simple chart control and populate it with simple data, follow the steps that are given below.

1. Open your form in the designer. Add the Syncfusion controls to yourVS.NET toolbox if you haven't done so already (the install would have automatically done this unless you selected not to complete toolbox integration during installation). 

Add new image.

2. Drag a Chart control onto the form.

Add image

3. Once you dropped the chart, the ChartWizard will open to set up the chart during design-time. You can design the chart as per your desire.

Add image

4. Appearance and behavior-related aspects of the Chart can be controlled by setting the appropriate properties through the properties grid. 

For example, change the position of the legend for the control to be top aligned by changing the LegendPosition property.

![](Getting-Started_images/Getting-Started_img3.jpeg)

## Populate Chart with Data

As we are going to visualize the comparison of product sales,

1. Now, let us define a simple data model that represents a data point. Create a data model class like below.

{% tabs %}

{% highlight c# %}

public class SalesData
{
    private string year;

    private double sales;

    public string Year
    {
        get { return year; }

        set { year = value; }
    }
    public double Sales
    {
        get { return sales; }

        set { sales = value; }
    }

    public SalesData(string year, double sales)
    {
        this.Year = year;

        this.Sales = sales;
    }
}

{% endhighlight %}

{% highlight vb %}

Public Class SalesData

    Private xValue As String

    Private yValue As Double

    Public Property Year As String
        Get
            Return xValue
        End Get

        Set(ByVal value As String)
            xValue = value
        End Set
    End Property

    Public Property Sales As Double
        Get
            Return yValue
        End Get

        Set(ByVal value As Double)
            yValue = value
        End Set
    End Property

    Public Sub New(ByVal year As String, ByVal sales As Double)
        Me.Year = year
        Me.Sales = sales
    End Sub

End Class

{% endhighlight %}

{% endtabs %}	

2. Create an instance for BindingList to add list of data model.

{% tabs %}

{% highlight c# %}

BindingList<SalesData> dataSource = new BindingList<SalesData>(); 

dataSource.Add(new SalesData("1999", 3));

dataSource.Add(new SalesData("2000", 7));

dataSource.Add(new SalesData("2001", 12));

dataSource.Add(new SalesData("2002", 18));

dataSource.Add(new SalesData("2003", 22));

dataSource.Add(new SalesData("2004", 30));

dataSource.Add(new SalesData("2005", 40));

dataSource.Add(new SalesData("2006", 50));

dataSource.Add(new SalesData("2007", 65));

dataSource.Add(new SalesData("2008", 75));

{% endhighlight %}

{% highlight vb %}

BindingList<SalesData> dataSource = new BindingList<SalesData>()

dataSource.Add(new SalesData("1999", 3))

dataSource.Add(new SalesData("2000", 7))

dataSource.Add(new SalesData("2001", 12))

dataSource.Add(new SalesData("2002", 18))

dataSource.Add(new SalesData("2003", 22))

dataSource.Add(new SalesData("2004", 30))

dataSource.Add(new SalesData("2005", 40))

dataSource.Add(new SalesData("2006", 50))

dataSource.Add(new SalesData("2007", 65))

dataSource.Add(new SalesData("2008", 75))

{% endhighlight %}

{% endtabs %}	
   
3. Then bind the XValues and YValues to CategoryName and YNames properties of CategoryAxisDataBindModel as shown below.

{% tabs %}

{% highlight c# %}

CategoryAxisDataBindModel dataSeriesModel = new CategoryAxisDataBindModel(dataSource);

dataSeriesModel.CategoryName = "Year";

dataSeriesModel.YNames = new string[] { "Sales" };       

{% endhighlight %}

{% highlight vb %}

{% endhighlight %}

{% endtabs %}	

4. Now, create a ChartSeries to bind the above data bind model to CategoryModel and add it to the ChartControl.

{% tabs %}

{% highlight c# %}

ChartSeries chartSeries = new ChartSeries("Sales");

chartSeries.CategoryModel = dataSeriesModel;

{% endhighlight %}

{% highlight vb %}

{% endhighlight %}

{% endtabs %}	

## Apply Skins to ChartControl

To make the better appearance of Chart, you need to apply Metro skin to ChartControl as shown below.

{% tabs %}

{% highlight c# %}
  
this.chartControl1.Skins = Skins.Metro;

{% endhighlight %}

{% highlight vb %}

chartControl1.Skins = Skins.Metro

{% endhighlight %}

{% endtabs %}	

When you run the project, the following chart is created as a result of the above codes.

Add output image

## Add Chart Title

You need to add a title to the chart to provide quick information to the user about the data being plotted in the chart. You can add it by using the Text property of ChartTitle.

{% tabs %}

{% highlight c# %}
  
chart.Title.Text = "Product Sales";

{% endhighlight %}

{% highlight vb %}

chart.Title.Text = "Product Sales"

{% endhighlight %}

{% endtabs %}	

Need to add image

## Enable Legend

You can enable or disable the legend by using the Visible property. It is enabled in the chart, by default. 

{% tabs %}

{% highlight c# %}
  
chart.Legend.Visible = true;

{% endhighlight %}

{% highlight vb %}

chart.Legend.Visible = true

{% endhighlight %}

{% endtabs %}	

Need to add image

## Enable Data Labels

You can add data labels to improve the readability of the chart. This can be achieved by enabling the DisplayText property of ChartStyleInfo.

{% tabs %}

{% highlight c# %}
  
series.Style.DisplayText = true;

{% endhighlight %}

{% highlight vb %}

series.Style.DisplayText = True

{% endhighlight %}

{% endtabs %}	

Need to add image

## Enable Tooltip

The Tooltip is useful when you cannot display information by using the data labels due to the space constraints. You can enable tooltip by using the ShowToolTips property

{% tabs %}

{% highlight c# %}
  
chart.ShowToolTips = true;

{% endhighlight %}

{% highlight vb %}

chart.ShowToolTips = true

{% endhighlight %}

{% endtabs %}	

Need to add image

## Add Symbols

Symbols can be added to chart data marker by setting the Shape of the Symbol property. There are different shapes you can set to the chart such as Diamond, Circle, Arrow, Cross, Hexagon, etc.

{% tabs %}

{% highlight c# %}

series.Style.Symbol.Shape = ChartSymbolShape.Diamond;

series.Style.Symbol.Color = Color.Green;

series.Style.Symbol.Border.Width = 3;

series.Style.Symbol.Border.Color = Color.Black;           

series.Style.Symbol.Size = new Size(25, 25);

{% endhighlight %}

{% highlight vb %}

series.Style.Symbol.Shape = ChartSymbolShape.Diamond

series.Style.Symbol.Color = Color.Green

series.Style.Symbol.Border.Width = 3

series.Style.Symbol.Border.Color = Color.Black

series.Style.Symbol.Size = New Size(25, 25)

{% endhighlight %}

{% endtabs %}	

Need to add image

{% seealso %}

[Binding a DataSet to a Chart](http://help.syncfusion.com/windowsforms/chart/chart-data#binding-a-dataset-to-the-chart), [Tasks Window](http://help.syncfusion.com/windowsforms/chart/design-time-features#tasks-window)

{% endseealso %}

You can find the complete getting started sample from this link.
