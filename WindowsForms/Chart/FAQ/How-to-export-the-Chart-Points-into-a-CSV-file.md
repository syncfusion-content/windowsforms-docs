---
layout: post
title: How-to-export-the-Chart-Points-into-a-CSV-file | Windows Forms | Syncfusion
description: how to export the chart points into a csv file
platform: windowsforms
control: chart
documentation: ug
---

# How to export the Chart Points into a CSV file

Creating a CSV (comma separated values) of the chart points simply involves parsing through the chart series and writing out the chart points into the FileStream. The code for this is provided below for your convenience.



 {% highlight c# %}



foreach(ChartSeries series in this.chartControl1.Series)

{

     string seriesName = series.Name;

     int pointCount = series.Points.Count;

     string seriesType = series.Type.ToString();



     for(int p =0; p < pointCount; p++)

     {

         ChartPoint point = series.Points[p];



         string yvaluescsv = String.Empty;

         int count = point.YValues.Length;

         for(int i = 0; i < count ; i++)

         {

              yvaluescsv += point.YValues[i];

              if(i != count-1)

              yvaluescsv += comma;

         }

         csvLine = seriesName + "-" + seriesType + comma + point.X + comma + yvaluescsv;

         csvContent += csvLine + "\r\n";

     }

}



// Using stream writer class the chart points are exported. Create an instance of the stream writer class.

System.IO.StreamWriter file = new System.IO.StreamWriter(fileName);



// Write the datapoints into the file.

file.WriteLine(csvContent);

file.Close();

{% endhighlight %}

{% highlight vbnet %}



For Each series In Me.chartControl1.Series

     Dim seriesName As String = series.Name

     Dim pointCount As Integer = series.Points.Count

     Dim seriesType As String = series.Type.ToString()

     Dim p As Integer

     For p = 0 To pointCount - 1

         Dim point As ChartPoint = series.Points(p)

         Dim yvaluescsv As String = String.Empty

         Dim count As Integer = point.YValues.Length

         Dim i As Integer

         For i = 0 To count - 1

            yvaluescsv += point.YValues(i).ToString()

            If i &lt;&gt; count - 1 Then

            yvaluescsv += comma

            End If

         Next i

         csvLine = seriesName + "-" + seriesType + comma + point.X.ToString() + comma + yvaluescsv

         csvContent += csvLine + vbCr + vbLf

Next p

Next series



' Using stream write class the chart points are exported. Create an instance of the stream writer class.

Dim file As New System.IO.StreamWriter(fileName)



' Write the datapoints into the file.

file.WriteLine(csvContent)

file.Close()

{% endhighlight %}

