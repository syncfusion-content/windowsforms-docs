---
layout: post
title: Grid Content to Excel in Windows Forms GridControl | Syncfusion®
description: Convert the contents of Syncfusion® Windows Forms GridControl to Excel using the GridExcelConverter class and export grid data to Excel files and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Convert the Contents to Excel in Windows Forms GridControl

The Contents of GridControl and GridDataBoundGrid can be transferred to Excel by using GridToExcel method of GridExcelConverter class. Here is the code snippet.

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

