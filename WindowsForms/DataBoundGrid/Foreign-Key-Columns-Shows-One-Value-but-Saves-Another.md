---
layout: post
title: Foreign-Key-Columns-Shows-One-Value-but-Saves-Another
description: foreign key columns shows one value but saves another
platform: WindowsForms
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

    GridBoundColumn gbc = this.gridDataBoundGrid1.Binder.InternalColumns[1];

    gbc.StyleInfo.CellType = "ComboBox";

    gbc.StyleInfo.DataSource = ForeignKeyTable();

    gbc.StyleInfo.DisplayMember = "Name";

    gbc.StyleInfo.ValueMember = "CustID";

    gbc.StyleInfo.ShowButtons = GridShowButtons.ShowCurrentRow;

    gbc.StyleInfo.HorizontalAlignment = GridHorizontalAlignment.Left;



//Displays the primary table in a second grid without foreign key column.

    this.gridDataBoundGrid2.DataSource = this.gridDataBoundGrid1.DataSource;

    this.gridDataBoundGrid2.EnableAddNew = false;

    this.gridDataBoundGrid2.Enabled = false;

}



private DataTable PrimaryTable()

{

    DataTable dt = new DataTable("PrimaryTable");

    dt.Columns.Add(new DataColumn("ID", typeof(int)));

    dt.Columns.Add(new DataColumn("CustID", typeof(int)));

    dt.Columns.Add(new DataColumn("Address"));

    dt.Columns.Add(new DataColumn("City"));

    for(int i = 0; i < 10; ++i)

    {

        DataRow dr = dt.NewRow();

        dr[0] = i;

        dr[1] = i % 4;

        dr[2] = string.Format("address{0}", i);

        dr[3] = string.Format("city{0}", i);

        dt.Rows.Add(dr);

    }

    return dt;

}



private DataTable ForeignKeyTable()

{

//Two columns CustID (Value Member) and Name (Display Member).

    DataTable dt = new DataTable("ForeignKeyTable");

    dt.Columns.Add(new DataColumn("CustID", typeof(int)));

    dt.Columns.Add(new DataColumn("Name"));

    for(int i = 0; i < 4; ++i)

    {

        DataRow dr = dt.NewRow();

        dr[0] = i;

        dr[1] = string.Format("Name{0}", i);

        dt.Rows.Add(dr);

    }

    return dt;

}


{% endhighlight  %}
{% highlight vbnet %}




Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)

Me.gridDataBoundGrid1.DataSource = PrimaryTable()

Me.gridDataBoundGrid1.EnableAddNew = False



'Col 2 of the grid is the foreign key combo.

Dim gbc As GridBoundColumn = Me.gridDataBoundGrid1.Binder.InternalColumns(1)

gbc.StyleInfo.CellType = "ComboBox"

gbc.StyleInfo.DataSource = ForeignKeyTable()

gbc.StyleInfo.DisplayMember = "Name"

gbc.StyleInfo.ValueMember = "CustID"

gbc.StyleInfo.ShowButtons = GridShowButtons.ShowCurrentRow

gbc.StyleInfo.HorizontalAlignment = GridHorizontalAlignment.Left



'Just displays the primary table in a second grid without foreign key column.

Me.gridDataBoundGrid2.DataSource = Me.gridDataBoundGrid1.DataSource

Me.gridDataBoundGrid2.EnableAddNew = False



'Does not allow clicking it.

Me.gridDataBoundGrid2.Enabled = False



'Form1_Load.

End Sub



Private Function PrimaryTable() As DataTable

Dim dt As New DataTable("PrimaryTable")

dt.Columns.Add(New DataColumn("ID", GetType(Integer)))

dt.Columns.Add(New DataColumn("CustID", GetType(Integer)))

dt.Columns.Add(New DataColumn("Address"))

dt.Columns.Add(New DataColumn("City"))



Dim i As Integer

While i < 10

Dim dr As DataRow = dt.NewRow()

dr(0) = i

dr(1) = i Mod 4

dr(2) = String.Format("address{0}", i)

dr(3) = String.Format("city{0}", i)

dt.Rows.Add(dr)

i += 1

End While

Return dt



'Primary Table.

End Function



Private Function ForeignKeyTable() As DataTable



'Two columns CustID (Value Member) and Name (Display Member).

Dim dt As New DataTable("ForeignKeyTable")

dt.Columns.Add(New DataColumn("CustID", GetType(Integer)))

dt.Columns.Add(New DataColumn("Name"))



Dim i As Integer

While i < 4

Dim dr As DataRow = dt.NewRow()

dr(0) = i

dr(1) = String.Format("Name{0}", i)

dt.Rows.Add(dr)

i = i + 1

End While

Return dt



'Foreign Key Table.

End Function
{% endhighlight  %}

![](Foreign-Key-Columns-Shows-One-Value-but-Saves-Another_images/Foreign-Key-Columns-Shows-One-Value-but-Saves-Another_img1.jpeg) 



