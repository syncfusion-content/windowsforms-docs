---
layout: post
title: Exporting in GridControl
description: how to export cellcommenttips to excel using gridexcelconvertercontrol
platform: windowsforms
control: Grid
documentation: ug
---

# How to export CellCommentTips to Excel using GridExcelConverterControl

You can achieve this by handling QueryImportExportCellInfo event handler. In the event, check GridExcelTipStyleProperties for ExcelTip properties and accordingly add the comment to the IRange.

{% tabs %}
{% highlight c# %}

Syncfusion.GridExcelConverter.GridExcelConverterControl gecc = new Syncfusion.GridExcelConverter.GridExcelConverterControl();
gecc.QueryImportExportCellInfo += new Syncfusion.GridExcelConverter.GridImportExportCellInfoEventHandler(gecc_QueryImportExportCellInfo);

void gecc_QueryImportExportCellInfo(object sender, Syncfusion.GridExcelConverter.GridImportExportCellInfoEventArgs e)
{
ExcelTip.GridExcelTipStyleProperties style = new ExcelTip.GridExcelTipStyleProperties(e.GridCell);
if (style.HasExcelTipText)
e.ExcelCell.AddComment().Text = style.ExcelTipText;
}

{% endhighlight %}

{% highlight vb %}

Dim gecc As New Syncfusion.GridExcelConverter.GridExcelConverterControl()
AddHandler gecc.QueryImportExportCellInfo, AddressOf gecc_QueryImportExportCellInfo

Private Sub gecc_QueryImportExportCellInfo(ByVal sender As Object, ByVal e As Syncfusion.GridExcelConverter.GridImportExportCellInfoEventArgs)
Dim style As New ExcelTipDLL.GridExcelTipStyleProperties(e.GridCell)
If style.HasExcelTipText Then
e.ExcelCell.AddComment().Text = style.ExcelTipText
End If
End Sub 'gecc_QueryImportExportCellInfo

{% endhighlight %}
{% endtabs %}