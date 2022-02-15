---
layout: post
title: How-to-customize-the-data-points-for-Chart-Series | Windows Forms | Syncfusion
description: how to customize the data points for chart series
platform: windowsforms
control: chart
documentation: ug
---

# How to customize the data points for Chart Series

You can customize the data points by exposing the IChartSeriesModel interface to the series. The default Series store is an implementation of the IChartSeriesModel. By implementing this interface, we can set it as the underlying data.

Using the SeriesModel property, you can set an instance of the IChartSeriesModel, underlying the series. Use this property to replace the instance with our own implementation.

Implement the model by inheriting the IChartSeriesModel as per the below code example.

{% tabs %}

{% highlight c# %}

public class NonIndexedModel : IChartSeriesModel
{
    private double[] x;
    private double[] y;

    public NonIndexedModel(double[] xValues, double[] yValues)
    {
        this.x = xValues;
        this.y = yValues;
    }

    // Returns the number of points in this series.
    public int Count
    {
        get
        {
            return this.x.GetLength(0);
        }
    }

    // Returns the Y value of the series at the specified point index.

    public double[] GetY(int xIndex)
    {
        return new double[] { y[xIndex] };
    }

    // Returns the X value of the series at the specified point index.

    public double GetX(int xIndex)
    {
        return x[xIndex];
    }

    // Indicates whether a specified point index has a value which can be plotted.

    public bool GetEmpty(int index)
    {
        return false;
    }

    // Event that should be raised by any implementation of this interface if data that it holds changes. This will cause the chart to be updated accordingly. We don't raise this event in our implementation as our data will be static.  

    public event ListChangedEventHandler Changed;

}

{% endhighlight %}

{% highlight vb %}

' Custom Model

Public Class ArrayModel Implements IChartSeriesModel

   Private x() As Double

   Private y() As Double


   Public Sub New(ByVal xValues() As Double, ByVal yValues() As Double)

         Me.x = xValues
         Me.y = yValues

   End Sub

   ' Returns the number of points in this series.

   Public ReadOnly Property Count() As Integer

        Get

           Return Me.x.GetLength(0)

        End Get

   End Property

   ' Returns the Y value of the series at the specified point index.

   Public Double() GetY(Integer xIndex)

      Return New Double() { y(xIndex)}

    End Function

 ' Returns the X value of the series at the specified point index.

   Public Double GetX(Integer xIndex)

      Return x(xIndex)

   End Function

   ' Indicates whether a specified point index has a value which can be plotted.

   Public Function GetEmpty(ByVal index As Integer) As Boolean

      Return False

   End Function

   ' Event that should be raised by any implementation of this interface if data that it holds changes. This will cause the chart to be updated accordingly. We don't raise this event in our implementation as our data will be static.

   Public event ListChangedEventHandler Changed

End Class

{% endhighlight %}

{% endtabs %}	

To set the SeriesModel property of ChartSeries for creating custom data points as like below.

{% tabs %}

{% highlight c# %}

// Customize data points using IChartSeriesModel interface.

series1.SeriesModel = new NonIndexedModel(new double[] { 2, 5, 3, 4, 6 }, new double[] { 10, 33, 20, 43, 12 });

{% endhighlight %}

{% highlight vb %}

' Customize data points using IChartSeriesModel interface.

series1.SeriesModel = New NonIndexedModel(New Double() {2, 5, 3, 4, 6}, New Double() {10, 33, 20, 43, 12})

{% endhighlight %}

{% endtabs %}	

You can find the complete sample from this [link](https://www.syncfusion.com/downloads/support/directtrac/general/ze/Chart-CustomDataPoints215363699).

{% seealso %}

[Populating Data in Windows Forms Chart](/WindowsForms/chart/chart-data)

{% endseealso %}
