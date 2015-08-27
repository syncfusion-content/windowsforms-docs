---
layout: post
title: How-to-Get-all-the-Data-in-a-GridControl-as-an-Arr
description: how to get all the data in a gridcontrol as an array
platform: windowsforms
control: Tools
documentation: ug
---

# How to Get all the Data in a GridControl as an Array

## Introduction

Using an indexer to retrieve grid[row, col].CellValue triggers events(like QueryCellInfo). In a GridControl where the data is stored in the grid, you can avoid triggering of these events (which slow things down) by accessing GridData directly. 

### Example



{% highlight c# %}



//Accesses data through the GridData object.... 
GridData gridData = this.gridControl1.Data;
int numRows = gridData.RowCount;
int numCols = gridData.ColCount;
Console.WriteLine("{0} rows by {1} cols", numRows, numCols);
for(int i = 1; i <= numRows; ++i)
{
for(int j = 1; j <= numCols; ++j)
{
int arrayCount=0;
if(gridData[i, j] != null)
{
GridStyleInfo style = new GridStyleInfo(gridData[i, j]);
strArray[arrayCount] = style.Text;
Console.Write(strArray[arrayCount] + " ");
arrayCount++;
}
else
Console.Write("empty");
}
Console.WriteLine("");
}}

{% endhighlight  %}

{% highlight vbnet %}



'Accesses data through the GridData object....
   Dim gridData As GridData = Me.gridControl1.Data
   Dim numRows As Integer = gridData.RowCount
   Dim numCols As Integer = gridData.ColCount
   Console.WriteLine("{0} rows by {1} cols", numRows, numCols)
   Dim i As Integer = 1
   Do While i <= numRows
   Dim j As Integer = 1
   Do While j <= numCols
   Dim arrayCount As Integer = 0
   If Not gridData(i, j) Is Nothing Then


 'Stores all the Cell values in an Array using the GridData object.
   Dim style As GridStyleInfo = New GridStyleInfo(gridData(i, j))
   strArray(arrayCount) = style.Text
   Console.Write(strArray(arrayCount) & "  ")
   arrayCount += 1
   Else
   Console.Write("empty")

   EndIf

   j+=1

   Loop

   Console.WriteLine("")

   i+=1

   Loop

{% endhighlight  %}

