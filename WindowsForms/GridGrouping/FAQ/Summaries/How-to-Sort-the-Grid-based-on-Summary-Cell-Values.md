---
layout: post
title: How-to-Sort-the-Grid-based-on-Summary-Cell-Values | Windows Forms | Syncfusion
description: how to sort the grid based on summary cell values 
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Sort the Grid based on Summary Cell Values 

While sorting, the grid rearranges data to match current sort criteria, but it excludes the summary cells. To perform sorting based on summary cell values, it should be passed as an argument in the “SetGroupSummarySortOrder” method. 

{% highlight c# %}

private void PerformSort(GridTableControl tableControl, string name)

{

  if (tableControl.TableDescriptor.IsGrouped)

    {

//Code...

if (gs != null)

{

string caption = gs.Format.Trim(new char[]{'{','}'});

foreach (SortColumnDescriptor col in tableControl.TableDescriptor.GroupedColumns)

{

   if (!flag)

   group.Add(col.Name, col.Clone());                                   col.SetGroupSummarySortOrder(gs.GetSummaryDescriptorName(),caption, _sumSort);    

  }

 flag = true;

}

//Code...


{% endhighlight  %}
{% highlight vbnet %}

Private Sub PerformSort(ByVal tableControl As GridTableControl, ByVal name As String)

If tableControl.TableDescriptor.IsGrouped Then



'Code...



If gs IsNot Nothing Then

Dim caption As String = gs.Format.Trim(New Char(){"{"c,"}"c})

For Each col As SortColumnDescriptor In tableControl.TableDescriptor.GroupedColumns

  If Not flag Then

group.Add(col.Name, col.Clone())

  End If

col.SetGroupSummarySortOrder(gs.GetSummaryDescriptorName(),caption, _sumSort)

Next col

flag = True

'Code...


{% endhighlight  %}


