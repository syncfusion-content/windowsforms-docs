---
layout: post
title: Formatting-Drop-down-List
description: formatting drop-down list
platform: windowsform
control: Grid
documentation: ug
---

# Formatting Drop-down List

Essential Grid has built-in support for displaying a Grid List control as a drop-down inside a grid cell. We can embed grid list controls into the grid cells and customize them.

The following screen shot shows grid cell with Grid List control as its drop-down.

  ![](Grid-Control_images/Grid-Control_img196.jpeg)





To add a Grid List control to grid cell and bind some data:

To have a Grid List control in a Grid cell, set its CellType property as _GridListControl_. An array is used as data source in the following example. You can set its DataSource and DisplayMember properties as follows:

{% highlight c# %}



ArrayList array = new ArrayList();

array.Add(new MyClass(001, "John David"));

array.Add(new MyClass(002, "Tom"));

array.Add(new MyClass(003, "Bretney"));

array.Add(new MyClass(004, "Jessy"));

array.Add(new MyClass(005, "Bruch"));

array.Add(new MyClass(006, "Johny"));



//Sets up a Grid List control cell.

this.gridControl1[rowIndex, 2].CellType = "GridListControl";



//Specifies the data source and displays member for Grid List control.

this.gridControl1[rowIndex, 2].DataSource = array;

this.gridControl1[rowIndex, 2].DisplayMember = "Name";

{% endhighlight %}

{% highlight vbnet %}



Dim array As ArrayList = New ArrayList()

array.Add(New [MyClass](1, "John David"))

array.Add(New [MyClass](2, "Tom"))

array.Add(New [MyClass](3, "Bretney"))

array.Add(New [MyClass](4, "Jessy"))

array.Add(New [MyClass](5, "Bruch"))

array.Add(New [MyClass](6, "Johny"))



'Sets up a Grid List control cell.

Me.gridControl1(rowIndex, 2).CellType = "GridListControl"



'Specifies the data source and displays member for the Grid List control.

Me.gridControl1(rowIndex, 2).DataSource = array

Me.gridControl1(rowIndex, 2).DisplayMember = "Name"
{% endhighlight %}

We have now added a Grid List control in a Grid cell and bound the data to it. This Grid List control can be customized by accessing GridDropDownGridListControlCellRenderer class inside the CurrentCellShowedDropDown event handler.


> Note: CurrentCellShowedDropDown event is handled once the drop-down of the specified grid cell is made visible by clicking the downward arrow at the end of the cell.

The following code illustrates this event:

{% highlight c# %}



private void gridControl1_CurrentCellShowedDropDown(object sender, EventArgs e)

{

//Retrieves the DropDownList Cell Renderer.

    GridDropDownGridListControlCellRenderer listRenderer =

    (GridDropDownGridListControlCellRenderer)this.gridControl1.CellRenderers["GridListControl"];



//Applies styles to Grid List control in the drop-down.

    listRenderer.ListControlPart.Grid.TableStyle.Font.Size = 17.8f;

    listRenderer.ListControlPart.BorderStyle = BorderStyle.FixedSingle;

    listRenderer.ListControlPart.Grid.BackColor = Color.FromArgb(250, 240, 230);

    listRenderer.ListControlPart.Grid.DefaultGridBorderStyle = GridBorderStyle.Solid;

    listRenderer.ListControlPart.Grid.TableStyle.TextColor = Color.MidnightBlue;

    listRenderer.ListControlPart.Grid.Properties.GridLineColor = Color.FromArgb(208, 215, 229);

    listRenderer.ListControlPart.FillLastColumn = false;

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub gridControl1_CurrentCellShowedDropDown(ByVal sender As Object, ByVal e As EventArgs)



'Retrieves the DropDownList Cell Renderer.

    Dim listRenderer As GridDropDownGridListControlCellRenderer =

    CType(Me.gridControl1.CellRenderers("GridListControl"), GridDropDownGridListControlCellRenderer)



'Applies styles to Grid List control in the drop-down.

    listRenderer.ListControlPart.Grid.TableStyle.Font.Size = 17.8F

    listRenderer.ListControlPart.BorderStyle = BorderStyle.FixedSingle

    listRenderer.ListControlPart.Grid.BackColor = Color.FromArgb(250, 240, 230)

    listRenderer.ListControlPart.Grid.DefaultGridBorderStyle = GridBorderStyle.Solid

    listRenderer.ListControlPart.Grid.TableStyle.TextColor = Color.MidnightBlue

    listRenderer.ListControlPart.Grid.Properties.GridLineColor = Color.FromArgb(208, 215, 229)

    listRenderer.ListControlPart.FillLastColumn = False

End Sub
{% endhighlight %}

You can apply various styles such as table style, border style, text color, grid line color, etc, to the Grid List control inside a grid cell as in Figure 1.  

