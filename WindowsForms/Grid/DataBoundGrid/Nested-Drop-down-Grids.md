---
layout: post
title: Nested-Drop-down-Grids
description: nested drop-down grids
platform: windowsform
control: GridDataBoundGrid
documentation: ug
---

# Nested Drop-down Grids

Nested Drop-down grids are used to represent multi-level data in a grid. For example, if a bank wants to load all the accounts of an enrolled user in grid control for a financial project, and some of the accounts have subaccounts with options to be selected under each subaccount, which need to be loaded/ shown as a subelement to that account, Nested Drop-down grids can be used to represent data. Data can be distributed in parent (primary) grid, child grid, and so on. Grid Data Bound Grid control can display hierarchical data using Nested Drop-down grids.

#### Example

In the code example below, the parent (primary) grid is the 'Customers' table from NorthWind database. On clicking a row of this table, the 'Orders' table will be displayed in a new grid providing details on orders placed by the customers. On clicking any of the rows in Orders table, another grid named 'Order_Details' table is displayed providing details on the order details of the selected row in the Orders table.  

This example has a derived GridDataBoundGrid class called GridHierDataBoundGrid used for all the grids to be displayed. In the constructor for this class, the tables for parent and child are to be passed.

{% highlight c# %}

//Parent table to Child table.

//Creates the outermost grid for customers table-uses GridHierDataBoundGrid class.

this.customerGrid1 = new GridHierDataBoundGrid(this, this.dataSet11.Customers,

this.dataSet11.Orders, this.orderGrid2, new QueryFilterStringEventHandler(ProvideOrdersFilterStrings),

new QueryFormatGridEventHandler(ProvideOrderFormat), true);

{% endhighlight %}

{% highlight vbnet %}

'Parent table to Child table.

'Creates the outermost grid for customers table and uses GridHierDataBoundGrid class.

Me.customerGrid1 = New GridHierDataBoundGrid(Me, Me.dataSet11.Customers, Me.dataSet11.Orders, Me.orderGrid2, New QueryFilterStringEventHandler(AddressOf ProvideOrdersFilterStrings), New QueryFormatGridEventHandler(AddressOf ProvideOrderFormat), True)


{% endhighlight %}


Finally, to specify a relationship between a parent table and a child table, an event handler must be passed for the QueryFilterString event. The event should specify the FilterString that defines the relationship between the parent table and the child table.

{% highlight c# %}

// Parent table to Child table.

private void ProvideOrdersFilterStrings(object sender, QueryFilterStringEventArgs e)

{

if (this.customerGrid1.Model[e.Row, e.Column + 1].Text != "")



//Adds 1 to get to Customer ID.

e.FilterString = string.Format("CustomerID = '{0}'", this.customerGrid1.Model[e.Row, e.Column + 1].Text);

}

{% endhighlight %}

{% highlight vbnet %}

'Parent table to Child table.

Private Sub ProvideOrdersFilterStrings(ByVal sender As Object, ByVal e As QueryFilterStringEventArgs)

If Me.customerGrid1.Model(e.Row, e.Column + 1).Text &lt;&gt; "" Then



' Adds 1 to get to Customer ID.

e.FilterString = String.Format("CustomerID = '{0}'", Me.customerGrid1.Model(e.Row, e.Column + 1).Text)

End If

End Sub

{% endhighlight %}

![](DataBound-Grid_images/DataBound-Grid_img20.jpeg)



A sample demonstrating this feature is available under the following sample installation path.

&lt;Install Location&gt;\Syncfusion\EssentialStudio\[Version Number]\Windows\GridDataBound.Windows\Samples\Customization\Drop Grid Demo

