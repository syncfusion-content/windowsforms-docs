---
layout: post
title: How to export chart points to CSV in Windows Forms Chart | Syncfusion®
description: Learn how to export chart series data points to a CSV file in a Windows Forms Chart for data storage and further analysis.
platform: windowsforms
control: chart
documentation: ug
---

# How to export chart points to CSV in Windows Forms Chart

Creating a CSV (comma separated values) of the chart points simply involves parsing through the chart series and writing out the chart points into the FileStream. The code for this is provided below for your convenience.

{% tabs %}

{% highlight c# %}

private Syncfusion.Windows.Forms.Chart.ChartControl chartControl1;  
private string csvLine;   
private string csvContent;

foreach(ChartSeries series in this.chartControl1.Series)
{
     string seriesName = series.Name;
     int pointCount = series.Points.Count;
     string seriesType = series.Type.ToString();

     for(int p =0; p < pointCount; p++)
     {
         ChartPoint point = series.Points[p];
         string yValuesCSV = String.Empty;
         int count = point.YValues.Length;
         for(int i = 0; i < count ; i++)
         {
              yValuesCSV += point.YValues[i];

              if(i != count-1)
              yValuesCSV += comma;
         }

         csvLine = seriesName + "-" + seriesType + comma + point.X + comma + yValuesCSV;
         csvContent += csvLine + "\r\n";
     }
}

// Using stream writer class the chart points are exported. Create an instance of the stream writer class.
System.IO.StreamWriter file = new System.IO.StreamWriter("Chartdata.csv");

// Write the datapoints into the file.
file.WriteLine(csvContent);

file.Close();

{% endhighlight %}

{% highlight vb %}

For Each series In Me.chartControl1.Series

     Dim seriesName As String = series.Name

     Dim pointCount As Integer = series.Points.Count

     Dim seriesType As String = series.Type.ToString()

     Dim p As Integer

     For p = 0 To pointCount - 1

         Dim point As ChartPoint = series.Points(p)

         Dim yValuesCSV As String = String.Empty

         Dim count As Integer = point.YValues.Length

         Dim i As Integer

         For i = 0 To count - 1

            yValuesCSV += point.YValues(i).ToString()

            If i &lt;&gt; count - 1 Then

            yValuesCSV += comma

            End If

         Next i

         csvLine = seriesName + "-" + seriesType + comma + point.X.ToString() + comma + yValuesCSV

         csvContent += csvLine + vbCr + vbLf

Next p

Next series

' Using stream write class the chart points are exported. Create an instance of the stream writer class.

Dim file As New System.IO.StreamWriter("Chartdata.csv")

' Write the datapoints into the file.

file.WriteLine(csvContent)

file.Close()

{% endhighlight %}

{% endtabs %}

You can find the complete CSV file sample from this [link](https://github.com/SyncfusionExamples/How-to-export-the-WF-Charts-points-into-a-CSV-file).
