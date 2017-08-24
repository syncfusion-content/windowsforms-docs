---
layout: post
title: Foreign-Key-Columns-Shows-One-Value-but-Saves-Another | Windows Forms | Syncfusion
description: foreign key columns shows one value but saves another
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# Foreign Key Columns: Shows One Value, but Saves Another

Very often a table will have a column that displays an ID key defined in another table. In your grid, you may like to have this foreign key mapped to some meaningful value, which is referenced from a different column in this other table. The key column in the foreign table is referred as ValueMember and the meaningful column is referred as DisplayMember. 

Essential Grid will handle this work for you and it can be done through the designer. For the example discussed below, we use code to handle most of the steps.

In the designer, drag two of the DataBound Grids onto a form. Use one grid to show the foreign key combobox and the other to show the raw data for the primary table. Once the grids are in place, the code, which is given below will create the tables for this sample and then the code in the Form_Load will hook up the foreign key combobox. In our sample, we have set the combobox button to display only the current row.



{% highlight c# %}

private void Form1_Load(object sender, System.EventArgs e)

{

    this.gridDataBoundGrid1.DataSource = PrimaryTable();

    this.gridDataBoundGrid1.EnableAddNew = false;



//Column 2 of the grid is the foreign key combo.

    GridBoundColumn gridBoundColumn = this.gridDataBoundGrid1.Binder.InternalColumns[1];

    gridBoundColumn.StyleInfo.CellType = "ComboBox";

    gridBoundColumn.StyleInfo.DataSource = ForeignKeyTable();

    gridBoundColumn.StyleInfo.DisplayMember = "Name";

    gridBoundColumn.StyleInfo.ValueMember = "CustomerID";

    gridBoundColumn.StyleInfo.ShowButtons = GridShowButtons.ShowCurrentRow;

    gridBoundColumn.StyleInfo.HorizontalAlignment = GridHorizontalAlignment.Left;



//Displays the primary table in a second grid without foreign key column.

    this.gridDataBoundGrid2.DataSource = this.gridDataBoundGrid1.DataSource;

    this.gridDataBoundGrid2.EnableAddNew = false;

    this.gridDataBoundGrid2.Enabled = false;

}



private DataTable PrimaryTable()

{

    DataTable dataTable = new DataTable("PrimaryTable");

    dataTable.Columns.Add(new DataColumn("ID", typeof(int)));

    dataTable.Columns.Add(new DataColumn("CustomerID", typeof(int)));

    dataTable.Columns.Add(new DataColumn("Address"));

    dataTable.Columns.Add(new DataColumn("City"));

    for(int i = 0; i < 10; ++i)

    {

        DataRow dataRow = dataTable.NewRow();

        dataRow[0] = i;

        dataRow[1] = i % 4;

        dataRow[2] = string.Format("address{0}", i);

        dataRow[3] = string.Format("city{0}", i);

        dataTable.Rows.Add(dataRow);

    }

    return dataTable;

}



private DataTable ForeignKeyTable()

{

//Two columns CustomerID (Value Member) and Name (Display Member).

    DataTable dataTable = new DataTable("ForeignKeyTable");

    dataTable.Columns.Add(new DataColumn("CustomerID", typeof(int)));

    dataTable.Columns.Add(new DataColumn("Name"));

    for(int i = 0; i < 4; ++i)

    {

        DataRow dataRow = dataTable.NewRow();

        dataRow[0] = i;

        dataRow[1] = string.Format("Name{0}", i);

        dataTable.Rows.Add(dataRow);

    }

    return dataTable;

}


{% endhighlight  %}
{% highlight vbnet %}




Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)

Me.gridDataBoundGrid1.DataSource = PrimaryTable()

Me.gridDataBoundGrid1.EnableAddNew = False



'Col 2 of the grid is the foreign key combo.

Dim gridBoundColumn As GridBoundColumn = Me.gridDataBoundGrid1.Binder.InternalColumns(1)

gridBoundColumn.StyleInfo.CellType = "ComboBox"

gridBoundColumn.StyleInfo.DataSource = ForeignKeyTable()

gridBoundColumn.StyleInfo.DisplayMember = "Name"

gridBoundColumn.StyleInfo.ValueMember = "CustomerID"

gridBoundColumn.StyleInfo.ShowButtons = GridShowButtons.ShowCurrentRow

gridBoundColumn.StyleInfo.HorizontalAlignment = GridHorizontalAlignment.Left



'Just displays the primary table in a second grid without foreign key column.

Me.gridDataBoundGrid2.DataSource = Me.gridDataBoundGrid1.DataSource

Me.gridDataBoundGrid2.EnableAddNew = False



'Does not allow clicking it.

Me.gridDataBoundGrid2.Enabled = False



'Form1_Load.

End Sub



Private Function PrimaryTable() As DataTable

Dim dataTable As New DataTable("PrimaryTable")

dataTable.Columns.Add(New DataColumn("ID", GetType(Integer)))

dataTable.Columns.Add(New DataColumn("CustomerID", GetType(Integer)))

dataTable.Columns.Add(New DataColumn("Address"))

dataTable.Columns.Add(New DataColumn("City"))



Dim i As Integer

While i < 10

Dim dataRow As DataRow = dataTable.NewRow()

dataRow(0) = i

dataRow(1) = i Mod 4

dataRow(2) = String.Format("address{0}", i)

dataRow(3) = String.Format("city{0}", i)

dataTable.Rows.Add(dataRow)

i += 1

End While

Return dataTable



'Primary Table.

End Function



Private Function ForeignKeyTable() As DataTable



'Two columns CustomerID (Value Member) and Name (Display Member).

Dim dataTable As New DataTable("ForeignKeyTable")

dataTable.Columns.Add(New DataColumn("CustomerID", GetType(Integer)))

dataTable.Columns.Add(New DataColumn("Name"))



Dim i As Integer

While i < 4

Dim dataRow As DataRow = dataTable.NewRow()

dataRow(0) = i

dataRow(1) = String.Format("Name{0}", i)

dataTable.Rows.Add(dataRow)

i = i + 1

End While

Return dataTable



'Foreign Key Table.

End Function
{% endhighlight  %}

![](Foreign-Key-Columns-Shows-One-Value-but-Saves-Another_images/Foreign-Key-Columns-Shows-One-Value-but-Saves-Another_img1.jpeg) 



