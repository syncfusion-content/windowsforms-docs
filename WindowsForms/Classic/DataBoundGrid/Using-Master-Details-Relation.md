---
layout: post
title: Using-Master-Details-Relation | Windows Forms | Syncfusion
description: using master-details relation
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# Master-Details Relation

To define simple Master-Details relation, you must have two tables. The first is a Master table that has a column whose values are also included in a second table, referred to as the Details table. You must display these two tables in two grids, which are called Master grid and Details grid. As you click a row in the Master grid, the rows displayed in the Details Grid will be restricted to only those rows whose common value matches the value in the selected Master grid row. 

Here is a screen shot showing you Master-Detail grid pair using Northwind Customers table as the Master table, and the Northwind Orders table as the details table. As you click on a customer in the customers grid, the orders for that customer will appear in the second grid.

![](Using-Master-Details-Relation_images/Using-Master-Details-Relation_img1.jpeg) 





Here is the code that implements this Master-Detail form. In the designer, two DataAdapters (one for each table), Customers and Orders are added to the form. A DataSet will be generated as well. Two DataBound Grids are also positioned on the form. The Form_Load event listed below will set up all the data binding between DataSet that is holding the two tables and the two grids. 

{% tabs %}
{% highlight c# %}
private void Form1_Load(object sender , System.EventArgs e)  
{

//Fills Data Set with two tables.
    this.sqlDataAdapter1.Fill(this.dataSet11.Customers);
    this.sqlDataAdapter2.Fill(this.dataSet11.Orders);

//Adds Data Relation to the Data Set.
    DataRelation dataRow  = new DataRelation("CustomersToOrders", this.dataSet11.Customers.Columns["CustomerID"],
    this.dataSet11.Orders.Columns["CustomerID"]);
    this.dataSet11.Relations.Add(dataRow);

//Sets up data sources.
    this.masterGrid.DataSource = this.dataSet11.Tables["Customers"];
    this.detailsGrid.DataSource = Me.DataSet11.Tables["Customers"];
    this.detailsGrid.DataMember = "CustomersToOrders";
}
{% endhighlight  %}
{% highlight vb %}
Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

'Fills Data Set with two tables.
Me.SqlDataAdapter1.Fill(Me.DataSet11.Customers)
Me.SqlDataAdapter2.Fill(Me.DataSet11.Orders)

'Adds Data Relation to Data Set.
Dim dataRow As DataRelation = New DataRelation("CustomersToOrders", Me.DataSet11.Customers.Columns("CustomerID"),
Me.DataSet11.Orders.Columns("CustomerID"))
Me.DataSet11.Relations.Add(dataRow)

'Sets up data sources.
Me.masterGrid.DataSource = Me.DataSet11.Tables("Customers")
Me.detailsGrid.DataSource = Me.DataSet11.Tables("Customers")
Me.detailsGrid.DataMember = "CustomersToOrders"
End Sub
{% endhighlight  %}
{% endtabs %}
