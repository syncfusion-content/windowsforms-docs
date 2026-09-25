---
layout: post
title: Getting Started with Windows Forms Chart | Syncfusion®
description: Learn how to get started with the Syncfusion® Windows Forms Chart control. Explore setup, configuration, chart types, and customization options.
platform: windowsforms
control: Chart
documentation: ug
---

# Getting Started with Windows Forms Chart

This section explains the steps required to populate the [Windows Forms Chart](https://www.syncfusion.com/winforms-ui-controls/chart) control with data and configure a title, data labels, a legend, tooltips, and a built-in skin. This section covers only the minimal features that you need to learn to get started with the chart.

## Add chart reference

Refer to the [Control Dependencies](https://help.syncfusion.com/windowsforms/control-dependencies#chart) section to learn about the assemblies or NuGet packages required to use the Chart control in a Windows Forms application.

For information about installing NuGet packages, refer to [Install NuGet packages in a Windows Forms application](https://help.syncfusion.com/windowsforms/installation/install-nuget-packages).

## Creating application with chart control

This section explains how to add the chart control through the designer and code.

### Adding control via designer

The chart control can be added through the designer by following the given steps:

**Step 1:** Create a new **Windows Forms Application** in Visual Studio.

**Step 2:** Drag and drop the [ChartControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html) from the toolbox into the designer page.

![Chart Started](Getting-Started_images/Toolbox.jpg)

![Chart Started](Getting-Started_images/Form.jpg)

**Step 3:** After dropping the chart, the **ChartWizard** will be opened. You can set up the chart configuration during design-time.

![Chart Started](Getting-Started_images/ChartWizard.jpg)

**Step 4:** The appearance and behavior of the chart can be controlled by setting the appropriate properties in the Properties window.

For example, align the legend at the top by changing the **LegendPosition** property.

![Chart Started](Getting-Started_images/Properties.jpg)

### Adding control via code

To add the chart control manually in C#, follow the given steps:

**Step 1:** Create a new **Windows Forms Application** in Visual Studio.

**Step 2:** Add the following required assembly references to the project:

* Syncfusion.Chart.Windows.dll
* Syncfusion.Chart.Base.dll
* Syncfusion.Chart.Windows
* Syncfusion.Shared.Base

**Step 3:** Include the namespace **Syncfusion.Windows.Forms.Chart**.

{% tabs %}

{% highlight C# %}

using Syncfusion.Windows.Forms.Chart;

{% endhighlight %}

{% highlight VB %}

Imports Syncfusion.Windows.Forms.Chart

{% endhighlight %}

{% endtabs %}

**Step 4:** Create the [ChartControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html) control instance and add it to the form.

{% tabs %}

{% highlight C# %}

ChartControl chartControl = new ChartControl();
chartControl.Dock = DockStyle.Fill;
this.Controls.Add(chartControl);

{% endhighlight %}

{% highlight VB %}

Dim chartControl As ChartControl = New ChartControl
chartControl.Dock = DockStyle.Fill
Me.Controls.Add(chartControl)

{% endhighlight %}

{% endtabs %}

## Populate chart with data

This section visualizes product sales data using a `BindingList`.

### Define a data model

Define a data model that represents a sales data point.

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

### Create a data source

Create a `BindingList` and populate it with instances of the `SalesData` model.

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

Dim dataSource As New BindingList(Of SalesData)()

dataSource.Add(New SalesData("1999", 3))
dataSource.Add(New SalesData("2000", 7))
dataSource.Add(New SalesData("2001", 12))
dataSource.Add(New SalesData("2002", 18))
dataSource.Add(New SalesData("2003", 22))
dataSource.Add(New SalesData("2004", 30))
dataSource.Add(New SalesData("2005", 40))
dataSource.Add(New SalesData("2006", 50))
dataSource.Add(New SalesData("2007", 65))
dataSource.Add(New SalesData("2008", 75))

{% endhighlight %}

{% endtabs %}

### Create the data-binding model

Create a [CategoryAxisDataBindModel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.CategoryAxisDataBindModel.html) using the data source. Use the [CategoryName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.CategoryAxisDataBindModel.html#Syncfusion_Windows_Forms_Chart_CategoryAxisDataBindModel_CategoryName) and [YNames](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.CategoryAxisDataBindModel.html#Syncfusion_Windows_Forms_Chart_CategoryAxisDataBindModel_YNames) properties to map the category and Y-value fields.

{% tabs %}

{% highlight c# %}

CategoryAxisDataBindModel dataSeriesModel = new CategoryAxisDataBindModel(dataSource);
dataSeriesModel.CategoryName = "Year";
dataSeriesModel.YNames = new string[] { "Sales" };

{% endhighlight %}

{% highlight vb %}

Dim dataSeriesModel As New CategoryAxisDataBindModel(dataSource)
dataSeriesModel.CategoryName = "Year"
dataSeriesModel.YNames = New String() {"Sales"}

{% endhighlight %}

{% endtabs %}

### Bind the data to the chart series

Create a [ChartSeries](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html) and assign the data-binding model to its [CategoryModel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_CategoryModel) property. Then, add the series to the chart.

{% tabs %}

{% highlight c# %}

ChartSeries chartSeries = new ChartSeries("Sales");
chartSeries.CategoryModel = dataSeriesModel;
chartControl.Series.Add(chartSeries);

{% endhighlight %}

{% highlight vb %}

Dim chartSeries As New ChartSeries("Sales")
chartSeries.CategoryModel = dataSeriesModel
chartControl.Series.Add(chartSeries)

{% endhighlight %}

{% endtabs %}

### Configure the category axis

To display categorical data, set the [ValueType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_ValueType) property of the [PrimaryXAxis](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_PrimaryXAxis) to [Category](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartValueType.html#Syncfusion_Windows_Forms_Chart_ChartValueType_Category).
You can also define titles for the primary X and Y axes by using their [Title](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Title) properties.

{% tabs %}

{% highlight c# %}

chartControl.PrimaryXAxis.ValueType = ChartValueType.Category;
chartControl.PrimaryXAxis.Title = "Year";
chartControl.PrimaryYAxis.Title = "Sales(Millions)";

{% endhighlight %}

{% highlight vb %}

chartControl.PrimaryXAxis.ValueType = ChartValueType.Category
chartControl.PrimaryXAxis.Title = "Year"
chartControl.PrimaryYAxis.Title = "Sales(Millions)"

{% endhighlight %}

{% endtabs %}

## Apply a Skin to the chart control

To improve the appearance of the chart, apply the **Metro** skin to the [ChartControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html) as follows.

{% tabs %}

{% highlight c# %}

chartControl.Skins = Skins.Metro;

{% endhighlight %}
{% highlight vb %}

chartControl.Skins = Skins.Metro

{% endhighlight %}

{% endtabs %}

The following screenshot depicts the view when you run the project in your form.

![Chart Started](Getting-Started_images/Skin.jpg)

## Add chart title

A title provides users with quick information about the data plotted in the chart. You can add a title to the chart by using the [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html#Syncfusion_Windows_Forms_Chart_ChartTitle_Text) property of [ChartTitle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTitle.html).

{% tabs %}

{% highlight c# %}
  
ChartTitle title = new ChartTitle();
title.Text = "Product Sales";
chartControl.Titles.Add(title);

{% endhighlight %}

{% highlight vb %}

Dim title As ChartTitle = New ChartTitle()
title.Text = "Product Sales"
chartControl.Titles.Add(title)

{% endhighlight %}

{% endtabs %}	

![Chart Started](Getting-Started_images/Title.jpg)

## Enable legend

The [Legend](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Legend) is enabled or disabled by using the **Visible** property. By default, the legend is enabled in the chart.

{% tabs %}

{% highlight c# %}
  
ChartSeries chartSeries = new ChartSeries("Sales");
chartControl.Legend.Visible = true;
chartControl.LegendAlignment = ChartAlignment.Center;
chartControl.Legend.Position = ChartDock.Top; 
chartControl.LegendsPlacement = ChartPlacement.Outside;

{% endhighlight %}

{% highlight vb %}

Dim chartSeries As ChartSeries = New ChartSeries("Sales")
chartControl.Legend.Visible = true
chartControl.LegendAlignment = ChartAlignment.Center
chartControl.Legend.Position = ChartDock.Top
chartControl.LegendsPlacement = ChartPlacement.Outside

{% endhighlight %}

{% endtabs %}	

![Chart Started](Getting-Started_images/Legend.jpg)

## Enable data labels

You can add data labels to the chart to improve readability by enabling the [DisplayText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartStyleInfo.html#Syncfusion_Windows_Forms_Chart_ChartStyleInfo_DisplayText) property of the [Style](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_Style) in [ChartSeries](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html).

{% tabs %}

{% highlight c# %}

chartSeries.Style.DisplayText = true;
chartSeries.Style.TextOrientation = ChartTextOrientation.Up;

{% endhighlight %}

{% highlight vb %}

chartSeries.Style.DisplayText = true
chartSeries.Style.TextOrientation = ChartTextOrientation.Up

{% endhighlight %}

{% endtabs %}	

![Chart Started](Getting-Started_images/DataLabel.jpg)

## Enable tooltip

Tooltip is used to show detailed information about a data point. You can enable tooltip by using the [ShowToolTips](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ShowToolTips) property.

{% tabs %}

{% highlight c# %}
  
chartControl.ShowToolTips = true;
chartControl.Tooltip.BackgroundColor = new BrushInfo(Color.White);
chartControl.Tooltip.BorderStyle = BorderStyle.FixedSingle;
chartControl.Tooltip.Font = new Font("Segoe UI", 10);
chartSeries.PrepareStyle += ChartSeries_PrepareStyle;

private void ChartSeries_PrepareStyle(object sender, ChartPrepareStyleInfoEventArgs args)
{
     ChartSeries series = sender as ChartSeries;
     int index = args.Index;
     ChartPoint point = series.Points[index];
     args.Style.ToolTip = "Product : " + point.Category + "\nSales : " + point.YValues[0];
	 args.Handled = true;
}

{% endhighlight %}

{% highlight vb %}

chartControl.ShowToolTips = True
chartControl.Tooltip.BackgroundColor = New BrushInfo(Color.White)
chartControl.Tooltip.BorderStyle = BorderStyle.FixedSingle
chartControl.Tooltip.Font = New Font("Segoe UI", 10)
AddHandler chartSeries.PrepareStyle, AddressOf ChartSeries_PrepareStyle

Private Sub ChartSeries_PrepareStyle(ByVal sender As Object, ByVal args As ChartPrepareStyleInfoEventArgs)
    Dim series As ChartSeries = CType(sender, ChartSeries)
    Dim index As Integer = args.Index
    Dim point As ChartPoint = series.Points(index)
    args.Style.ToolTip = "Product : " & point.Category & vbLf & "Sales : " & point.YValues(0)
    args.Handled = True
End Sub

{% endhighlight %}

{% endtabs %}

![Chart Started](Getting-Started_images/Tooltip.jpg)

## See also

- [Binding a DataSet to a Chart](https://help.syncfusion.com/windowsforms/chart/chart-data#binding-a-dataset-to-the-chart)
- [Tasks Window](https://help.syncfusion.com/windowsforms/chart/design-time-features#tasks-window)
- [How to host WPF Chart control in Windows Forms project](https://support.syncfusion.com/kb/article/18893/how-to-host-wpf-chart-control-in-windows-forms-project-)
- [How to create a chart in VB .NET Windows Forms](https://support.syncfusion.com/kb/article/9641/how-to-create-a-chart-in-vb-net-windows-forms)
- [How to create a real-time chart in WF](https://support.syncfusion.com/kb/article/8266/how-to-create-a-real-time-chart-in-wf)
- [How to add data to the Chartcontrol in WinForms Chart](https://support.syncfusion.com/kb/article/1254/how-to-add-data-to-the-chartcontrol-in-winforms-chart)
- [How to specify a chart type in Syncfusion Winforms Chart control](https://support.syncfusion.com/kb/article/1250/how-to-specify-a-chart-type-in-syncfusion-winforms-chart-control)


You can find the complete getting started sample from this [link](https://github.com/SyncfusionExamples/winforms-chart-getting-started).

N> You can also explore our [WinForms Chart example](https://github.com/syncfusion/winforms-demos/tree/master/chart) that shows how to render various chart types as well as how to easily configure with built-in support for creating stunning visual effects.