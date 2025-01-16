---
layout: post
title: Real-Time Applications in Windows Forms Grid Control | Syncfusion
description: Learn about Real-Time Applications support in Syncfusion® Windows Forms Grid Control, its elements and more details.
platform: WindowsForms
control: GridControl
documentation: ug
---

# Real-Time Applications in Windows Forms Grid Control
GridControl can be used to create many real time application like Gaming Applications, Excel Like UI, Grid Folder Browser, Pivot Grid and much more according to the need of the user.

## Gaming Applications
Tetris game application can be created by GridControl. In this game the boxes will fall from top, the user need to arrange these boxes in proper order to get the points. This game application makes use of arrow keys to move the blocks and change the block shape. In this game there is option for display the next block and pause the game. It also contain the score board at the bottom.

![Real-Time-Applications_img1](Real-Time-Applications_images/Real-Time-Applications_img1.jpeg)

N> A sample demonstrating this feature can be downloaded over [here](https://www.syncfusion.com/downloads/support/directtrac/general/ze/Essential_Blocks_Demo2062614268.zip). 

## Excel like UI
Microsoft Excel-like User Interface can be implemented in GridControl with the help of other controls like [RibbonControl](https://help.syncfusion.com/windowsforms/ribbon/overview), [GridAwareTextBox](https://help.syncfusion.com/windowsforms/grid-control/formulabar) and [TabBarSplitter](https://help.syncfusion.com/windowsforms/tab-splitter-container/overview). It contains the **Name Box** that shows the current selection range and **Formula Bar** supports the formula cell. This **Formula Bar** is made up of the `GridAwareTextBox` control. In the top it has the **Quick Access Toolbar** which contains the necessary tools and other options which are available in the Syncfusion<sup>®</sup> `RibbonControl`. Column header has the column letters and row header has the row numbers which was similar to Excel sheet. It contains the **Sheet Tab** which denotes the number of sheets. In the bottom it has the **Zoom Slider** and **Status Bar** which was similar to that of Excel sheet.

![Real-Time-Applications_img2](Real-Time-Applications_images/Real-Time-Applications_img2.jpeg)

A sample demonstrating this real time application is available under the following sample installation path.<br/>
**&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Product Showcase\Excel Like UI Demo**

## Grid Folder Browser
GridControl can be used to develop a powerful `TreeView` control because of its flexibility. The tree nodes can be created through custom `TreeCell` cell type. The [GridStaticCellModel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridStaticCellModel.html) class is inherited to create this cell type. The plus/minus buttons of the tree nodes are selected by using [ImageIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridStyleInfo.html#Syncfusion_Windows_Forms_Grid_GridStyleInfo_ImageIndex) property.

The following sample operates grid in virtual mode in order to populate the data dynamically on demand, i.e., when the tree is expanded. [QueryCellInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html), [QueryColCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html) and [QueryRowCount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.IGridModelDataProvider.html#Syncfusion_Windows_Forms_Grid_IGridModelDataProvider_QueryRowCount_Syncfusion_Windows_Forms_Grid_GridRowColCountEventArgs_) events must be handled in order to implement virtual grid. These events provide basic information about the number of rows and columns and the values of the data.

The following code example illustrates how to set the data tor tree view node from the data source.

{% tabs %}
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
{% highlight vb %}
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
{% endtabs %}

![Real-Time-Applications_img3](Real-Time-Applications_images/Real-Time-Applications_img3.jpeg)

A sample demonstrating this feature is available under the following sample installation path.<br/>
**&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Product Showcase\Grid Folder Browser Demo**

## Pivot Grid
PivotGrid is a powerful cell-oriented, extensible grid control. It simulates the pivot table feature of Excel. The major advantage with a pivot grid is that you can extract the desired information from a large list within seconds. Along with presenting the data, a pivot grid also enables you to summarize and group data. Pivot grid has its main application in the financial domain. It is used to organize and analyze business data.

![Real-Time-Applications_img4](Real-Time-Applications_images/Real-Time-Applications_img4.jpeg)

A sample demonstrating this feature is available under the following sample installation path.<br/>
**&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\Grid.Windows\Samples\Product Showcase\Pivot Grid Demo**
