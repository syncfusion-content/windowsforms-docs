---
layout: post
title: Convert Grid to Excel in Windows Forms Grid Control | Syncfusion®
description: Convert Grid Control or GridDataBoundGrid content to Excel in Syncfusion® Windows Forms Grid Control using the GridExcelConverter class and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Convert Grid Content to Excel in Windows Forms Grid Control

The Contents of Grid Control and GridDataBoundGrid can be transferred to Excel by using GridToExcel method of GridExcelConverter class. Here is the code snippet.

{% tabs %}
{% highlight c# %}

Syncfusion.GridExcelConverter.GridExcelConverterControl excelConverter = new Syncfusion.GridExcelConverter.GridExcelConverterControl();
excelConverter.GridToExcel(this.gridControl1.Model,@"C:\MyGC.xls");

{% endhighlight %}

{% highlight vb %}

Dim excelConverter As New Syncfusion.GridExcelConverter.GridExcelConverterControl
excelConverter.GridToExcel(Me.gridControl1.Model, "C:\MyGC.xls")

{% endhighlight %}
{% endtabs %}

The following assembly files should be added along with the default assembly files in the reference folder: Syncfusion.GridConverter.Base and Syncfusion.XlsIO.Base.

