---
layout: post
title: Disable Sort on Add Record in WinForms GridDataBoundGrid | Syncfusion®
description: Disable automatic sorting when records are added in Syncfusion® WinForms GridDataBoundGrid by implementing custom sorting logic using wrapper classes.
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# Disable Sorting While Adding Records in WinForms GridDataBoundGrid

This page explains How to Disable Sorting while Record Added and more details.

## How to Disable Sorting while Record Added

When GridDataBoundGrid’s data source is BindingList, you can perform sorting only using WrapperClasses. In the following example CellClick event is used to customize sorting with WrapperClasses:

{% tabs %}
{% highlight c# %}

void gridDataBoundGrid1_CellClick(object sender, GridCellClickEventArgs e)
{
    if (e.RowIndex == 0 && e.ColIndex > 0)
    {
        int filed = this.gridDataBoundGrid1.Binder.ColIndexToField(e.ColIndex);
        string name = this.gridDataBoundGrid1.Binder.InternalColumns[filed].MappingName;
        WrapperClass wrapper = this.gridDataBoundGrid1.DataSource as WrapperClass;
        wrapper.Sort(name, true);
        e.Cancel = true;
        this.gridDataBoundGrid1.Refresh();
    }   
}

{% endhighlight %}

{% highlight vb %}

Private Sub gridDataBoundGrid1_CellClick(ByVal sender As Object, ByVal e As GridCellClickEventArgs)
If e.RowIndex = 0 AndAlso e.ColIndex > 0 Then
Dim filed As Integer = Me.gridDataBoundGrid1.Binder.ColIndexToField(e.ColIndex)
Dim name As String = Me.gridDataBoundGrid1.Binder.InternalColumns(filed).MappingName
Dim wrapper As WrapperClass = TryCast(Me.gridDataBoundGrid1.DataSource, WrapperClass)
wrapper.Sort(name, True)
e.Cancel = True
Me.gridDataBoundGrid1.Refresh()
End If
End Sub
{% endhighlight %}
{% endtabs %}
