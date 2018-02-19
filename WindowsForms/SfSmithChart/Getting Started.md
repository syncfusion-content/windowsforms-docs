---
layout: post
title: Getting started
description: This section provides an information on working with smith chart.
platform: windowsforms
control: SfSmithChart
documentation: ug
---
# Getting Started

This section explains the steps required to build an application with Smith chart.

## Creating a simple smith chart through the designer

To create a simple smith chart control and populate it with simple data, follow the given steps:

* Open your form in the designer. Add the Syncfusion controls to your VS.NET toolbox if you have not add this already (On installing, this toolbox will be configured automatically unless you have selected not to complete toolbox integration during installation).

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCache/Content.Word/Toolbox.png](GettingStarted_images/GettingStarted_img1.jpeg)


* Drag and drop the smith chart control into the form. Now, the control is added along with the reference **Syncfusion****.****SfSmithChart****.****WinForms** as shown in the following screenshot.

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCache/Content.Word/Assembly1.png](GettingStarted_images/GettingStarted_img2.jpeg)


* Appearance and behavior related aspects of the smith chart can be controlled by setting the appropriate properties through the properties grid.

For example, the RadialAxis property can be changed as shown in the following screenshot.

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCache/Content.Word/RadialAxisProperties.png](GettingStarted_images/GettingStarted_img3.jpeg)


* The data for the smith chart can be added through the codes. To add data, switch to code view in VS.NET, and add the model data as shown in the following code snippet.

{% tabs %}

{% highlight c# %}

public class TransmissionData

{

public double Resistance { get; set; }

public double Reactance { get; set; }

}

public class SmithChartModel

{

public SmithChartModel()

{

Trace1 = new ObservableCollection<TransmissionData>();

Trace1.Add(new TransmissionData() { Resistance = 0, Reactance = 0.05 });

Trace1.Add(new TransmissionData() { Resistance = 0.3, Reactance = 0.1 });

Trace1.Add(new TransmissionData() { Resistance = 0.5, Reactance = 0.2 });

Trace1.Add(new TransmissionData() { Resistance = 1.0, Reactance = 0.4 });

Trace1.Add(new TransmissionData() { Resistance = 1.5, Reactance = 0.5 });

Trace1.Add(new TransmissionData() { Resistance = 2.0, Reactance = 0.5 });

Trace1.Add(new TransmissionData() { Resistance = 2.5, Reactance = 0.4 });

Trace1.Add(new TransmissionData() { Resistance = 3.5, Reactance = 0.0 });

Trace1.Add(new TransmissionData() { Resistance = 4.5, Reactance = -0.5 });

Trace1.Add(new TransmissionData() { Resistance = 5, Reactance = -1.0 });

Trace1.Add(new TransmissionData() { Resistance = 6, Reactance = -1.5 });

Trace1.Add(new TransmissionData() { Resistance = 7, Reactance = -2.5 });

Trace1.Add(new TransmissionData() { Resistance = 8, Reactance = -3.5 });

Trace1.Add(new TransmissionData() { Resistance = 9, Reactance = -4.5 });

Trace1.Add(new TransmissionData() { Resistance = 10, Reactance = -10 });

Trace1.Add(new TransmissionData() { Resistance = 20, Reactance = -50 });

Trace2 = new ObservableCollection<TransmissionData>();

Trace2.Add(new TransmissionData() { Resistance = 0, Reactance = 0.15 });

Trace2.Add(new TransmissionData() { Resistance = 0.3, Reactance = 0.2 });

Trace2.Add(new TransmissionData() { Resistance = 0.5, Reactance = 0.4 });

Trace2.Add(new TransmissionData() { Resistance = 1.0, Reactance = 0.8 });

Trace2.Add(new TransmissionData() { Resistance = 1.5, Reactance = 1.0 });

Trace2.Add(new TransmissionData() { Resistance = 2.0, Reactance = 1.2 });

Trace2.Add(new TransmissionData() { Resistance = 2.5, Reactance = 1.3 });

Trace2.Add(new TransmissionData() { Resistance = 3.5, Reactance = 1.6 });

Trace2.Add(new TransmissionData() { Resistance = 4.5, Reactance = 2.0 });

Trace2.Add(new TransmissionData() { Resistance = 6, Reactance = 4.5 });

Trace2.Add(new TransmissionData() { Resistance = 8, Reactance = 6 });

Trace2.Add(new TransmissionData() { Resistance = 10, Reactance = 25 });

}

public ObservableCollection<TransmissionData> Trace1 { get; set; }

public ObservableCollection<TransmissionData> Trace2 { get; set; }

}

{% endhighlight %}

{% highlight vb.net %}

Public Class TransmissionData
		Private privateResistance As Double
		Public Property Resistance() As Double
			Get
				Return privateResistance
			End Get
			Set(ByVal value As Double)
				privateResistance = value
			End Set
		End Property

		Private privateReactance As Double
		Public Property Reactance() As Double
			Get
				Return privateReactance
			End Get
			Set(ByVal value As Double)
				privateReactance = value
			End Set
		End Property
End Class

	Public Class SmithChartModel
		Public Sub New()
			Trace1 = New ObservableCollection(Of TransmissionData)()

			Trace1.Add(New TransmissionData() With {.Resistance = 0, .Reactance = 0.05})
			Trace1.Add(New TransmissionData() With {.Resistance = 0.3, .Reactance = 0.1})
			Trace1.Add(New TransmissionData() With {.Resistance = 0.5, .Reactance = 0.2})
			Trace1.Add(New TransmissionData() With {.Resistance = 1.0, .Reactance = 0.4})
			Trace1.Add(New TransmissionData() With {.Resistance = 1.5, .Reactance = 0.5})
			Trace1.Add(New TransmissionData() With {.Resistance = 2.0, .Reactance = 0.5})
			Trace1.Add(New TransmissionData() With {.Resistance = 2.5, .Reactance = 0.4})
			Trace1.Add(New TransmissionData() With {.Resistance = 3.5, .Reactance = 0.0})
			Trace1.Add(New TransmissionData() With {.Resistance = 4.5, .Reactance = -0.5})
			Trace1.Add(New TransmissionData() With {.Resistance = 5, .Reactance = -1.0})
			Trace1.Add(New TransmissionData() With {.Resistance = 6, .Reactance = -1.5})
			Trace1.Add(New TransmissionData() With {.Resistance = 7, .Reactance = -2.5})
			Trace1.Add(New TransmissionData() With {.Resistance = 8, .Reactance = -3.5})
			Trace1.Add(New TransmissionData() With {.Resistance = 9, .Reactance = -4.5})
			Trace1.Add(New TransmissionData() With {.Resistance = 10, .Reactance = -10})
			Trace1.Add(New TransmissionData() With {.Resistance = 20, .Reactance = -50})

			Trace2 = New ObservableCollection(Of TransmissionData)()

			Trace2.Add(New TransmissionData() With {.Resistance = 0, .Reactance = 0.15})
			Trace2.Add(New TransmissionData() With {.Resistance = 0.3, .Reactance = 0.2})
			Trace2.Add(New TransmissionData() With {.Resistance = 0.5, .Reactance = 0.4})
			Trace2.Add(New TransmissionData() With {.Resistance = 1.0, .Reactance = 0.8})
			Trace2.Add(New TransmissionData() With {.Resistance = 1.5, .Reactance = 1.0})
			Trace2.Add(New TransmissionData() With {.Resistance = 2.0, .Reactance = 1.2})
			Trace2.Add(New TransmissionData() With {.Resistance = 2.5, .Reactance = 1.3})
			Trace2.Add(New TransmissionData() With {.Resistance = 3.5, .Reactance = 1.6})
			Trace2.Add(New TransmissionData() With {.Resistance = 4.5, .Reactance = 2.0})
			Trace2.Add(New TransmissionData() With {.Resistance = 6, .Reactance = 4.5})
			Trace2.Add(New TransmissionData() With {.Resistance = 8, .Reactance = 6})
			Trace2.Add(New TransmissionData() With {.Resistance = 10, .Reactance = 25})
		End Sub

		Private privateTrace1 As ObservableCollection(Of TransmissionData)
		Public Property Trace1() As ObservableCollection(Of TransmissionData)
			Get
				Return privateTrace1
			End Get
			Set(ByVal value As ObservableCollection(Of TransmissionData))
				privateTrace1 = value
			End Set
		End Property
		Private privateTrace2 As ObservableCollection(Of TransmissionData)
		Public Property Trace2() As ObservableCollection(Of TransmissionData)
			Get
				Return privateTrace2
			End Get
			Set(ByVal value As ObservableCollection(Of TransmissionData))
				privateTrace2 = value
			End Set
		End Property
	End Class

{% endhighlight %}

{% endtabs %}


Add the series for smith chart with above data as shown in the following code.

{% tabs %}

{% highlight c# %}

public partial class Form1 : Form

{

SmithChartModel model = new SmithChartModel();

public Form1()

{

InitializeComponent();

LineSeries series = new LineSeries();

series.MarkerVisible = true;

series.LegendText = "Transmission1";

series.DataSource = model.Trace1;

series.ResistanceMember = "Resistance";

series.ReactanceMember = "Reactance";

series.TooltipVisible = true;

sfSmithChart1.Series.Add(series);

LineSeries series1 = new LineSeries();

series1.MarkerVisible = true;

series1.LegendText = "Transmission2";

series1.DataSource = model.Trace2;

series1.ResistanceMember = "Resistance";

series1.ReactanceMember = "Reactance";

series1.TooltipVisible = true;

sfSmithChart1.Series.Add(series1);

sfSmithChart1.Legend.Visible = true;

}

}

{% endhighlight %}

{% highlight vb.net %}

Partial Public Class Form1
	Inherits Form
		Private model As New SmithChartModel()
		Public Sub New()
			InitializeComponent()

			Dim series As New LineSeries()
			series.MarkerVisible = True
			series.LegendText = "Transmission1"
			series.DataSource = model.Trace1
			series.ResistanceMember = "Resistance"
			series.ReactanceMember = "Reactance"
			series.TooltipVisible = True
			sfSmithChart1.Series.Add(series)

			Dim series1 As New LineSeries()
			series1.MarkerVisible = True
			series1.LegendText = "Transmission2"
			series1.DataSource = model.Trace2
			series1.ResistanceMember = "Resistance"
			series1.ReactanceMember = "Reactance"
			series1.TooltipVisible = True
			sfSmithChart1.Series.Add(series1)
			sfSmithChart1.Legend.Visible = True

		End Sub
End Class

{% endhighlight %}

{% endtabs %}


Now, run the application to get the following output.

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCache/Content.Word/GettingStarted.png](GettingStarted_images/GettingStarted_img4.jpeg)


## Creating a simple smith chart through code

### Initialize the smith chart

{% tabs %}

{% highlight c# %}

SfSmithChart chart = new SfSmithChart();

chart.Dock = DockStyle.Fill;

this.Controls.Add(chart);

{% endhighlight %}

{% highlight vb.net %}

chart.Text = "Impedance Transmission"
			chart.BackColor = Color.White
			chart.HorizontalAxis.MinorGridlinesVisible = True
			chart.RadialAxis.MinorGridlinesVisible = True
			
			{% endhighlight %}


{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCache/Content.Word/Chart.png](GettingStarted_images/GettingStarted_img5.jpeg)


### Adding header and axis customization to smith chart

{% tabs %}

{% highlight c# %}

chart.Text = "Impedance Transmission";

chart.BackColor = Color.White;

chart.HorizontalAxis.MinorGridlinesVisible = true;

chart.RadialAxis.MinorGridlinesVisible = true;

{% endhighlight %}

{% highlight vb.net %}

Dim chart As New SfSmithChart()
chart.Dock = DockStyle.Fill
Me.Controls.Add(chart)
			
{% endhighlight %}

{% endtabs %}


![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCache/Content.Word/Axis.png](GettingStarted_images/GettingStarted_img6.jpeg)


### Adding series

You can plot a line on smith chart by adding line series.

Initialize the series for representing the data.

{% tabs %}

{% highlight c# %}

LineSeries series = new LineSeries();

{% endhighlight %}

{% highlight vb.net %}

Dim series As New LineSeries()

{% endhighlight %}

{% endtabs %}

Also, add the DataSource, ResistanceMember, and ReactanceMember properties to populate the data in smith chart.

{% tabs %}

{% highlight c# %}

LineSeries series = new LineSeries();

series.MarkerVisible = true;

series.LegendText = "Transmission1";

series.DataSource = model.Trace1;

series.ResistanceMember = "Resistance";

series.ReactanceMember = "Reactance";

series.TooltipVisible = true;

chart.Series.Add(series);

{% endhighlight %}

{% highlight vb.net %}

Dim series As New LineSeries()
			series.MarkerVisible = True
			series.LegendText = "Transmission1"
			series.DataSource = model.Trace1
			series.ResistanceMember = "Resistance"
			series.ReactanceMember = "Reactance"
			series.TooltipVisible = True
			chart.Series.Add(series)
			
{% endhighlight %}

{% endtabs %}


* [DataSource](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_DataSource)—Used to hold the data source. The data source or data collection can be bound with DataSource.
* [ResistanceMember](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_ResistanceMember)—It is a string property that needs to be bound with resistance axis (or HorizontalAxis). 
* [ReactanceMember](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_ReactanceMember) - It is a string property that needs to be bound with reactance axis (Or RadialAxis).
* [LegendText](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_LegendText)—This property is mapped to the legend label.

### Adding legends to the chart

Legends can be made visible by using the following code.

{% tabs %}

{% highlight c# %}

chart.Legend.Visible = true;

{% endhighlight %}

{% highlight vb.net %}

chart.Legend.Visible = True

{% endhighlight %}

{% endtabs %}

The following code example demonstrates the complete code for creating a smith chart.

{% tabs %}

{% highlight c# %}

SfSmithChart chart = new SfSmithChart();

chart.Text = "Impedance Transmission";

chart.BackColor = Color.White;

chart.HorizontalAxis.MinorGridlinesVisible = true;

chart.RadialAxis.MinorGridlinesVisible = true;

LineSeries series = new LineSeries();

series.MarkerVisible = true;

series.LegendText = "Transmission1";

series.DataSource = model.Trace1;

series.ResistanceMember = "Resistance";

series.ReactanceMember = "Reactance";

series.TooltipVisible = true;

chart.Series.Add(series);

chart.Legend.Visible = true;

chart.Dock = DockStyle.Fill;

this.Controls.Add(chart);

{% endhighlight %}

{% highlight vb.net %}

Dim chart As New SfSmithChart()
			chart.Text = "Impedance Transmission"
			chart.BackColor = Color.White
			chart.HorizontalAxis.MinorGridlinesVisible = True
			chart.RadialAxis.MinorGridlinesVisible = True

			Dim series As New LineSeries()
			series.MarkerVisible = True
			series.LegendText = "Transmission1"
			series.DataSource = model.Trace1
			series.ResistanceMember = "Resistance"
			series.ReactanceMember = "Reactance"
			series.TooltipVisible = True
			chart.Series.Add(series)

			chart.Legend.Visible = True
			chart.Dock = DockStyle.Fill
			Me.Controls.Add(chart)
			
			{% endhighlight %}
			
			{% endtabs %}


![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCache/Content.Word/Axis.png](GettingStarted_images/GettingStarted_img7.jpeg)

