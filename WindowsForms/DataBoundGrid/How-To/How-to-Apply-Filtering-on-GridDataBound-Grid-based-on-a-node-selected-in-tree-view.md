---
layout: post
title: How-to-Apply-Filtering-on-GridDataBound-Grid-based-on-a-node-selected-in-tree-view
description: how to apply filtering on griddatabound grid based on a node selected in tree view
platform: WindowsForms
control: DataBoundGrid
documentation: ug
---

# How to Apply Filtering on GridDataBound Grid based on a Node Selected in Tree View?

GridDataBound grid is designed to bind data sources such as data table, string collection, data set, and data view. The filter bar can be enabled and hidden in the grid. Before selecting a node in the Tree view, the grid will load all the data from the data source. TreeView_AfterSelect event is used to determine the tree view node and perform filter operation on the grid control corresponding to the node that you selected in the Tree view. The following code example illustrates how to apply filtering on GridDataBound grid based on a node selected in the Tree view.

{% highlight c# %}



//Include the below four lines of code in the constructor



 treeViewAdv1.ExpandAll();

 filter = new GridFilterBar();

//Associates Grid with the filter            

 filter.WireGrid(this.gridDataBoundGrid1);   

//Hides the filter bar row

 this.gridDataBoundGrid1.Model.Rows.Hidden[1] = true;  



//Event Handler.



 private void treeViewAdv1_AfterSelect(object sender, EventArgs e)

 {

   TreeNodeAdv node = treeViewAdv1.SelectedNode;

   if (node != null)

    {

      string filterString = string.Format("CategoryId = {0}",          Convert.ToInt32(node.Tag));



//Applies filter on grid.



filter.RowFilter = filterString;      

this.gridDataBoundGrid1.Refresh();

     }

  }


{% endhighlight %}


{% highlight vbnet %}



//Include the below four lines of code in the constructor



treeViewAdv1.ExpandAll()

filter = New GridFilterBar()

'Associates Grid with the filter.            

filter.WireGrid(Me.gridDataBoundGrid1)

'Hides the filter bar row.

Me.gridDataBoundGrid1.Model.Rows.Hidden(1) = True



//Event Handler



Private Sub treeViewAdv1_AfterSelect(ByVal sender As Object, ByVal e As EventArgs)

   Dim node As TreeNodeAdv = treeViewAdv1.SelectedNode

   If node IsNot Nothing Then

Dim filterString As String = String.Format("CategoryId = {0}", Convert.ToInt32(node.Tag))



'Applies filter on grid.



filter.RowFilter = filterString

Me.gridDataBoundGrid1.Refresh()

   End If

End Sub

{% endhighlight %}



![](How-to-Apply-Filtering-on-GridDataBound-Grid-based_images/How-to-Apply-Filtering-on-GridDataBound-Grid-based_img1.png)



#### Sample Link

A sample can be downloaded from the following location:

[http://www.syncfusion.com/downloads/Support/DirectTrac/91763/Syncfusion FTP1-989352783.zip](http://www.syncfusion.com/downloads/Support/DirectTrac/91763/Syncfusion%20FTP1-989352783.zip)

