---
layout: post
title: What-are-the-events-fired-when-the-records-are-sel | Windows Forms | Syncfusion
description: what are the events fired when the records are selected
platform: windowsforms
control: GridGrouping
documentation: ug
---

# What are the Events Fired when the Records are Selected

There are two type of selection architectures in a Grid Grouping control. One is designed specifically for Grid Grouping control referred as Record-Based Selection and the other is inherited from GridControlBase named as Model-Based Selection. Depending on the selection type, specific events are triggered:

## Model Based Selection:

When you set the [ListBoxSelectionMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableOptionsStyleInfo.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableOptionsStyleInfo_ListBoxSelectionMode) property to **None** and the [AllowSelection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridTableOptionsStyleInfo.html#Syncfusion_Windows_Forms_Grid_Grouping_GridTableOptionsStyleInfo_AllowSelection) property to a value other than **None** in the GridGroupingControl, the model-based selection is used. The [TableModel.SelectionChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html#Syncfusion_Windows_Forms_Grid_GridModel_SelectionChanging) and [TableModel.SelectionChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html#Syncfusion_Windows_Forms_Grid_GridModel_SelectionChanged) events will only trigger when using the model-based selection.

{% tabs %}
{% highlight c# %}

//Events subscription for Model based selection in GridGroupingControl
this.gridGroupingControl1.TableModel.SelectionChanging += OnSelectionChanging;
this.gridGroupingControl1.TableModel.SelectionChanged += OnSelectionChanged;

//Event customization
private void OnSelectionChanging(object sender, GridSelectionChangingEventArgs e)
{
    //Here cutomize based on your scenario
	Console.WriteLine("Event triggered for Model based selection");
}

//Event customization
private void OnSelectionChanged(object sender, GridSelectionChangedEventArgs e)
{
    //Here cutomize based on your scenario
	Console.WriteLine("Event triggered for Model based selection");
}

{% endhighlight %}

{% highlight vb %}

'Events subscription for Model based selection in GridGroupingControl
AddHandler Me.gridGroupingControl1.TableModel.SelectionChanging, AddressOf OnSelectionChanging
AddHandler Me.gridGroupingControl1.TableModel.SelectionChanged, AddressOf OnSelectionChanged

'Event customization
Private Sub OnSelectionChanging(ByVal sender As Object, ByVal e As GridSelectionChangingEventArgs)
   'Here cutomize based on your scenario
   Console.WriteLine("Event triggered for Model based selection")
End Sub

'Event customization
Private Sub OnSelectionChanged(ByVal sender As Object, ByVal e As GridSelectionChangedEventArgs)
   'Here cutomize based on your scenario
   Console.WriteLine("Event triggered for Model based selection")
End Sub

{% endhighlight %}
{% endtabs %}


## Record Based Selection:

When you set the `ListBoxSelectionMode` property to a value other than `None` and the `AllowSelection` property to `None` in the GridGroupingControl, a record-based selection is used. The [SelectedRecordsChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_SelectedRecordsChanging) and [SelectedRecordsChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_SelectedRecordsChanged) events are only triggered when using the record-based selection.


{% tabs %}
{% highlight c# %}

//Events subscription for Record based selection in GridGroupingControl
this.gridGroupingControl1.SelectedRecordsChanging += OnSelectedRecordsChanging;
this.gridGroupingControl1.SelectedRecordsChanged += OnSelectedRecordsChanged;

//Event customization
private void OnSelectedRecordsChanging(object sender, SelectedRecordsChangedEventArgs e)
{
    //Here cutomize based on your scenario
    Console.WriteLine("Event triggered for Record based selection");
}

//Event customization
private void OnSelectedRecordsChanged(object sender, SelectedRecordsChangedEventArgs e)
{
    //Here cutomize based on your scenario
    Console.WriteLine("Event triggered for Record based selection");
} 

{% endhighlight %}

{% highlight vb %}

'Events subscription for Record based selection in GridGroupingControl
AddHandler Me.gridGroupingControl1.SelectedRecordsChanging, AddressOf OnSelectedRecordsChanging
AddHandler Me.gridGroupingControl1.SelectedRecordsChanged, AddressOf OnSelectedRecordsChanged

'Event customization
Private Sub OnSelectedRecordsChanging(ByVal sender As Object, ByVal e As SelectedRecordsChangedEventArgs)
	'Here cutomize based on your scenario
	Console.WriteLine("Event triggered for Record based selection")
End Sub

'Event customization
Private Sub OnSelectedRecordsChanged(ByVal sender As Object, ByVal e As SelectedRecordsChangedEventArgs)
	'Here cutomize based on your scenario
	Console.WriteLine("Event triggered for Record based selection")
End Sub

{% endhighlight %}
{% endtabs %}

[View Sample in GitHub](https://github.com/SyncfusionExamples/What-are-the-Events-Fired-when-the-Records-are-Selected)