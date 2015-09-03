---
layout: post
title: How-to-Sort-the-Grid-based-on-Summary-Cell-Values
description: how to sort the grid based on summary cell values 
platform: WindowsForms
control: How To
documentation: ug
---

# How to Sort the Grid based on Summary Cell Values 

While sorting, the grid rearranges data to match current sort criteria, but it excludes the summary cells. To perform sorting based on summary cell values, it should be passed as an argument in the “SetGroupSummarySortOrder” method. 

{% highlight c# %}

private void PeformSort(GridTableControl tableControl, string name)

{

  if (tableControl.TableDescriptor.IsGrouped)

    {

//Code...

if (gsc != null)

{

string caption = gsc.Format.Trim(new char[]{'{','}'});

foreach (SortColumnDescriptor col in tableControl.TableDescriptor.GroupedColumns)

{

   if (!flag)

   group.Add(col.Name, col.Clone());                                   col.SetGroupSummarySortOrder(gsc.GetSummaryDescriptorName(),caption, _summSort);    

  }

 flag = true;

}

//Code...


{% endhighlight  %}
{% highlight vbnet %}

Private Sub PeformSort(ByVal tableControl As GridTableControl, ByVal name As String)

If tableControl.TableDescriptor.IsGrouped Then



'Code...



If gsc IsNot Nothing Then

Dim caption As String = gsc.Format.Trim(New Char(){"{"c,"}"c})

For Each col As SortColumnDescriptor In tableControl.TableDescriptor.GroupedColumns

  If Not flag Then

group.Add(col.Name, col.Clone())

  End If

col.SetGroupSummarySortOrder(gsc.GetSummaryDescriptorName(),caption, _summSort)

Next col

flag = True

'Code...


{% endhighlight  %}


