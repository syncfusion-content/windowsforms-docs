---
layout: post
title: Data Virtualization in Windows Forms DataGrid control | Syncfusion
description: Learn about Data Virtualization support in Syncfusion Windows Forms DataGrid (SfDataGrid) control, its elements, and more.
platform: windowsforms
control: SfDataGrid
documentation: ug
---

# Data Virtualization in Windows Forms DataGrid (SfDataGrid)
SfDataGrid provides support to handle the large amount of data through built-in virtualization features. With Data virtualization, [SfDataGrid.View](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_View) process the data in on-demand for better performance while loading large amount of data.
The large amount of data can be loaded in less time by setting [SfDataGrid.EnableDataVirtualization](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_EnableDataVirtualization) property to `true`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.EnableDataVirtualization = true;
{% endhighlight %}
{% highlight vb %}
Me.sfDataGrid1.EnableDataVirtualization = True
{% endhighlight %}
{% endtabs %}

### Limitations
1. Data update using [LiveDataUpdateMode](http://172.16.0.145:8093/Syncfusion.DataGrid.WinForms/api/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_LiveDataUpdateMode) is not supported.
