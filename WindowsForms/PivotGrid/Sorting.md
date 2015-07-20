---
layout: post
title: Sorting
description: sorting
platform: WindowsForms
control: PivotGrid
documentation: ug
---

# Sorting

Sorting enables you to quickly visualize and understand the data in a better way, organize and find the data that you want, and ultimately make more effective decisions. By default, the PivotGrid will populate the data in ascending order. The sorting order can be changed using the Comparer field of PivotItem.



<table>
<tr>
<td>
[C#]// Adding Pivot Rows to Grid with FieldMappingName, TotalHeader and Comparerthis.PivotGridControl1.PivotRows.Add(new PivotItem { FieldMappingName = "Product", TotalHeader = "Total", Comparer = new ReverseOrderComparer() });/// <summary>/// Reverse Order Comparer for sorting data in Descendingorder/// </summary>public class ReverseOrderComparer : IComparer{   #region IComparer Members   public int Compare(object x, object y)   {      if (x == null && y == null)        return 0;      else if (y == null)        return 1;      else if (x == null)        return -1;      else        return -x.ToString().CompareTo(y.ToString());   }   #endregion  }</td></tr>
<tr>
<td>
 [VB]' Adding Pivot Rows to Grid with FieldMappingName, TotalHeader and ComparerMe.PivotGridControl1.PivotRows.Add(New PivotItem With {.FieldMappingName = "Product", .TotalHeader = "Total", .Comparer = New ReverseOrderComparer()})''' <summary>''' Reverse Order Comparer for sorting data in Descending order''' </summary>public class ReverseOrderComparer : IComparer'   #Region "IComparer Members"   public Integer Compare(Object x, Object y)If x Is Nothing AndAlso y Is Nothing ThenReturn 0ElseIf y Is Nothing ThenReturn 1ElseIf x Is Nothing ThenReturn -1ElseReturn -x.ToString().CompareTo(y.ToString())End If'   #End Region  </td></tr>
</table>


