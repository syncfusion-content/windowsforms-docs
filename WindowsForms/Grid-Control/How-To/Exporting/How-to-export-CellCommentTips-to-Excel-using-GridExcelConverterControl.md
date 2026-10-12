---
layout: post
title: Export CellComment to Excel in WinForms Grid Control | Syncfusion®
description: Export CellCommentTips to Excel in Syncfusion® Windows Forms Grid Control using GridExcelConverterControl and the QueryImportExportCellInfo event and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Export CellCommentTips to Excel in Windows Forms Grid Control

You can achieve this by handling QueryImportExportCellInfo event handler. In the event, check GridExcelTipStyleProperties for ExcelTip properties and accordingly add the comment to the IRange.

{% tabs %}
{% highlight c# %}

Syncfusion.GridExcelConverter.GridExcelConverterControl excelConverter = new Syncfusion.GridExcelConverter.GridExcelConverterControl();
excelConverter.QueryImportExportCellInfo += new Syncfusion.GridExcelConverter.GridImportExportCellInfoEventHandler(excelConverter_QueryImportExportCellInfo);

void excelConverter_QueryImportExportCellInfo(object sender, Syncfusion.GridExcelConverter.GridImportExportCellInfoEventArgs e)
{
    ExcelTip.GridExcelTipStyleProperties style = new ExcelTip.GridExcelTipStyleProperties(e.GridCell);
    
    if (style.HasExcelTipText)
    e.ExcelCell.AddComment().Text = style.ExcelTipText;
}

{% endhighlight %}

{% highlight vb %}

Dim excelConverter As New Syncfusion.GridExcelConverter.GridExcelConverterControl()
AddHandler excelConverter.QueryImportExportCellInfo, AddressOf excelConverter_QueryImportExportCellInfo

Private Sub excelConverter_QueryImportExportCellInfo(ByVal sender As Object, ByVal e As Syncfusion.GridExcelConverter.GridImportExportCellInfoEventArgs)
Dim style As New ExcelTipDLL.GridExcelTipStyleProperties(e.GridCell)
If style.HasExcelTipText Then
e.ExcelCell.AddComment().Text = style.ExcelTipText
End If
End Sub 'excelConverter_QueryImportExportCellInfo

{% endhighlight %}
{% endtabs %}