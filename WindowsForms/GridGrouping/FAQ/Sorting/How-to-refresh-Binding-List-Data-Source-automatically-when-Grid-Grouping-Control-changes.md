---
layout: post
title: Refresh Data Source in WinForms GridGroupingControl | Syncfusion®
description: Refresh the Binding List data source automatically in Syncfusion® WinForms GridGroupingControl, its TableDirty property, data updates, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Refresh Binding List DataSource in WinForms GridGroupingControl

To refresh binding list data source automatically when GridGroupingControl changes, you need to set TableDirty property to _‘__True’_ in GridGroupingControl. Doing this invalidates Grid Table to its current changes. Refreshing Data Source takes place only while using the data source as Binding List. The following code sample shows how to refresh Binding List Data Source when GridGroupingControl changes.

{% tabs %}
{% highlight c# %}

this.Grid.Table.TableDirty = ‘_True’_

{% endhighlight %}

{% highlight vbnet %}

this.Grid.Table.TableDirty = _‘True’_
  
{% endhighlight %}
{% endtabs %} 

Sample: [http://www.syncfusion.com/downloads/support/directtrac/118685/GridDeleteTest-1197463268.zip](http://www.syncfusion.com/downloads/support/directtrac/118685/GridDeleteTest-1197463268.zip)

