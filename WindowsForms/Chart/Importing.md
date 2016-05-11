---
layout: post
title: Importing | Windows Forms | Syncfusion
description: importing
platform: windowsforms
control: Chart
documentation: ug
---

# Importing

The Chart provides a simple API to let you populate it with any kind of data, provided, you bring that data from the data store at the runtime. You can then either populate the chart with that data, or bind the chart to the DataTable or DataSet, in which the data is contained. See ChartData for more information on Data Binding.

In this section, we will illustrate how the data from certain data stores can be brought to the runtime and bound to the chart. In a way this deals more with extracting data from the mentioned data stores than any support in Chart for binding to such data stores.

## Importing a CSV file 

There is no built-in support in Chart for importing data from CSV (Comma Separated Values) files. But this can be easily accomplished by using the "Microsoft.Jet.OLEDB.4.0" to first convert it into a DataSet and then bind it to the chart. This is illustrated in this sample that is distributed with the installation:



![](Importing_images/Importing_img1.jpeg)


### Sample Location:

..\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Chart.Windows\Samples\2.0\Import\Data from CSV

## Import Data from XML to a Chart

There is no built-in support in Chart for importing data from an XML file. But given a corresponding XSLT file, the XML data can be converted into a DataSet, which can then be bound to the chart easily. This is illustrated in this sample that is distributed with the installation:



![](Importing_images/Importing_img2.jpeg)


### Sample Location

Windows Forms - My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Chart.Windows\Samples\2.0\Import\Data from XML



## Import Data from Excel to Chart

There is no built-in support in Chart for importing data from XLS (MS Excel) files. But this can be easily accomplished by using the "Microsoft.Jet.OLEDB.4.0" to first convert it into a DataSet and then bind it to the chart. This is illustrated in this sample that is distributed with the installation:



![](Importing_images/Importing_img3.jpeg)




### Sample Location

My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Chart.Windows\Samples\2.0\Import\Data from Excel

