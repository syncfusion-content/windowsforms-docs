---
layout: post
title: Worksheet Management
description: How to perform worksheet related operations(insert, delete, hide, etc.) in Spreadsheet
platform: windowsforms
control: Spreadsheet
documentation: ug
---

# Worksheet Management
 This section explains about the operations that are performed with the worksheet.

## Insert and Delete

Spreadsheet provides support to insert and delete the worksheets in a workbook.

{% tabs %}
{% highlight c# %}

//Insert Sheet

 spreadsheet.AddSheet();
	
//Insert sheet with name

 spreadsheet.AddSheet("Sheet4", 3);

//Delete Sheet

 spreadsheet.RemoveSheet("Sheet2");

{% endhighlight %}
{% endtabs %}


## Hide and Unhide

Spreadsheet provides support to hide and unhide the worksheets in a workbook.

{% tabs %}
{% highlight c# %}

//Hide Sheet

 spreadsheet.HideSheet("Sheet 2");

//Unhide Sheet

 spreadsheet.UnhideSheet("Sheet 2");

{% endhighlight %}
{% endtabs %}


## Gridlines

Spreadsheet provides support to control the visibility and color of the Gridlines in a worksheet.

{% tabs %}
{% highlight c# %}

//To show GridLines

spreadsheet.SetGridLinesVisibility(true);

//To hide GridLines

spreadsheet.SetGridLinesVisibility(false);

{% endhighlight %}
{% endtabs %}


## Headings

Spreadsheet provides support to control the visibility of row and column headers in a worksheet

{% tabs %}
{% highlight c# %}

//To hide the Header cells visibility

spreadsheet.SetRowColumnHeadersVisibility(false);

{% endhighlight %}
{% endtabs %}


## Zooming

Spreadsheet provides support to zoom in and zoom out of a worksheet view. The property `AllowZooming` determines whether to allow zooming or not.

{% tabs %}
{% highlight c# %}

//zoomfactor
 spreadsheet.SetZoomFactor("Sheet1", 200);

{% endhighlight %}
{% endtabs %}

The Events associated with the Zooming are 

. `ZoomFactorChanged`  - Occurs when the zoom factor in Spreadsheet is changed.
. `ZoomFactorChanging` - Occurs when the zoom factor in Spreadsheet is going to be changed.


## Protection

### Workbook Protection

Spreadsheet provides support to protect the structure and windows of a workbook. By protecting the structure, prevent a user from adding or deleting worksheets or from displaying hidden worksheets. By protecting the windows in the workbook, you can control the size of the workbook, etc.

{% tabs %}
{% highlight c# %}

// To Protect the Workbook 

spreadsheet.Protect(true, true, "123");

//To Unprotect the Workbook

spreadsheet.Unprotect("123");

{% endhighlight %}
{% endtabs %}

### Worksheet Protection

Spreadsheet provides support to protect the worksheet with or without password. This helps to prevent a user from modifying the contents of the worksheet. The protection of worksheet can be done with protection options also.

{% tabs %}
{% highlight c# %}

//Protect the sheet with password

spreadsheet.ProtectSheet(spreadsheet.ActiveSheet, "123");

//Protect the sheet with Protection options

spreadsheet.ProtectSheet(spreadsheet.ActiveSheet, "123", ExcelSheetProtection.All);

//Unprotect the sheet

spreadsheet.UnProtectSheet(spreadsheet.ActiveSheet, "123");

{% endhighlight %}
{% endtabs %}

