---
layout: post
title: How-to-Insert-an-Unbound-CheckBox-Column
description: how to insert an unbound checkbox column
platform: windowsforms
control: Tools
documentation: ug
---

# How to Insert an Unbound CheckBox Column

### Introduction

There are three steps needed to have an unbound checkbox column in GridDataBoundGrid.

1. Add the unbound column to GridDataBoundGrid.
2. A bounded column has it own datastore to store values that are entered in it. But, in an unbound column there is no datastore present in it; so it has to be handled manually by adding any collection like a hashtable. To make an unbound column work together with sort, assign a key as the corresponding primary key value in the row in the Key/Value pair of the external collection.
3. Then Model.QueryCellInfo event is used to display values in the checkbox. The Model.SaveCellInfo event is used to save changes that are made by the user in the checkbox.

#### Example

{% highlight c# %}



private void Form1_Load(object sender, System.EventArgs e)

                {

//Creates a DataTable.

                        DataTable dt = new DataTable("Table");

                        dt.Columns.Add("Product",typeof(System.String));

                        dt.Columns.Add("Product_ID",typeof(System.Int32));



//Adds a primary key.

                        dt.PrimaryKey = new DataColumn[] {dt.Columns["Product_ID"]};

                        dt.Columns.Add("QtyPerUnit",typeof(System.String));

                        dt.Columns.Add("UnitPrice",typeof(System.Double));



                        dt.Rows.Add(new Object[] { "Coffee",1,"1 kg",200.00});

                        dt.Rows.Add(new Object[] { "Tea",2,"1 kg",120.00});

                        dt.Rows.Add(new Object[] { "Milk Powder",3,"1 kg",260.00});

                        dt.Rows.Add(new Object[] { "Biscuits",4,"1 Packet",20.00});

                        dt.Rows.Add(new Object[] { "Pepsi",5,"1 Lit",60.00});

                        dt.Rows.Add(new Object[] { "Coke",6,"1 Lit",55.00});



// Sets DataSource property.

                        this.gridDataBoundGrid1.DataSource = dt;



//Creates an unbound column for checkbox.

                        GridBoundColumnsCollection column5 = (GridBoundColumnsCollection) this.gridDataBoundGrid1.Binder.InternalColumns.Clone();

                        GridBoundColumn Ucolumn5 = new GridBoundColumn();



//Sets Header Text and assign Mapping Name.

                        Ucolumn5.HeaderText = "CheckBox";

                        Ucolumn5.MappingName = "CheckBox";



//Binds the unbound column to the grid.

                        column5.Add(Ucolumn5);

                        this.gridDataBoundGrid1.Binder.GridBoundColumns = column5;



//Handles Query Cell Info to display the values in CheckBox column.

                        this.gridDataBoundGrid1.Model.QueryCellInfo += new GridQueryCellInfoEventHandler(Model_QueryCellInfo);



//Handles SaveCellInfo to save changes that are made by the user in the CheckBox.

                        this.gridDataBoundGrid1.Model.SaveCellInfo += new GridSaveCellInfoEventHandler(Model_SaveCellInfo);

                }



                private void Model_QueryCellInfo(object sender, GridQueryCellInfoEventArgs e)

                {

                        GridModel model = this.gridDataBoundGrid1.Model;

                        int ColIndex = this.gridDataBoundGrid1.Model.NameToColIndex("CheckBox");

                        if(e.RowIndex > 0 && e.ColIndex == ColIndex)

                        {

//Sets up a CheckBox control.

                                e.Style.CellType = "CheckBox";

                                e.Style.HorizontalAlignment = GridHorizontalAlignment.Center;

                                e.Style.VerticalAlignment = GridVerticalAlignment.Middle;

                                e.Style.CellValueType = typeof(bool);



//Determines the Checked and Unchecked values of CheckBox.

                                e.Style.CheckBoxOptions.CheckedValue = "True";

                                e.Style.CheckBoxOptions.UncheckedValue = "False";

                                e.Style.Enabled = true;

                                int keyColIndex = model.NameToColIndex("Product_ID");

                                string key = model[e.RowIndex, keyColIndex].Text;

                                if (key != null)

                                {

                                        object value = CheckBoxValues[key];



//Displays the value in checkbox.

                                        if (value != null)

                                                e.Style.CellValue = value;

                                }

                        }

                }



                private void Model_SaveCellInfo(object sender, GridSaveCellInfoEventArgs e)

                {

                        GridModel model = this.gridDataBoundGrid1.Model;

                        int ColIndex = this.gridDataBoundGrid1.Model.NameToColIndex("CheckBox");

                        if(e.RowIndex > 0 && e.ColIndex == ColIndex)

                        {

                                int keyColIndex = model.NameToColIndex("Product_ID");

                                string key = model[e.RowIndex, keyColIndex].Text;



//Saves the checkbox value that is modified by the user.

                                if (key != null)

                                        CheckBoxValues[key] = e.Style.CellValue;

                        }

                }

        }

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load



'Creates a DataTable.

   Dim dt As DataTable = New DataTable("Table")

   dt.Columns.Add("Product",GetType(System.String))

   dt.Columns.Add("Product_ID",GetType(System.Int32))



'Adds a primary key.

   dt.PrimaryKey = New DataColumn() {dt.Columns("Product_ID")}

   dt.Columns.Add("QtyPerUnit",GetType(System.String))

   dt.Columns.Add("UnitPrice",GetType(System.Double))



   dt.Rows.Add(New Object() { "Coffee",1,"1 kg",200.00})

   dt.Rows.Add(New Object() { "Tea",2,"1 kg",120.00})

   dt.Rows.Add(New Object() { "Milk Powder",3,"1 kg",260.00})

   dt.Rows.Add(New Object() { "Biscuits",4,"1 Packet",20.00})

   dt.Rows.Add(New Object() { "Pepsi",5,"1 Lit",60.00})

   dt.Rows.Add(New Object() { "Coke",6,"1 Lit",55.00})



'Sets DataSource property.

   Me.gridDataBoundGrid1.DataSource = dt



'Creates an unbound column for checkbox.

   Dim column5 As GridBoundColumnsCollection = CType(Me.gridDataBoundGrid1.Binder.InternalColumns.Clone(), GridBoundColumnsCollection)

   Dim Ucolumn5 As GridBoundColumn = New GridBoundColumn()



'Sets Header Text and assign Mapping Name.

   Ucolumn5.HeaderText = "CheckBox"

   Ucolumn5.MappingName = "CheckBox"



'Binds the unbound column to the grid.

   column5.Add(Ucolumn5)

   Me.gridDataBoundGrid1.Binder.GridBoundColumns = column5



'Handles Query Cell Info to display the values in CheckBox column.

   AddHandler gridDataBoundGrid1.Model.QueryCellInfo, AddressOf Model_QueryCellInfo



'Handles SaveCellInfo to save changes that are made by the user in the CheckBox.

   AddHandler gridDataBoundGrid1.Model.SaveCellInfo, AddressOf Model_SaveCellInfo

 End Sub



 Private Sub Model_QueryCellInfo(ByVal sender As Object, ByVal e As GridQueryCellInfoEventArgs)

    Dim model As GridModel = Me.gridDataBoundGrid1.Model

    Dim ColIndex As Integer = Me.gridDataBoundGrid1.Model.NameToColIndex("CheckBox")

    If e.RowIndex > 0 AndAlso e.ColIndex = ColIndex Then



'Set up a CheckBox control.

    e.Style.CellType = "CheckBox"

    e.Style.HorizontalAlignment = GridHorizontalAlignment.Center

    e.Style.VerticalAlignment = GridVerticalAlignment.Middle

    e.Style.CellValueType = GetType(Boolean)



'Determines the Checked and Unchecked values of CheckBox.

    e.Style.CheckBoxOptions.CheckedValue = "True"

    e.Style.CheckBoxOptions.UncheckedValue = "False"

    e.Style.Enabled = True

    Dim keyColIndex As Integer = model.NameToColIndex("Product_ID")

    Dim key As String = model(e.RowIndex, keyColIndex).Text

    If Not key Is Nothing Then

       Dim value As Object = CheckBoxValues(key)



'Displays the value in checkbox.

       If Not value Is Nothing Then

            e.Style.CellValue = value

         End If

      End If

   End If

End Sub



Private Sub Model_SaveCellInfo(ByVal sender As Object, ByVal e As GridSaveCellInfoEventArgs)

   Dim model As GridModel = Me.gridDataBoundGrid1.Model

   Dim ColIndex As Integer = Me.gridDataBoundGrid1.Model.NameToColIndex("CheckBox")

   If e.RowIndex > 0 AndAlso e.ColIndex = ColIndex Then

      Dim keyColIndex As Integer = model.NameToColIndex("Product_ID")

      Dim key As String = model(e.RowIndex, keyColIndex).Text



'Saves the checkbox value that is modified by the user.

      If Not key Is Nothing Then

             CheckBoxValues(key) = e.Style.CellValue

      End If

   End If

End Sub

        End Class

End Namespace

{% endhighlight %}

