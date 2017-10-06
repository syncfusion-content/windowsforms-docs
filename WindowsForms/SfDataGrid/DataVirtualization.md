---
layout: post
title: Data virtualization for Syncfusion Essential WindowsForms
description: This section provides the information about data virtualization in GridGroupingControl.
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Data Virtualization
[SfDataGrid](http://172.16.0.145:8093/Syncfusion.DataGrid.WinForms/api/Syncfusion.WinForms.DataGrid.SfDataGrid.html) provides support to handle the large amount of data through built-in virtualization features. With Data virtualization, [SfDataGrid.View](http://172.16.0.145:8093/Syncfusion.DataGrid.WinForms/api/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_View) process the data in on-demand for better performance while loading large amount of data.
You can load large amount of data in less time by setting [SfDataGrid.EnableDataVirtualization](http://172.16.0.145:8093/Syncfusion.DataGrid.WinForms/api/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_EnableDataVirtualization) property to `true`.

{% tabs %}
{% highlight c# %}
this.sfDataGrid1.EnableDataVirtualization = true;
{% endhighlight %}
{% endtabs %}

## VirtualizingCollectionView
You can load the large amount of data in less time in another way using [GridVirtualizingCollectionView](http://172.16.0.145:8093/Syncfusion.DataGrid.WinForms/api/Syncfusion.WinForms.DataGrid.GridVirtualizingCollectionView.html) which is derived from [VirtualizingCollectionView](http://172.16.0.145:8099/Syncfusion.Data.WinForms_2015/api/Syncfusion.Data.VirtualizingCollectionView.html) to [SfDataGrid.DataSource](http://172.16.0.145:8093/Syncfusion.DataGrid.WinForms/api/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_DataSource).
In the below code, `DataSource` is defined with `GridVirtualizingCollectionView` by passing complete records collection and bound to `SfDataGrid`.

{% tabs %}
{% highlight c# %}
OrderInfoCollection orderInfoCollection = new OrderInfoCollection();
GridVirtualizingCollectionView gridVirtualizingCollectionView = new GridVirtualizingCollectionView(orderInfoCollection.OrdersListDetails);
this.sfDataGrid1.DataSource = gridVirtualizingCollectionView;
{% endhighlight %}
{% endtabs %}

### Limitations
1. Data update using [LiveDataUpdateMode](http://172.16.0.145:8093/Syncfusion.DataGrid.WinForms/api/Syncfusion.WinForms.DataGrid.SfDataGrid.html#Syncfusion_WinForms_DataGrid_SfDataGrid_LiveDataUpdateMode) is not supported.
