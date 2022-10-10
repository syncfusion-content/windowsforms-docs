---
layout: post
title: How-to-perform-Custom-Sorting-in-GridGroupingContr | Windows Forms | Syncfusion
description: how to perform custom sorting in gridgroupingcontrol
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Perform Custom Sorting in GridGroupingControl

To use custom sorting in GridGroupingControl, you need to disable default sorting using the TableControlQueryAllowSortColumn and the TableControlCellClick events. 

The following are the steps to disable default sorting and use custom sorting:

1. Set AllowSort property of TableControlQueryAllowSortColumn event to false to disable default sorting. The following code illustrates this:
{% capture codesnippet1 %}
{% tabs %}
{% highlight c# %}

void gridGroupingControl1_TableControlQueryAllowSortColumn(object sender, GridQueryAllowSortColumnEventArgs e)
{
    if (checkBox1.Checked && e.Column.Name== "Source")
        e.AllowSort = false;
    else
        e.AllowSort = true;
}

{% endhighlight %}

{% highlight vb %}

Private Sub gridGroupingControl1_TableControlQueryAllowSortColumn(ByVal sender As Object, ByVal e As GridQueryAllowSortColumnEventArgs)
    If e.Column.Name = "Source" Then
        e.AllowSort = False
    Else
        e.AllowSort = True
    End If
End Sub
{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

2. Ensure that the CellType is ColumnHeaderCell in TableControlCellClick event and then call your sorting method. The following code illustrates this:
{% capture codesnippet2 %}
{% tabs %}
{% highlight c# %}

void gridGroupingControl1_TableControlCellClick(object sender, GridTableControlCellClickEventArgs e)
{
    GridTableCellStyleInfo style = e.TableControl.GetTableViewStyleInfo(e.Inner.RowIndex, e.Inner.ColIndex);
    if (style.TableCellIdentity.TableCellType == GridTableCellType.ColumnHeaderCell)
    {
        if (style.TableCellIdentity.Column != null && style.TableCellIdentity.Column.Name == "Source")
        {
            CustomSorting(style.TableCellIdentity.Column.Name);
        }                
    }
}
{% endhighlight %}

{% highlight vb %}

Private Sub gridGroupingControl1_TableControlCellClick(ByVal sender As Object, ByVal e As GridTableControlCellClickEventArgs)
Dim style As GridTableCellStyleInfo = e.TableControl.GetTableViewStyleInfo(e.Inner.RowIndex, e.Inner.ColIndex)
If style.TableCellIdentity.TableCellType = GridTableCellType.ColumnHeaderCell Then
If style.TableCellIdentity.Column IsNot Nothing AndAlso style.TableCellIdentity.Column.Name = "Source" Then
CustomSorting(style.TableCellIdentity.Column.Name)
End If
End If
End Sub

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

In the preceding code example CustomSorting_()_ is the user defined method. In this method, the values from the grid are added to an ArrayList and sorted, and then the sorted values are stored back into the grid. The following code illustrates this:

{% tabs %}
{% highlight c# %}

public void CustomSorting(string sortColumn)
{
    ArrayList list = new ArrayList();
    foreach (Record r in this.gridGroupingControl1.Table.Records)
    {
        list.Add(r.GetValue(sortColumn));
    }
    list.Sort();
    for (int i = 0; i < this.gridGroupingControl1.Table.Records.Count; i++)
    {
        this.gridGroupingControl1.Table.Records[i].GetRecord().SetValue(sortColumn, list[i].ToString());

    }
    this.gridGroupingControl1.Refresh();
}

{% endhighlight %}

{% highlight vb %}

Public Sub CustomSorting(ByVal sortColumn As String)
Dim list As New ArrayList()
For Each r As Record In Me.gridGroupingControl1.Table.Records
list.Add(r.GetValue(sortColumn))
Next
list.Sort()
For i As Integer = 0 To Me.gridGroupingControl1.Table.Records.Count - 1
Me.gridGroupingControl1.Table.Records(i).GetRecord().SetValue(sortColumn, list(i).ToString())
Next
Me.gridGroupingControl1.Refresh()
End Sub

{% endhighlight %}
{% endtabs %}
