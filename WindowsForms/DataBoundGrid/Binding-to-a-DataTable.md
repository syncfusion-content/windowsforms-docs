---
layout: post
title: Binding-to-a-DataTable | WindowsForms | Syncfusion
description: binding to a datatable
platform: WindowsForms
control: DataBoundGrid
documentation: ug
---

# Binding to a DataTable

Binding to a DataTable is a very simple and straight-forward process. After defining DataTable, you must set GridDataBoundGrid.DataSource property to the table. Then you can easily use the Data Tab of your toolbox in Visual Studio to generate DataTables. Here we will add a simple People table using the code to illustrate how you can dynamically create a DataTable. 

Creating a DataTable from code is a two-step process. You must first add DataColumn objects to the DataTable.Columns collection and then you must add DataRow objects to the DataTable.Rows collection. Given below is the code that does this. The code will assume that you have dropped a Grid Data Bound Grid onto the form.
{% highlight c# %}




private void Form1_Load(object sender, System.EventArgs e)

{

this.gridDataBoundGrid1.DataSource = ReturnATable();

}



private DataTable ReturnATable()

{

    DataTable table = new DataTable("People");



//Adds two columns.

   table.Columns.Add(new DataColumn("FirstName"));

   table.Columns.Add(new DataColumn("LastName"));



//Adds some rows.

   DataRow dr = table.NewRow();

   dr["FirstName"] = "John";

   dr["LastName"] = "Smith";

   table.Rows.Add(dr);



   dr = table.NewRow();

   dr["FirstName"] = "Mary";

   dr["LastName"] = "Tucker";

   table.Rows.Add(dr);



   dr = table.NewRow();

   dr["FirstName"] = "Sue";

   dr["LastName"] = "Gaskins";

   table.Rows.Add(dr);



   dr = table.NewRow();

   dr["FirstName"] = "John";

   dr["LastName"] = "Jacobs";

   table.Rows.Add(dr);



   dr = table.NewRow();

   dr["FirstName"] = "Sam";

   dr["LastName"] = "Garfunkel";

   table.Rows.Add(dr);



   dr = table.NewRow();

   dr["FirstName"] = "George";

   dr["LastName"] = "Shepherd";

   table.Rows.Add(dr);



   dr = table.NewRow();

   dr["FirstName"] = "Becky";

   dr["LastName"] = "Dunsford";

   table.Rows.Add(dr);



   return table;

}

{% endhighlight  %}
{% highlight vbnet %}




Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

Me.GridDataBoundGrid1.DataSource = ReturnATable()

End Sub



Private Function ReturnATable()

Dim table As DataTable = New DataTable("People")



'Adds two columns.

table.Columns.Add(New DataColumn("FirstName"))

table.Columns.Add(New DataColumn("LastName"))



'Adds some rows.

Dim dr As DataRow = table.NewRow()

dr("FirstName") = "John"

dr("LastName") = "Smith"

table.Rows.Add(dr)



dr = table.NewRow()

dr("FirstName") = "Mary"

dr("LastName") = "Tucker"

table.Rows.Add(dr)



dr = table.NewRow()

dr("FirstName") = "Sue"

dr("LastName") = "Gaskins"

table.Rows.Add(dr)



dr = table.NewRow()

dr("FirstName") = "John"

dr("LastName") = "Jacobs"

table.Rows.Add(dr)



dr = table.NewRow()

dr("FirstName") = "Sam"

dr("LastName") = "Garfunkel"

table.Rows.Add(dr)



dr = table.NewRow()

dr("FirstName") = "George"

dr("LastName") = "Shepherd"

table.Rows.Add(dr)



dr = table.NewRow()

dr("FirstName") = "Becky"

dr("LastName") = "Dunsford"

table.Rows.Add(dr)



Return table

End Function

{% endhighlight  %}

