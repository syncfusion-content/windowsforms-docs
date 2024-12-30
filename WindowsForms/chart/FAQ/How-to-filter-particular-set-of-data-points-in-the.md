---
layout: post
title: How-to-filter-particular-set-of-data-points-in-the | Windows Forms | Syncfusion®
description: how to filter particular set of data points in the chart series
platform: windowsforms
control: chart
documentation: ug
---

# How to filter particular set of data points in the Chart Series

Data is filtered on a series-by-series basis. When series data points are filtered, they can be either removed from the Series Points collection or marked as Empty.

Also, you can reflect changes in data by filtering a particular set of data points using the Grouping Engine. While using the grouping engine, the main data source for the whole engine can be set. The TableDescriptor will pick up the ItemProperties from the SourceList, and table will be initialized at run time with records from the list. Using the RecordFilterDescriptor class, you can filter the chart point values by comparing it against a given constant value. The filtered points will be added to the series.

{% tabs %}

{% highlight c# %}

// Generating Series

ChartSeries series =this.chartControl1 .Model.NewSeries ("Filter Series",ChartSeriesType.Column );

series.Text=series.Name;

list.Clear();

for(int i=0;i<10;i++)

{

a[i]=r.Next(300,500);

series.Points.Add(i,a[i]);

list.Add(new Data(i, a[i]));

}

this.chartControl1.Series.Add(series);

// Bind it to the model

Engine group=new Engine();

group.SetSourceList (list);

ExpressionFieldDescriptor exp = new ExpressionFieldDescriptor();

exp.Expression = "[Y] > "+this.textBox1.Text.ToString();

RecordFilterDescriptor record = new RecordFilterDescriptor(exp.Expression);

group.TableDescriptor.RecordFilters.Add (record);

System.Diagnostics.Trace.WriteLine("Filtered Record Count:" + group.Table.FilteredRecords.Count);

System.Diagnostics.Trace.WriteLine("Values greater than 30:");

// Filtering Data

this.chartControl1.Series[0].Points.Clear();

int j = 0;

foreach(Record rec in group.Table.FilteredRecords)

{

string b=rec.GetData().ToString();

System.Diagnostics.Trace.WriteLine(b);

this.chartControl1.Series[0].Points.Add(j,Convert.ToDouble(b));

j++;

}

this.label2.Text = "Number of Filtered points: "+group.Table.FilteredRecords.Count.ToString();

{% endhighlight %}

{% highlight vb %}

' Generating Series

Dim series As New ChartSeries("Filter Series", ChartSeriesType.Column)

series.Text=series.Name

list.Clear()

For i As Integer = 0 To 9

a(i)=r.Next(300,500)

series.Points.Add(i,a(i))

list.Add(New Data(i, a(i)))

Next i

Me.chartControl1.Series.Add(series)

' Bind it to the model

Dim group As Engine = New Engine()

group.SetSourceList (list)

Dim exp As ExpressionFieldDescriptor = New ExpressionFieldDescriptor()

exp.Expression = "[Y] > " & Me.textBox1.Text.ToString()

Dim record As RecordFilterDescriptor = New RecordFilterDescriptor(exp.Expression)

group.TableDescriptor.RecordFilters.Add (record)

System.Diagnostics.Trace.WriteLine("Filtered Record Count:" & group.Table.FilteredRecords.Count)

System.Diagnostics.Trace.WriteLine("Values greater than 30:")

' Filtering Data

Me.chartControl1.Series(0).Points.Clear()

Dim j As Integer = 0

For Each rec As Record In group.Table.FilteredRecords

Dim b As String = rec.GetData().ToString()

System.Diagnostics.Trace.WriteLine(b)

Me.chartControl1.Series(0).Points.Add(j,Convert.ToDouble(b))

j += 1

Next rec

Me.label2.Text = "Number of Filtered points: " & group.Table.FilteredRecords.Count.ToString()

{% endhighlight %}

{% endtabs %}

