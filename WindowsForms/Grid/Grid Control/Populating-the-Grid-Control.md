---
layout: post
title: Populating-the-Grid-Control
description: populating the grid control
platform: windowsform
control: Grid
documentation: ug
---

# Populating the Grid Control

There are several ways of using Grid control to display data. For instance, you can move your data directly into an Essential Grid and let the underlying grid manage this data for you or another way would be to set the datasource member of Essential Grid, thus binding the grid. Still another method is to use Essential Grid in a virtual mode whereby you can handle certain events to provide data to the Essential Grid whenever it is in demand.

Out of these three ways, the latter two ways of providing data to an Essential Grid are discussed in more detail (in their own sections) in this user's guide. In this section, you will learn how to store data directly into an Essential Grid's internal storage, so that the grid is able to maintain the data for you, and also how to populate a Grid control from a two-dimensional integer array.

## Grid Control Indexer Technique

To place data into a grid, you need to loop through all the rows and columns, setting GridStyleInfo.CellValue property for each cell. This technique is fine for small grids and is not a real drawback. It does have overhead of firing events that are normally associated with a change in a cell's GridStyleInfo object. For larger grids, the overhead associated with such events is likely to be noticed by users only during population. One thing to note is that you may need to turn off the Grid's Undo/Redo support so that users cannot undo your initial population of the grid.

{% highlight c# %}



//Turns off undo.

this.gridControl1.CommandStack.Enabled = false;



//Prevents the grid from redrawing for each change.

this.gridControl1.BeginUpdate();



this.gridControl1.RowCount = this.numArrayRows;

this.gridControl1.ColCount = this.numArrayCols;



for (int i = 0; i < this.numArrayRows; ++i)

{

for(int j = 0; j < this.numArrayCols; ++j)

this.gridControl1[i+1, j+1].CellValue = this.intArray[i,j];

}

this.gridControl1.EndUpdate();

this.gridControl1.Refresh();
{% endhighlight %}


{% highlight vbnet %}



'Turns off undo.

Me.gridControl1.CommandStack.Enabled = False



'Prevents the grid from redrawing for each change.

Me.gridControl1.BeginUpdate()



Me.gridControl1.RowCount = Me.numArrayRows

Me.gridControl1.ColCount = Me.numArrayCols



Dim i As Integer

Dim j As Integer

For i = 1 To Me.numArrayRows

For j = 1 To Me.numArrayCols

Me.gridControl1(i+1, j+1).CellValue = Me.intArray(i, j)

Next j

Next i



Me.gridControl1.EndUpdate()

Me.gridControl1.Refresh()

{% endhighlight %}

## GridControl.PopulateValues Method

To overcome cell-by-cell event overhead intrinsic, Grid control has PopulateValues method. This method is a member of GridControl class, which is in the indexer population technique and was discussed in the Grid Control Indexer Technique section. This method will allow you to pass in a range of cells and data source of the type object. With this information, the method will then use techniques that will bypass event overhead to retrieve data from datasource object in a manner that depends upon the object type and will move it into the range.

The basic types that can be passed into the datasource parameter include IListSource, Array and IList. This includes things like DataTable and DataView, since DataTable implements IListSource and DataView implements IList.

Note that when you use theGridControl.PopulateValues method, data values are copied from your data source and placed into the Essential Grid object. Thus, this is an entirely different concept than binding a grid to a data source. In such cases, data is not moved into the grid object, instead is provided on demand from data source to the grid. So, the grid never stores any values in a databound grid. When you use the PopulateValues method, data is actually copied from data source and is placed in the grid's internal storage.

{% highlight c# %}



this.gridControl1.BeginUpdate();

this.gridControl1.RowCount = this.numArrayRows;

this.gridControl1.ColCount = this.numArrayCols;

//Calls PopulateValues Method to move values from a given data source (this.initArray) into the Grid Range specified.

this.gridControl1.Model.PopulateValues(GridRangeInfo.Cells(1, 1, this.numArrayRows, this.numArrayCols), this.intArray);

this.gridControl1.EndUpdate();

this.gridControl1.Refresh();
{% endhighlight %}


{% highlight vbnet %}



Me.gridControl1.BeginUpdate()

Me.gridControl1.RowCount = Me.numArrayRows

Me.gridControl1.ColCount = Me.numArrayCols



'Calls PopulateValues Method to move values from a given data source (this.initArray) into the Grid Range specified.

Me.gridControl1.Model.PopulateValues(GridRangeInfo.Cells(1, 1, Me.numArrayRows, Me.numArrayCols), Me.intArray)

Me.gridControl1.EndUpdate()

Me.gridControl1.Refresh()
{% endhighlight %}

To see a program sample that uses these techniques to populate a grid, look at the Grid Population Demo sample that is shipped with the product. It allows you to time the different population methods including using of a grid virtually. For small grids, the three techniques are comparable. But, as you increase the grid size, virtual grid timing values remain the same, whereas the other two methods vary depending upon the number of data points. In general, the population of a grid by using indexer technique is about factor of ten slower than using PopulateValues method. Depending upon the size of the grid, the virtual technique can be thousands of times quicker than the other techniques.

## Using GridStyleInfo Class

By using GridRangeInfo class and properties of GridStyleInfo class, you can write code illustrating how to enter values into a grid and how to affect the appearance of these displayed values. In the sections that follow, you will learn how to create a Grid object and place it on a form. Then you can set the style values by using Grid classes discussed so far: GridStyleInfo, GridRangeInfo and GridControl.
