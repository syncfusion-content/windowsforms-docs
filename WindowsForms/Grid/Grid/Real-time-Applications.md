---
layout: post
title: Real-time-Applications
description: real-time applications
platform: windowsform
control: Grid
documentation: ug
---

# Real-time Applications

This section provides information on the real-time applications of Essential Grid. It includes the following topics.

## Gaming Applications

Essential Grid is used to implement gaming applications.

Example

Let us consider the Tetris game application, which is implemented by using Essential Grid. This game application makes use of arrow keys to move the blocks and change the block shape. It also provides an option to display the next block.

  ![](Grid-Control_images/Grid-Control_img229.jpeg)



A sample demonstrating this feature is available under the following sample installation path.

         <Install Location>\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Product Showcase\Essential Blocks Demo

## MS Excel 2007-like UI

Essential Grid control provides support to implement Microsoft Excel 2007-like User Interface (UI). It contains Name Box that shows the current selection range and Formula Bar, which supports the formula cells. The row and column headers of the selected range are highlighted on the UI. This feature is similar to Excel.

  ![](Grid-Control_images/Grid-Control_img230.png)





A sample demonstrating this feature is available under the following sample installation path.

         <Install Location>\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Product Showcase\Excel Like UI Demo

## Grid Folder Browser

Essential Grid can be used to develop a powerful TreeView control owing to its flexibility. The tree nodes can be created through custom TreeCell cell type. GridStaticCellModel class is inherited to create this cell type. The plus/minus buttons of the tree nodes are selected by using ImageIndex property. 

####Example

Let us consider the Grid Folder Browser sample which is available under the following installation path.

         <Install Location>\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Product Showcase\Grid Folder Browser Demo

This sample operates grid in virtual mode in order to populate the data dynamically on demand, i.e., when the tree is expanded. QueryCellInfo, QueryColCount and QueryRowCount events must be handled in order to implement virtual grid. These events provide basic information about the number of rows and columns and the values of the data.

The following code example illustrates how to set the data from the data source.

{% highlight c# %}



void GridQueryCellInfo(object sender, GridQueryCellInfoEventArgs e) 

{

if (e.RowIndex > 0 && e.ColIndex > 0) 

{ 

e.Style.CellValue = externalData[e.RowIndex - 1].Items[e.ColIndex - 1]; 

if (e.ColIndex == 1) 

{

e.Style.CellType = "TreeCell"; 

e.Style.Tag = externalData[e.RowIndex - 1].IndentLevel; 

e.Style.ImageIndex = (int) externalData[e.RowIndex - 1].ExpandState; 

} 

}

e.Handled = true;

}
{% endhighlight %}


 {% highlight vbnet %}



Private Sub GridQueryCellInfo(ByVal sender As Object, ByVal e As GridQueryCellInfoEventArgs)

If e.RowIndex > 0 AndAlso e.ColIndex > 0 Then

e.Style.CellValue = externalData(e.RowIndex - 1).Items(e.ColIndex - 1)

If e.ColIndex = 1 Then

e.Style.CellType = "TreeCell"

e.Style.Tag = externalData(e.RowIndex - 1).IndentLevel

e.Style.ImageIndex = CInt(Fix(externalData(e.RowIndex - 1).ExpandState))

End If

End If

e.Handled = True

End Sub

{% endhighlight %}

The implementation uses CollapsibleDataSource class. This class makes use of custom collection to hold a list of SampleData objects. (Consider each of these objects as a row in the underlying grid). Each row carries information on a specific folder. Each SampleData object has IndentValue property, ExpandState property, and Items string array that holds the different column values for this row. The column values display folder details like the name of the folder, folder size and so on. This class also contains InsertData method, which retrieves data of inner subtree and inserts data into the collection when a node is expanded.

   ![](Grid-Control_images/Grid-Control_img231.jpeg)


