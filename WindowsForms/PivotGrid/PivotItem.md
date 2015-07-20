---
layout: post
title: PivotItem
description: pivotitem
platform: WindowsForms
control: PivotGrid
documentation: ug
---

# PivotItem

PivotItem is an item in a PivotTable field. It provides the information needed to define a pivot item for either a row or column. It consists of the following fields.



_Table_ _6__: Properties Table for PivotItem_

<table>
<tr>
<th>
Property Name</th><th>
Description</th><th>
Type</th><th>
Value it Accepts</th><th>
Reference link</th></tr>
<tr>
<td>
Comparer</td><td>
Gets or sets the IComparer object used for sorting. If this value is null, then sorting will be performed under the assumption that this field is IComparable.</td><td>
IComparer</td><td>
-</td><td>
-</td></tr>
<tr>
<td>
FieldHeader</td><td>
Gets or sets the title you want to see in the header for this pivot item.</td><td>
string</td><td>
-</td><td>
-</td></tr>
<tr>
<td>
FieldMappingName</td><td>
Gets or sets the property's mapping name.</td><td>
string</td><td>
-</td><td>
-</td></tr>
<tr>
<td>
Format</td><td>
Gets or sets the format item for the specified field.</td><td>
string</td><td>
-</td><td>
-</td></tr>
<tr>
<td>
TotalHeader</td><td>
Gets or sets the string you want to append to the pivot item's summary cells.</td><td>
string</td><td>
-</td><td>
-</td></tr>
</table>


## Defining PivotItem in Code-Behind

The PivotItem can be defined in code-behind. The following code example illustrates this.

<table>
<tr>
<td>
[C#]// Defining PivotItemPivotItem m_PivotItem = new PivotItem() { FieldHeader="Product", FieldMappingName ="Product", TotalHeader ="Total" };            // Adding PivotItem to PivotRowsthis.PivotGridControl1.PivotRows.Add(m_PivotItem);</td></tr>
<tr>
<td>
 [VB]' Defining PivotItemDim m_PivotItem As PivotItem = New PivotItem() With {.FieldHeader="Product", .FieldMappingName ="Product", .TotalHeader ="Total"}' Adding PivotItem to PivotRowsMe.PivotGridControl1.PivotRows.Add(m_PivotItem)</td></tr>
</table>


## Sorting using PivotItem

By default, the PivotGrid sorts data in ascending order. The sorting order can be changed using the Comparer field of PivotItem.



<table>
<tr>
<td>
[C#]// Adding Pivot Rows to Grid with FieldMappingName, TotalHeader and Comparerthis.PivotGridControl1.PivotRows.Add(new PivotItem { FieldMappingName = "Product", TotalHeader = "Total", Comparer = new ReverseOrderComparer() });/// <summary>/// Reverse Order Comparer for sorting data in Descending order/// </summary>public class ReverseOrderComparer : IComparer{   #region IComparer Members   public int Compare(object x, object y)   {      if (x == null && y == null)        return 0;      else if (y == null)        return 1;      else if (x == null)        return -1;      else        return -x.ToString().CompareTo(y.ToString());   }   #endregion  }</td></tr>
<tr>
<td>
 [VB]' Adding Pivot Rows to Grid with FieldMappingName, TotalHeader and ComparerMe.PivotGridControl1.PivotRows.Add(New PivotItem With {.FieldMappingName = "Product", .TotalHeader = "Total", .Comparer = New ReverseOrderComparer()})''' <summary>''' Reverse Order Comparer for sorting data in Descending order''' </summary>public class ReverseOrderComparer : IComparer'   #Region "IComparer Members"   public Integer Compare(Object x, Object y)If x Is Nothing AndAlso y Is Nothing ThenReturn 0ElseIf y Is Nothing ThenReturn 1ElseIf x Is Nothing ThenReturn -1ElseReturn -x.ToString().CompareTo(y.ToString())End If'   #End Region  </td></tr>
</table>


