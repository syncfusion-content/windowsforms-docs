---
layout: post
title: GridBoundColumns-and-Controlling-the-Column-Format
description: gridboundcolumns and controlling the column format
platform: windowsform
control: GridDataBoundGrid
documentation: ug
---


# GridBoundColumns and Controlling the Column Format

To control properties of a column in your Grid DataBound Grid, you must use GridBoundColumn class object. You can also explicitly add GridBoundColumn object to GridDataBoundGrid.GridBoundColumns collection for each column that you want to see in the grid or you can let GridDataBoundGrid.Binder class generate these columns for you. 

Here are the code samples that will explicitly add GridBoundColumns. Note that you can add these GridBoundColumns at design-time provided you properly set MappingName property for each column.

{% highlight c# %}

private void Form1_Load(object sender, System.EventArgs e)

{

    this.gridDataBoundGrid1.DataSource = ReturnATable();

    this.gridDataBoundGrid1.EnableAddNew = false;

    this.gridDataBoundGrid1.BackColor = Color.FromArgb(0xcc, 0xd4, 0xe6);



//Creates GridBoundColumn for each displayed column.

    GridBoundColumn gbc = new GridBoundColumn();

    gbc.MappingName = "FirstName";  



//Must set to column mapping name.

    gbc.HeaderText = "Name";



//Sets some style properties.

    gbc.StyleInfo.BackColor = Color.FromArgb(0xC0, 0xC9, 0xdb);

    gbc.StyleInfo.TextColor = Color.Blue;



//Adds the column to GridBoundColumns collection.

    this.gridDataBoundGrid1.GridBoundColumns.Add(gbc);



//Repeats for each column.

    gbc = new GridBoundColumn();

    gbc.MappingName = "LastName";

    gbc.HeaderText = "FamilyName";

    gbc.StyleInfo.Font.Bold = true;

    this.gridDataBoundGrid1.GridBoundColumns.Add(gbc);



    gbc = new GridBoundColumn();

    gbc.MappingName = "City";

    gbc.HeaderText = "City";

    this.gridDataBoundGrid1.GridBoundColumns.Add(gbc);



//Needs to initialize GridBoundColumns so that their settings will replace currently set values.

    this.gridDataBoundGrid1.Binder.InitializeColumns();



//Resizes the column headers.

    this.gridDataBoundGrid1.Model.ColWidths.ResizeToFit(GridRangeInfo.Row(0), GridResizeToFitOptions.NoShrinkSize);

}

{% endhighlight %}

{% highlight vbnet %}

Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)

Me.gridDataBoundGrid1.DataSource = ReturnATable()

Me.gridDataBoundGrid1.EnableAddNew = False

Me.gridDataBoundGrid1.BackColor = Color.FromArgb(&HCC, &HD4, &HE6)



'Creates GridBoundColumn for each displayed column.

Dim gbc As New GridBoundColumn()

gbc.MappingName = "FirstName"



'Must set to column mapping name.

gbc.HeaderText = "Name"



'Sets some style properties.

gbc.StyleInfo.BackColor = Color.FromArgb(&HC0, &HC9, &HDB)

gbc.StyleInfo.TextColor = Color.Blue



'Adds column to GridBoundColumns collection.

Me.gridDataBoundGrid1.GridBoundColumns.Add(gbc)



'Repeats for each column.

gbc = New GridBoundColumn()

gbc.MappingName = "LastName"

gbc.HeaderText = "FamilyName"

gbc.StyleInfo.Font.Bold = True

Me.gridDataBoundGrid1.GridBoundColumns.Add(gbc)



gbc = New GridBoundColumn()

gbc.MappingName = "City"

gbc.HeaderText = "City"

Me.gridDataBoundGrid1.GridBoundColumns.Add(gbc)



'Needs to initialize GridBoundColumns so their settings will replace currently set values.

Me.gridDataBoundGrid1.Binder.InitializeColumns()

'Resizes column headers.

Me.gridDataBoundGrid1.Model.ColWidths.ResizeToFit(GridRangeInfo.Row(0), GridResizeToFitOptions.NoShrinkSize)



'Form1_Load

End Sub

{% endhighlight %}


