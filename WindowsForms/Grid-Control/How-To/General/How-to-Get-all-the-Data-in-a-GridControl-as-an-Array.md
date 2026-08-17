---
layout: post
title: Get Grid Data as an Array in Windows Forms GridControl | Syncfusion®
description: Get all data in Syncfusion® Windows Forms GridControl as an array by accessing GridData directly and retrieving cell values efficiently.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Get Grid Data as an Array in Windows Forms GridControl

Using an indexer to retrieve grid[row, col].CellValue triggers events(like QueryCellInfo). In a GridControl where the data is stored in the grid, you can avoid triggering of these events (which slow things down) by accessing GridData directly. 

{% tabs %}
{% highlight c# %}

//Accesses data through the GridData object.... 
GridData gridData = this.gridControl1.Data;
int numberOfRows = gridData.RowCount;
int numberOfCols = gridData.ColCount;
Console.WriteLine("{0} rows by {1} cols", numberOfRows, numberOfCols);

for(int i = 1; i <= numberOfRows; ++i)
{
    for(int j = 1; j <= numberOfCols; ++j)
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

{% highlight vb %}

'Accesses data through the GridData object....
Dim gridData As GridData = Me.gridControl1.Data
Dim numberOfRows As Integer = gridData.RowCount
Dim numberOfCols As Integer = gridData.ColCount
Console.WriteLine("{0} rows by {1} cols", numberOfRows, numberOfCols)
Dim i As Integer = 1
Do While i <= numberOfRows
Dim j As Integer = 1
Do While j <= numberOfCols
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
{% endtabs %}
