---
layout: post
title: GridGrouping-Control
description: gridgrouping control
platform: windowsform
control: GridGroupingControl
documentation: ug
---

## GridGrouping Control

This section discusses specific solutions for very specific tasks:

### General

#### How to Access Corresponding Parent Table's Row from the Child

Get the table's current element. Then cast this element to GridNestedTable. You can now access the parent table for the current element. This is a recursive process. 

Example

{% highlight C# %}  



Element el = this.gridGroupingControl1.TableControl.Table.CurrentElement;

    if(el != null)

    {

        if(el is GridRecord)

        {

            Console.WriteLine("no parent row...");

        }



//Checks for a child table.

        else if(el is GridNestedTable)

        {

            GridNestedTable gnt = el as GridNestedTable;

            GridNestedTable gnt1 = gnt;

            while(gnt1 != null && gnt1.ChildTable != null)

            {

                 gnt = gnt1;



//Gets the handle for parent table.

                 gnt1 = gnt.ChildTable.ParentTable.CurrentElement as GridNestedTable;

            }



//Retrieves the corresponding parent table's record.

            DataRowView drv = gnt.ParentRecord.GetData() as DataRowView;



//Shows column 2.

            Console.WriteLine(drv[1].ToString()); 

        }

    }

{% endhighlight %}

 {% highlight vbnet %} 


Dim el As Element = Me.GridGroupingControl1.TableControl.Table.CurrentElement

    If Not (el Is Nothing) Then

        If TypeOf el Is GridRecord Then

            Console.WriteLine("no parent row...")

        Else



'Checks for a child table.

            If TypeOf el Is GridNestedTable Then

                Dim gnt As GridNestedTable = el

                Dim gnt1 As GridNestedTable

                If TypeOf gnt Is GridNestedTable Then

                    gnt1 = gnt

                Else

                    gnt1 = Nothing

                End If



                While Not (gnt1 Is Nothing) AndAlso Not (gnt1.ChildTable Is Nothing)

                    gnt = gnt1

                    If TypeOf gnt.ChildTable.ParentTable.CurrentElement Is GridNestedTable Then



'Gets the handle for parent table.

                        gnt1 = gnt.ChildTable.ParentTable.CurrentElement

                    Else

                        gnt1 = Nothing

                    End If

                End While



'Retrieves the corresponding parent table's record.

                Dim drv As DataRowView = gnt.ParentRecord.GetData()



'Shows column 2.

                Console.WriteLine(drv(1).ToString()) 

            End If

        End If

End If

{% endhighlight %}


#### How to access the current record

To access the current record, use the following code.

{% highlight C# %}  



Record rec = this.gridGroupingControl1.Table.CurrentRecord;

Trace.WriteLine(rec.ToString());

{% endhighlight %}

{% highlight vbnet %} 


Dim rec As Record = Me.gridGroupingControl1.Table.CurrentRecord

Trace.WriteLine(rec.ToString())

{% endhighlight %}


#### How to add and format unbound columns in GridGrouping control

The unbound columns can be added and formatted using the below code.

{% highlight C# %}  



//Adds unbound column in GridGroupingControl.

this.gridGroupingControl1.TableDescriptor.UnboundFields.Add("UnboundColumn1");



//Formats the Unbound column.

this.gridGroupingControl1.TableDescriptor.Columns["UnboundColumn1"].Appearance.AnyRecordFieldCell.CellType = "CheckBox";

this.gridGroupingControl1.TableDescriptor.Columns["UnboundColumn1"].Appearance.AnyRecordFieldCell.BackColor = Color.LightSteelBlue;

{% endhighlight %}

 {% highlight vbnet %} 



'Adds an Unbound column in a  GridGroupingControl.

Me.gridGroupingControl1.TableDescriptor.UnboundFields.Add("UnboundColumn1")



'Formats an Unbound column in GridGroupingControl.

Me.gridGroupingControl1.TableDescriptor.Columns("UnboundColumn1").Appearance.AnyRecordFieldCell.CellType = "CheckBox"

Me.gridGroupingControl1.TableDescriptor.Columns("UnboundColumn1").Appearance.AnyRecordFieldCell.BackColor = Color.LightSteelBlue

{% endhighlight %} 

#### How to change the caption text

This can be done using the code below.

{% highlight C# %}  



// Sets the caption text.

// {TableName} - Displays the CaptionSection.ParentTableDescriptor.Name

//{CategoryName} - Displays the CaptionSection.ParentGroup.Name

//{Category} - Displays the CaptionSection.ParentGroup.Category

//{RecordCount} - Displays the CaptionSection.ParentGroup.GetFilteredRecordCount()

this.gridGroupingControl1.TopLevelGroupOptions.CaptionText = "Tablename is {TableName} : {Category} : {RecordCount}";

{% endhighlight %}

{% highlight vbnet %} 



'Sets the caption text.

' {TableName} - Displays the CaptionSection.ParentTableDescriptor.Name

'{CategoryName} - Displays the CaptionSection.ParentGroup.Name

'{Category} - Displays the CaptionSection.ParentGroup.Category

'{RecordCount} - Displays the CaptionSection.ParentGroup.GetFilteredRecordCount()

Me.gridGroupingControl1.TopLevelGroupOptions.CaptionText = "Tablename is {TableName} : {Category} : {RecordCount}"

 {% endhighlight %} 

#### How to disable the resizing of rows and columns

This can be done using the below code.

{% highlight C# %}  



//Code to disable the resizing of rows.

this.gridGroupingControl1.TableModel.Options.ResizeRowsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None;



//Code to disable the column resizing.

this.gridGroupingControl1.TableModel.Options.ResizeColsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None;

{% endhighlight %}

{% highlight vbnet %} 


'Code to disable the column resizing.

Me.gridGroupingControl1.TableModel.Options.ResizeColsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None



'Code to disable the resizing of rows.

Me.gridGroupingControl1.TableModel.Options.ResizeRowsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None

{% endhighlight %} 


#### How to Efficiently Customize Child Table/Group using Custom Engine.

When customizing GridChildTable/GridGroup by deriving GridChildTable/GridGroup in the custom engine, OnInitializeVisibleCounters method and OnEnsureInitialized method must also be overridden along with other overrides. Otherwise, GridGroup calls into GridGroup extend methods and sometimes bypasses methods like IsChildVisible that you have overridden.

In OnInitializeVisibleCounters override, the total visible elements count, the total vertical scroll distance of elements in pixels and the total custom count of the visible elements must be calculated and set to CachedVisibleCount, CachedYamountCount and CachedVisibleCustomCount respectively. The OnEnsureInitialized override method must return false (i.e changes were detected and the object was not updated) to ensure that the object is up to data.

#### How to group a column programmatically

To group a column programmatically, use the following code.

{% highlight C# %}  


//Shows the GroupDropArea.

this.gridGroupingControl1.ShowGroupDropArea = true;

//Groups by "Col1".

this.gridGroupingControl1.TableDescriptor.GroupedColumns.Add("Col1", ListSortDirection.Ascending);

{% endhighlight %}

{% highlight vbnet %} 


'Shows the GroupDropArea.

Me.gridGroupingControl1.ShowGroupDropArea = True

'Groups by "Col1".

Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Add("Col1", ListSortDirection.Ascending)

{% endhighlight %}


#### How to Hide Custom Option in the FilterBar DropDown

To achieve this, you need to implement custom filterbar cell deriving cellmodel/cellrenderer from GridTableFilterBarCellModel/GridTableFilterBarCellRenderer.

* GridTableFilterBarCellModel.FillWithChoices method is overridden to remove the string "Custom" from the list.
* GridTableFilterBarCellModel.Select method is rewritten with "Select_withoutcustom" method, which specifies the index for the selected item. You can pass the index for the "Custom" selected item as 0.
* GridTableFilterBarCellModel.ListBoxMouseUp() method is overridden to invoke Select_withoutcustom method instead of the Select method.

{% highlight C# %}  



public class GridTableFilterBarCellModel1: GridTableFilterBarCellModel

{

    public GridTableFilterBarCellModel1(Syncfusion.Windows.Forms.Grid.GridModel gm):base(gm)

    {

    }



//Overrides FillWithChoices to remove 'Custom' option from the list.

    public override void FillWithChoices(ListBox listBox, GridStyleInfo style, out bool exclusive)

    {

       exclusive = true;

       GridTableCellStyleInfo tableStyleInfo = (GridTableCellStyleInfo) style;

       object[] items = (object[]) GetFilterBarChoices(tableStyleInfo.TableCellIdentity);

       listBox.Items.Clear();

       if (items != null)

       {

            listBox.Items.Add(SelectAllText);

            foreach (object item in items)

            {

                 if (item is DBNull)

                 listBox.Items.Add(SelectEmptyText);

                 else if (item != null)

                 listBox.Items.Add(style.GetFormattedText(item));

            }

       }

    }



//Customizes the 'Select' method to hide the Custom option.

    public void Select_WithoutCustom(GridTableCellStyleInfoIdentity tableCellIdentity, int index)

    {

        if (index >= 0)

        {

           if (index == 0)

           {

                   ResetFilterBar(tableCellIdentity);

           }

           else if (index == 1)

           {

                SelectItem(tableCellIdentity, 0); 

           }

           else

           {

                SelectItem(tableCellIdentity, index-1);

           }

        }

    }

    public override GridCellRendererBase CreateRenderer(GridControlBase control)

    {

            return new Cellrenderer(control, this); 

    }



}

public class Cellrenderer : GridTableFilterBarCellRenderer

{

      public Cellrenderer(GridControlBase grid, GridCellModelBase cellModel): base(grid , cellModel)

     {

     }

          public new Model.Form1.GridTableFilterBarCellModel1 Model

          {

                  get

                 {

                     return (Model.Form1.GridTableFilterBarCellModel1) base.Model;

                 }

          }



//Overridse ListBoxMouseUP method to call Customized Select method instead of the usual 'Select' method.

          protected override void ListBoxMouseUp(object sender, MouseEventArgs e)

          {

              CurrentCell.CloseDropDown(PopupCloseType.Done);

              GridTableCellStyleInfo tableStyleInfo = (GridTableCellStyleInfo) this.StyleInfo;

              GridTableCellStyleInfoIdentity tableCellIdentity = tableStyleInfo.TableCellIdentity;

              Model.Select_WithoutCustom(tableCellIdentity, this.ListBoxPart.SelectedIndex);



//Does not call base class - ignores. 

              SetTextBoxText(GetFilterBarText(StyleInfo), false);

          }

}

{% endhighlight %}

 {% highlight vbnet %} 



Public Class GridTableFilterBarCellModel1: Inherits GridTableFilterBarCellModel 


       Public Sub New(ByVal gm As Syncfusion.Windows.Forms.Grid.GridModel) 

            MyBase.New(gm) 

       End Sub 



'Overrides FillWithChoices to remove 'Custom' option from the list.

      Public Overrides Sub FillWithChoices(ByVal listBox As ListBox, ByVal style As GridStyleInfo, &lt;System.Runtime.InteropServices.Out()&gt;     ByRef exclusive As Boolean) 


            exclusive = True 

            Dim tableStyleInfo As GridTableCellStyleInfo = CType(style, GridTableCellStyleInfo) 

            Dim items As Object() = CType(GetFilterBarChoices(tableStyleInfo.TableCellIdentity), Object()) 

            listBox.Items.Clear() 

            If Not items Is Nothing Then 


                  listBox.Items.Add(SelectAllText) 

                  For Each item As Object In items 


                        If TypeOf item Is DBNull Then 

                               listBox.Items.Add(SelectEmptyText) 

                        Else If Not item Is Nothing Then 

                               listBox.Items.Add(style.GetFormattedText(item))
                        End If 

                   Next item 

            End If 

       End Sub



'Customizes the 'Select' method to hide the Custom option. 

       Public Sub Select_WithoutCustom(ByVal tableCellIdentity As GridTableCellStyleInfoIdentity, ByVal index As Integer) 


             If index >= 0 Then 


                  If index = 0 Then 


                         ResetFilterBar(tableCellIdentity) 


                  Else If index = 1 Then 


                         SelectItem(tableCellIdentity, 0) 


                  Else 


                         SelectItem(tableCellIdentity, index-1) 

                 End If 

             End If 

       End Sub 

       Public Overrides Function CreateRenderer(ByVal control As GridControlBase) As GridCellRendererBase 


              Return New Cellrenderer(control, Me) 

       End Function 

End Class 

} 

Public Class Cellrenderer : Inherits GridTableFilterBarCellRenderer 


           Public Sub New(ByVal grid As GridControlBase, ByVal cellModel As GridCellModelBase) 

                 MyBase.New(grid, cellModel) 

           End Sub 


           Public Shadows ReadOnly Property Model() As Model.Form1.GridTableFilterBarCellModel1 


              Get 


                    Return CType(MyBase.Model, Model.Form1.GridTableFilterBarCellModel1) 

              End Get 

           End Property 



'Overrides ListBoxMouseUP method to call Customized Select method instead of the usual 'Select' method.

           Protected Overrides Sub ListBoxMouseUp(ByVal sender As Object, ByVal e As MouseEventArgs) 


                  CurrentCell.CloseDropDown(PopupCloseType.Done) 

                  Dim tableStyleInfo As GridTableCellStyleInfo = CType(Me.StyleInfo, GridTableCellStyleInfo) 

                  Dim tableCellIdentity As GridTableCellStyleInfoIdentity = tableStyleInfo.TableCellIdentity 


                  Model.Select_WithoutCustom(tableCellIdentity, Me.ListBoxPart.SelectedIndex) 



'Does not call base class - ignores. 

                 SetTextBoxText(GetFilterBarText(StyleInfo), False) 

            End Sub 

End Class

{% endhighlight %}

#### How to Hide or Unhide the Columns in a Grouping Grid

The TableDescriptor object has VisibleColumns collection that you can use to control the columns that are visible. You can hide or unhide columns using the following code.

Example

{% highlight C# %} 


//Hides.

this.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("Col1");



//Unhides.

this.gridGroupingControl1.TableDescriptor.VisibleColumns.Add("Col1");

 {% endhighlight %}


 {% highlight vbnet %} 


'Hides.

Me.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("Col1")



'Unhides.

Me.gridGroupingControl1.TableDescriptor.VisibleColumns.Add("Col1")

{% endhighlight %} 

#### How to Place a Checkbox in a Header Cell

A CheckBox can be placed in a header cell of the GridGroupingControl by handling QueryCellStyleInfo event. The value of the check box has to be stored in any datatype and SaveCellText handler saves the value from the grid. To get this working, you need to cancel sorting of the header cell by handling TableControlCellClick event.

In the TableControl.MouseUp event handler, CellRenderer's mouseup has to be raised. By default, selectcells mousecontroller calls Cellrenderer's MouseUp, which in turn raises checkboxclick. DragGroupHeader mousecontroller, which is for the header cells and does not call Renderer's mouseup. So you have to explicitly call Renderer's Mouseup from TableControl's Mouseup checking for MouseController type. Refer to the attached sample for more details.

Example

{% highlight C# %}  


 this.gridGroupingControl1.TableControl.MouseUp += new MouseEventHandler(TableControl_MouseUp);

private void TableControl_MouseUp(object sender, MouseEventArgs e)

{

      int row, col;

      this.gridGroupingControl1.TableControl.PointToRowCol(new Point(e.X, e.Y), out row, out col);

      GridTableCellStyleInfo style = this.gridGroupingControl1.TableControl.Model[row, col];

      IMouseController controller;

      this.gridGroupingControl1.TableControl.MouseControllerDispatcher.HitTest(new Point(e.X, e.Y), e.Button, e.Clicks, out controller);

      if(controller.Name == "DragGroupHeader")

      {

           this.gridGroupingControl1.TableControl.GetCellRenderer(row, col).RaiseMouseUp(row, col, e);

      }

}

{% endhighlight %}


 {% highlight vbnet %} 


AddHandler gridGroupingControl1.TableControl.MouseUp, AddressOf TableControl_MouseUp

Private Sub TableControl_MouseUp(ByVal sender As Object, ByVal e As MouseEventArgs)

       Dim row, col As Integer

       Me.gridGroupingControl1.TableControl.PointToRowCol(New Point(e.X, e.Y), row, col)

       Dim style As GridTableCellStyleInfo = Me.gridGroupingControl1.TableControl.Model(row, col)

       Dim controller As IMouseController

       Me.gridGroupingControl1.TableControl.MouseControllerDispatcher.HitTest(New Point(e.X, e.Y), e.Button, e.Clicks, controller)

       If controller.Name = "DragGroupHeader" Then

             Me.gridGroupingControl1.TableControl.GetCellRenderer(row, col).RaiseMouseUp(row, col, e)

       End If

End Sub

{% endhighlight %} 


#### How to Place UserControl in a Header Cell

To have User Control in GridGroupingControl, GridGenericCellModel and GridGenericCellRenderer classes must be derived and User Control designed must be made as a cellmodel in the GridGroupingControl using these derived classes.

The following are the steps that need to be followed to do this.

Step 1: The UserControl form is added to the project and the required controls are dropped into it.

Step 2: The GridGenericCellModel and GridGenericCellRenderer classes are derived and the UserControl is drawn accordingly to fit into the required cell header.

{% highlight C# %}  


 public class CustomControlCellRenderer: GridGenericControlCellRenderer

{

      Control host = null;

      public CustomControlCellRenderer(GridControlBase grid, GridCellModelBase cellModel)

      : base(grid, cellModel)

      {

           SupportsFocusControl = true;

      }

      protected override void OnDraw(Graphics g, Rectangle clientRectangle, int rowIndex, int colIndex, GridStyleInfo style)

      {

           if (host == null)

           {

               host = new Control();

               Grid.Controls.Add(host);

           }

           Button c = CustomControlCellModel.CustomControl;

           FixControlParent(c);

           c.Bounds = clientRectangle;

           c.Refresh();

      }

}

{% endhighlight %}


{% highlight vbnet %} 



Public Class CustomControlCellRenderer Inherits GridGenericControlCellRenderer

     Private host As Control = Nothing

     Public Sub New(ByVal grid As GridControlBase, ByVal cellModel As GridCellModelBase)

          MyBase.New(grid, cellModel)

          SupportsFocusControl = true

     End Sub

     Protected Overrides Sub OnDraw(ByVal g As Graphics, ByVal clientRectangle As Rectangle, ByVal rowIndex As Integer, ByVal colIndex As Integer, ByVal style As GridStyleInfo)

            If (host = Nothing) Then

               host = New Control

               Grid.Controls.Add(host)

            End If

            Dim c As Button = CustomControlCellModel.CustomControl

            FixControlParent(c)

            c.Bounds = clientRectangle

            c.Refresh

      End Sub

End Class

 {% endhighlight %} 

Step 3: A new CellType is created by adding the instance of derived generic cell model class into the GridGroupingControl's cellmodels.

{% highlight C# %} 



CustomControlCellModel.CustomControl = new Button();

this.gridGroupingControl1.Table.TableModel.CellModels.Add("UserControl",new CustomControlCellModel(this.gridGroupingControl1.TableModel));

 {% endhighlight %}

{% highlight vbnet %}  



CustomControlCellModel.CustomControl = New Button

Me.gridGroupingControl1.Table.TableModel.CellModels.Add("UserControl", New CustomControlCellModel(Me.gridGroupingControl1.TableModel))

{% endhighlight %} 

#### How to Prevent Columns Resizing for Child Tables

To prevent GridGroupingControl's child table or grandchild table's columns from getting resized, you must handle TableControlResizingColumns event of the grid. In the event handler, check for the e.TableDescriptor.Name and cancel the event by setting e.Cancel to true. The following code snippet cancels resizing the Child table.

{% highlight C# %}  


//Prevents resizing columns for all child tables.

private void gridGroupingControl1_TableControlResizingColumns(object sender,Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlResizingColumnsEventArgs e)

{

    if(this.gridGroupingControl1.TableDescriptor.Name != e.TableControl.TableDescriptor.Name)

    {

        e.Inner.Cancel = true;

    }

}

//Prevents resizing columns for any particular child table.

private void gridGroupingControl1_TableControlResizingColumns(object sender,Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlResizingColumnsEventArgs e)

{

    if(e.TableControl.TableDescriptor.Name = "ChildTable")

    {

        e.Inner.Cancel = true;

    }

}

{% endhighlight %}


{% highlight vbnet %}  


'Prevents resizing columns for all child tables.

Private Sub gridGroupingControl1_TableControlResizingColumns(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlResizingColumnsEventArgs) Handles gridGroupingControl1.TableControlResizingColumns

    If Me.gridGroupingControl1.TableDescriptor.Name &lt;&gt; e.TableControl.TableDescriptor.Name Then

             e.Inner.Cancel = True

    End If

End Sub

'Prevent re sizing columns for any particular child table.

Private Sub gridGroupingControl1_TableControlResizingColumns(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlResizingColumnsEventArgs)

    If e.TableControl.TableDescriptor.Name = "ChildTable" Then

            e.Inner.Cancel = True

    End If

End Sub

{% endhighlight %} 


#### How to reject the changes made to GridGroupingControl

By default, any changes made to GridGroupingControl will affect the underlying data source. In order to cancel the changes, you can make use of RejectChanges method to reject the recent changes made to the data source. Also, ensure that AcceptChanges method is called after date source is filled, as RejectChanges method will roll back all the changes made to the data source since the last time the AcceptChanges method was called.

{% highlight C# %}  



private void button1_Click(object sender, EventArgs e) 

{ 

DataTable dt = this.gridGroupingControl1.DataSource as DataTable; 

dt.RejectChanges(); 

}

{% endhighlight %}

{% highlight vbnet %}  


Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs)

Dim dt As DataTable = TryCast(Me.gridGroupingControl1.DataSource, DataTable)

dt.RejectChanges()

End Sub

{% endhighlight %} 


#### How to resize columns to fit in a page while exporting to PDF

To resize columns to fit in a page, you can use property ExportRange of GridPDFConverter. The property is used to set number of rows to be exported in a page. The ExportToPdfWithMerge method is used to export the grid.

Example

{% highlight C# %}  

    GridPDFConverter pdfConvertor = new GridPDFConverter();

//Range of rows to be exported in a PDF file

         pdfConvertor.ExportRange = 40;



//Merged Export.

        pdfConvertor.ExportToPdfWithMerge(ref doc, this.gridGroupingControl1.TableControl );



//Resizez the column to fit in PDF.

       float temppercent = currentPercent;

       this.gridGroupingControl1.BeginUpdate();

       PdfDocument doc = new PdfDocument();

       Hashtable ht = new Hashtable();

       for (int i = 0; i < gridGroupingControl1.TableDescriptor.Columns.Count; i++)

                       ht.Add(i, gridGroupingControl1.TableDescriptor.Columns[i].Width)

       float gridWidth = this.gridGroupingControl1.TableModel.ColWidths.GetTotal(0,            gridGroupingControl1.TableDescriptor.Columns.Count);

       if (gridWidth > doc.PageSettings.Width + 80)

          {

             float scale = (gridWidth / (doc.PageSettings.Width + 80)) - currentPercent;

                zoomGrid(currentPercent - scale);

          }



{% endhighlight %} 

{% highlight vbnet %} 


Dim pdfConvertor As New GridPDFConverter()



'Range of rows to be exported in a PDF file.

          pdfConvertor.ExportRange = 40



'Merged Export.

       pdfConvertor.ExportToPdfWithMerge(doc, Me.gridGroupingControl1.TableControl)



'Resize thez column to fit in PDF.

       Dim temppercent As Single = currentPercent

       Me.gridGroupingControl1.BeginUpdate()

       Dim doc As New PdfDocument()

       Dim ht As New Hashtable()

       For i As Integer = 0 To gridGroupingControl1.TableDescriptor.Columns.Count - 1

ht.Add(i, gridGroupingControl1.TableDescriptor.Columns(i).Width)

       Next i

       Dim gridWidth As Single = Me.gridGroupingControl1.TableModel.ColWidths.GetTotal(0, gridGroupingControl1.TableDescriptor.Columns.Count)

       If gridWidth > doc.PageSettings.Width + 80 Then

                  	Dim scale As Single = (gridWidth / (doc.PageSettings.Width + 80)) - currentPercent

zoomGrid(currentPercent - scale)

       End If

{% endhighlight %} 


#### How to Make Use of the Journal Control using GridGrouping Controls

You can use GridGroupingControl, TextBox, RecordNavigationBar and Button control to make use of Journal control. GridGroupingControl is designed as a grid to bind the data source. The navigation bar is used to browse the records in the grid. The navigation bar can be enabled by setting ShowNavigationBar property as true. Preview operation can be performed through Button control. QueryCellInfo event is used to display text box value in the preview cell.

_Table 155: Properties_

<table>
<tr>
<th>
PROPERTIES</th><th>
DESCRIPTION</th></tr>
<tr>
<td>
ShowNavigationBar</td><td>
Describes whether to show the Navigation Bar.</td></tr>
<tr>
<td>
ShowRecordPreviewRow</td><td>
Indicates whether the nested table has preview row.</td></tr>
</table>

The following code example illustrates how to make use of Journal control using GridGrouping controls.

{% highlight C# %} 


this.gridGroupingControl1.ShowNavigationBar = true;



// Button control



this.gridGroupingControl1.TableOptions.ShowRecordPreviewRow = !this.gridGroupingControl1.TableOptions.ShowRecordPreviewRow;



// Event Handler 



this.gridGroupingControl1.QueryCellStyleInfo += new Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventHandler(gridGroupingControl1_QueryCellStyleInfo);



void gridGroupingControl1_QueryCellStyleInfo(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventArgs e)

        {

            if (e.TableCellIdentity.TableCellType == GridTableCellType.RecordPreviewCell)

            {

                Element el = e.TableCellIdentity.DisplayElement;

                e.Style.CellValue = richTextBox1.Text;

            }

        }


 {% endhighlight %}

{% highlight vbnet %} 


Private Me.gridGroupingControl1.ShowNavigationBar = True



// Button control



Me.gridGroupingControl1.TableOptions.ShowRecordPreviewRow = Not Me.gridGroupingControl1.TableOptions.ShowRecordPreviewRow



// Event Handler 



Private Me.gridGroupingControl1.QueryCellStyleInfo += New Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventHandler(AddressOf gridGroupingControl1_QueryCellStyleInfo)



Private Sub gridGroupingControl1_QueryCellStyleInfo(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventArgs)

If e.TableCellIdentity.TableCellType = GridTableCellType.RecordPreviewCell Then

Dim el As Element = e.TableCellIdentity.DisplayElement

e.Style.CellValue = richTextBox1.Text

End If

End Sub

{% endhighlight %} 


 ![](GridGrouping-Control_images/GridGrouping-Control_img1.png) 



Sample link:

[http://www.syncfusion.com/uploads/redirect.aspx?&team=support&file=I68039-490391191.zip](http://www.syncfusion.com/uploads/redirect.aspx?&team=support&file=I68039-490391191.zip)

#### How to Get New Form Window in Front of an Active Window while Double Clicking a Cell

To display a new form window while double clicking a cell, TableControlCellDoubleClick event is handled. window.BringToFront() method is used to bring the new window in front of the active window, but this is effective only if FocusOnMouseDown property is set to false.

{% highlight C# %}  

//Form loads...

gridGroupingControl1.TableControlCellDoubleClick += GridGroupingControl1OnTableControlCellDoubleClick;

gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.One;

gridGroupingControl1.TableControl.FocusOnMouseDown = false;

}

private void GridGroupingControl1OnTableControlCellDoubleClick(object sender, GridTableControlCellClickEventArgs e)

{

var window = new Form1();

window.Show();

window.BringToFront();

}

{% endhighlight %}

{% highlight vbnet %}  

'Form loads...

AddHandler gridGroupingControl1.TableControlCellDoubleClick, AddressOf GridGroupingControl1OnTableControlCellDoubleClick

gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.One

gridGroupingControl1.TableControl.FocusOnMouseDown = False

End Sub

Private Sub GridGroupingControl1OnTableControlCellDoubleClick(ByVal sender As Object, ByVal e As GridTableControlCellClickEventArgs)

Dim window = New Form1()

window.Show()

window.BringToFront()

End Sub

{% endhighlight %} 

### Nested Tables

#### How to access child table's display elements

This can be done using the code below.

{% highlight C# %}  



//Loops for the number of elements in the display elements.

for(int i = 0; i < this.gridGroupingControl1.Table.DisplayElements.Count; i++)

{

Element el = this.gridGroupingControl1.Table.DisplayElements[i];

//If the element is a nested table

if(el.Kind == DisplayElementKind.NestedTable)

{

//Displays the nested table elements.

GridNestedTable nt = (GridNestedTable) el;

foreach(Element el1 in nt.ChildTable.NestedDisplayElements)

{

System.Diagnostics.Trace.WriteLine(el1);

}

i += (nt.ChildTable.NestedDisplayElements.Count - 1);

}}

{% endhighlight %}

{% highlight vbnet %}  



'Loops for the number of elements in the display elements.

Dim i As Integer = 0

Do While i < Me.gridGroupingControl1.Table.DisplayElements.Count

Dim el As Element = Me.gridGroupingControl1.Table.DisplayElements(i)

'If the element is a nested table.

    If el.Kind = DisplayElementKind.NestedTable Then

'Displays the nested table elements.

Dim nt As GridNestedTable = CType(el, GridNestedTable)

        For Each el1 As Element In nt.ChildTable.NestedDisplayElements

            System.Diagnostics.Trace.WriteLine(el1)

        Next el1

        i += (nt.ChildTable.NestedDisplayElements.Count - 1)

    End If

    i += 1

Loop

{% endhighlight %} 

#### How to Access the Nested Tables in GridGroupingControl

You can get access to a nested table inside a record using the following code.

Example

{% highlight C# %}  


//Accesses a nested table.

NestedTable nt = groupingGrid.Table.Records[n].NestedTables[0];

{% endhighlight %}


{% highlight vbnet %}  



'Accesses a nested table.

Dim nt As NestedTable = groupingGrid.Table.Records(n).NestedTables(0)

{% endhighlight %}

Whereas n is the specific record that owns the nested table.

The NestedTable has a ChildTable property.

{% highlight C# %}  



//Gets the child of the nested table.

ChildTable ct = nt.ChildTable;


{% endhighlight %}


{% highlight vbnet %}  


'Gets the child of the nested table.

Dim ct As ChildTable = nt.ChildTable

{% endhighlight %}


To get access to a specific record in that child table, use the code snippet given below.

{% highlight vbnet %} 


'Accesses the first record.

Dim recordInNestedTable As Record = ct.Records(0)
or 
Dim recordInNestedTable As Record = ct.FilteredRecords(0)

 {% endhighlight %}


If you need access to the TableDescriptor for a nested relation, use the code snippet given below.

{% highlight C# %}  

//Accesses the ChildTableDescriptor.

GridTableDescriptor td = this.gridGroupingControl1.TableDescriptor.Relations[0].ChildTableDescriptor;

{% endhighlight %}



{% highlight vbnet %}  


'Accesses the ChildTableDescriptor.

Dim td As GridTableDescriptor = Me.gridGroupingControl1.TableDescriptor.Relations(0).ChildTableDescriptor

{% endhighlight %}


#### How to Get a Value from the Parent Record of Nested Table when the Dropdown List is Clicked

Through the nested table's ParentRecord.GetValue() method, the value of the parent record of nested table can be retrieved when we are in the nested table. In QueryCellStyleInfo event, the parent record's value is retrieved as an object. With the object, the sources of the nested tables are changed. The code for QueryCellStyleInfo event is as follows.

{% highlight C# %} 



private void gridGroupingControl1_QueryCellStyleInfo(object sender, GridTableCellStyleInfoEventArgs e)

{

       if(e.TableCellIdentity.Column != null && e.TableCellIdentity.Column.MappingName == "dropCol" && e.TableCellIdentity.DisplayElement is GridRecordRow)

       {

            object o = e.TableCellIdentity.DisplayElement.ParentChildTable.ParentNestedTable.ParentRecord.GetValue("check");

            this.gridGroupingControl1.TableModel.ResetVolatileData();

            if(o!=System.DBNull.Value && o != null && (bool)o)

            {

                  e.Style.DataSource = colors;

                  e.Style.DisplayMember = "color";

                  e.Style.ValueMember = "color";

                  e.Style.CellType = "GridListControl";

            }

            else

            {

                  e.Style.DataSource = shapes;

                  e.Style.DisplayMember = "shape";

                  e.Style.ValueMember = "shape";

                  e.Style.CellType = "GridListControl";

            }

       }

}

 {% endhighlight %}

{% highlight vbnet %}  


Private Sub gridGroupingControl1_QueryCellStyleInfo(ByVal sender As Object, ByVal e As GridTableCellStyleInfoEventArgs)

       If Not e.TableCellIdentity.Column Is Nothing AndAlso e.TableCellIdentity.Column.MappingName = "dropCol" AndAlso TypeOf e.TableCellIdentity.DisplayElement Is GridRecordRow Then

            Dim o As Object = e.TableCellIdentity.DisplayElement.ParentChildTable.ParentNestedTable.ParentRecord.GetValue("check")

            Me.gridGroupingControl1.TableModel.ResetVolatileData()

            If Not o Is System.DBNull.Value AndAlso Not o Is Nothing AndAlso CBool(o) Then

                   e.Style.DataSource = colors

                   e.Style.DisplayMember = "color"

                   e.Style.ValueMember = "color"

                   e.Style.CellType = "GridListControl"

            Else

                   e.Style.DataSource = shapes

                   e.Style.DisplayMember = "shape"

                   e.Style.ValueMember = "shape"

                   e.Style.CellType = "GridListControl"

            End If

        End If

End Sub

{% endhighlight %} 


#### How to hide the row headers of a child table in GridGroupingControl

You can do this by accessing the Child Table of GridGroupingControl using GridTableModel. Then handle QueryColWidth event handler of the Child Table and hide the Row Header (which is column zero) by setting the Size property to _Zero_.

{% highlight C# %}  


GridTableModel tbl = this.gridGroupingControl1.GetTableModel("ChildTable"); 

tbl.QueryColWidth += new GridRowColSizeEventHandler(tbl_QueryColWidth); 



void tbl_QueryColWidth(object sender, GridRowColSizeEventArgs e) 

{ 

if (e.Index == 0) 

{ 

e.Size = 0; 

e.Handled = true; 

} 

} 

{% endhighlight %}


{% highlight vbnet %}  


Dim tbl As GridTableModel = Me.GridGroupingControl1.GetTableModel("ChildTable")

AddHandler tbl.QueryColWidth, AddressOf tbl_QueryColWidth 



Private Sub tbl_QueryColWidth(ByVal sender As Object, ByVal e As GridRowColSizeEventArgs)

If e.Index = 0 Then

e.Size = 0

e.Handled = True

End If

End Sub 'tbl_QueryColWidth 

{% endhighlight %} 


#### How to Set Column Style Properties for the Nested Tables in a Grouping Grid

To set column properties for nested tables, you will need to use TableDescriptor property for different tables. Here is the code that will get TableDescriptors for the parent table, child table and grandchild table from the GroupingControl's GridEngine, which sets some column style properties for each table.

Example

{% highlight C# %} 



GridEngine engine = this.gridGroupingControl1.Engine;

//Sets some parent properties.
    GridTableDescriptor parentTD = (GridTableDescriptor) engine.TableDescriptor;
    parentTD.Columns["parentID"].Appearance.AnyRecordFieldCell.BackColor = Color.LightGoldenrodYellow;
    parentTD.Columns["ParentName"].Width = 120;



//Sets some child properties.
    RelationDescriptor childRD = parentTD.Relations[childTable.TableName];
    GridTableDescriptor childTD = (GridTableDescriptor) childRD.ChildTableDescriptor;
    childTD.Columns["Name"].Appearance.AnyRecordFieldCell.BackColor = Color.Pink;

//Sets some grandchild properties.
    RelationDescriptor grandChildRD = childTD.Relations[grandChildTable.TableName];
    GridTableDescriptor grandChildTD = (GridTableDescriptor) grandChildRD.ChildTableDescriptor;
    grandChildTD.Columns["GrandChildID"].Appearance.AnyRecordFieldCell.BackColor = Color.LightBlue;
    grandChildTD.Columns["Name"].Appearance.AnyRecordFieldCell.BackColor = Color.LightCoral;
    grandChildTD.Columns["ChildID"].Appearance.AnyRecordFieldCell.BackColor = Color.LightYellow;

 {% endhighlight %}

{% highlight vbnet %} 


Dim engine As GridEngine = Me.GridGroupingControl1.Engine



'Sets some parent properties.

Dim parentTD As GridTableDescriptor = CType(engine.TableDescriptor, GridTableDescriptor)



    parentTD.Columns("parentID").Appearance.AnyRecordFieldCell.BackColor = Color.LightGoldenrodYellow  

    parentTD.Columns("ParentName").Width = 120 



'Sets some child properties.

 Dim childRD As RelationDescriptor = parentTD.Relations(childTable.TableName)



 Dim childTD As GridTableDescriptor = CType(childRD.ChildTableDescriptor, GridTableDescriptor)



     childTD.Columns("Name").Appearance.AnyRecordFieldCell.BackColor = Color.Pink '



'Sets some grandchild properties.

 Dim grandChildRD As RelationDescriptor = childTD.Relations(grandChildTable.TableName)



 Dim grandChildTD As GridTableDescriptor = CType(grandChildRD.ChildTableDescriptor, GridTableDescriptor)



     grandChildTD.Columns("GrandChildID").Appearance.AnyRecordFieldCell.BackColor = Color.LightBlue    

     grandChildTD.Columns("Name").Appearance.AnyRecordFieldCell.BackColor = Color.LightCoral '



     grandChildTD.Columns("ChildID").Appearance.AnyRecordFieldCell.BackColor = Color.LightYellow

	  {% endhighlight %}

	 
#### How to set style properties of a nested table

This can be done using the code below.

{% highlight C# %}  



//1. Changes the backcolor of all the record field cells in the child table.



//Gets the child table descriptor for a particular relation.

GridTableDescriptor child_tabledescriptor = this.gridGroupingControl1.TableDescriptor.Relations["MyChildTable"].ChildTableDescriptor;

//Sets the style properties.   

child_tabledescriptor.Columns["childID"].Appearance.AnyRecordFieldCell.BackColor = Color.Pink;



//2.Changes the cell property of all the record field cells in the child table.



//Gets the child table descriptor for a particular relation.

GridTableDescriptor child_tabledescriptor = this.gridGroupingControl1.TableDescriptor.Relations["MyChildTable"].ChildTableDescriptor;

//Sets the style properties.   

child_tableDescriptor.Columns["childID"].Appearance.AnyRecordFieldCell.CellType="ComboBox";

{% endhighlight %}

{% highlight vbnet %}  


'1. Changes the backcolor of all the record field cells in the child table.



'Gets the child table descriptor for a particular relation

Dim child_tabledescriptor As GridTableDescriptor = Me.gridGroupingControl1.TableDescriptor.Relations("ComSal").ChildTableDescriptor

'Sets the style properties.              

child_tabledescriptor.Columns("Des").Appearance.AnyRecordFieldCell.BackColor = Color.Pink



'2.Changes the cell property of all the record field cells in the child table.

'Gets the child table descriptor for a particular relation.

Dim child_tabledescriptor As GridTableDescriptor = Me.gridGroupingControl1.TableDescriptor.Relations("ComSal").ChildTableDescriptor

'Sets the style properties.   

child_tabledescriptor.Columns("Des").Appearance.AnyRecordFieldCell.CellType="ComboBox"

{% endhighlight %} 


#### How does one add currency symbol for parent table and child table

You can set the currency symbol for both Parent and Child through GridColumnDescriptor object. Parent tables have it by default. For the Child table setting, you will need to get GridColumnDescriptor for each Child table through recursion. AccessChild()method is handled recursively to set the currency symbol for Grandchild tables, using relations of GridGroupingControl.

{% highlight C# %}  
//In Form_Load.

//For Parent Table.

this.gridGroupingControl1.TableDescriptor.Columns["Values"].Appearance.AnyRecordFieldCell.CellType = GridCellTypeName.Currency;

this.gridGroupingControl1.TableDescriptor.Columns["Values"].Appearance.AnyRecordFieldCell.CurrencyEdit.CurrencySymbol = "@";



//For Child Table.

foreach (GridRelationDescriptor relation in this.gridGroupingControl1.TableDescriptor.Relations)

{

AccessChild(relation);

}



public void AccessChild(GridRelationDescriptor relation)

{

relation.ChildTableDescriptor.Columns["Values"].Appearance.AnyRecordFieldCell.CellType = GridCellTypeName.Currency;

relation.ChildTableDescriptor.Columns["Values"].Appearance.AnyRecordFieldCell.CurrencyEdit.CurrencySymbol = "!#";

if (relation.ChildTableDescriptor.Relations.Count > 0)

{

foreach (GridRelationDescriptor rel in relation.ChildTableDescriptor.Relations)

{

AccessChild(rel); //Recursive function.

}

}

}

{% endhighlight %}


{% highlight vbnet %}  

'In Form_Load.

'For Parent Table.	Me.gridGroupingControl1.TableDescriptor.Columns("Values").Appearance.AnyRecordFieldCell.CellType = GridCellTypeName.Currency			Me.gridGroupingControl1.TableDescriptor.Columns("Values").Appearance.AnyRecordFieldCell.CurrencyEdit.CurrencySymbol = "@"

'For Child Table.

For Each relation As GridRelationDescriptor In Me.gridGroupingControl1.TableDescriptor.Relations

AccessChild(relation)

Next relation



Public Sub AccessChild(ByVal relation As GridRelationDescriptor)

    relation.ChildTableDescriptor.Columns("Values").Appearance.AnyRecordFieldCell.CellType = GridCellTypeName.Currency

relation.ChildTableDescriptor.Columns("Values").Appearance.AnyRecordFieldCell.CurrencyEdit.CurrencySymbol = "!#"

If relation.ChildTableDescriptor.Relations.Count > 0 Then

For Each rel As GridRelationDescriptor In relation.ChildTableDescriptor.Relations

AccessChild(rel) 'Recursive function

Next rel

End If

End Sub

{% endhighlight %} 

#### Foreign Key Reference For Child Table

When you want to create a relation between child and grandchild table with ForeignKeyReference, set RelationKind property of GridRelationDescriptor to ForeignKeyReference.

The following code illustrates this: 

{% highlight C# %}  

public Form1()

     {

//Adds relation to ParentTable.

GridRelationDescriptor parentToChildRelationDescriptor = new GridRelationDescriptor();

parentToChildRelationDescriptor.ChildTableName = "MyChildTable";    //Same as SourceListSetEntry.Name for childTable (see below)

parentToChildRelationDescriptor.RelationKind = RelationKind.RelatedMasterDetails;

parentToChildRelationDescriptor.RelationKeys.Add("parentID", "ParentID");

            parentToChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("Name");

            parentToChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("MyGrandChildTable_Name");



gridGroupingControl1.TableDescriptor.Relations.Add(parentToChildRelationDescriptor);





//Adds Relation to GrandChildTable in Childtable like look up.

            GridRelationDescriptor childToGrandChildRelationDescriptor = new GridRelationDescriptor();

childToGrandChildRelationDescriptor.ChildTableName = "MyGrandChildTable";  //Same as SourceListSetEntry.Name for grandChhildTable (see below)

childToGrandChildRelationDescriptor.RelationKind = RelationKind.ForeignKeyReference;

childToGrandChildRelationDescriptor.RelationKeys.Add("childID", "GrandChildID");

            childToGrandChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("GrandChildID");

            childToGrandChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("Name");



//Adds relation to ChildTable.

            parentToChildRelationDescriptor.ChildTableDescriptor.Relations.Add(childToGrandChildRelationDescriptor);



}


{% endhighlight %}


{% highlight vbnet %}  

Public Sub New()

'Adds relation to ParentTable.

            Dim parentToChildRelationDescriptor As New GridRelationDescriptor()

            parentToChildRelationDescriptor.ChildTableName = "MyChildTable"

            parentToChildRelationDescriptor.RelationKind = RelationKind.RelatedMasterDetails

            parentToChildRelationDescriptor.RelationKeys.Add("parentID", "ParentID")

            parentToChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("Name")

            parentToChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("MyGrandChildTable_Name")



            gridGroupingControl1.TableDescriptor.Relations.Add(parentToChildRelationDescriptor)



'Adds Relation to GrandChildTable in Childtable like look up.

            Dim childToGrandChildRelationDescriptor As New GridRelationDescriptor()

            childToGrandChildRelationDescriptor.ChildTableName = "MyGrandChildTable"

            childToGrandChildRelationDescriptor.RelationKind = RelationKind.ForeignKeyReference

            childToGrandChildRelationDescriptor.RelationKeys.Add("childID", "GrandChildID")

            childToGrandChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("GrandChildID")

            childToGrandChildRelationDescriptor.ChildTableDescriptor.VisibleColumns.Add("Name")



'Adds relation to ChildTable.

            parentToChildRelationDescriptor.ChildTableDescriptor.Relations.Add(childToGrandChildRelationDescriptor)

        End Sub

		{% endhighlight %} 
		
### Summaries

#### How to align summary cells in GridGroupingControl

You can align summary cells of GridGroupingControl by making use of Horizontal Alignment property, as shown below.

{% highlight C# %} 


GridSummaryColumnDescriptor sumCol1 = new GridSummaryColumnDescriptor("sumCol1", SummaryType.DoubleAggregate, "Col1", "{Sum}");

sumCol1.Appearance.AnyCell.HorizontalAlignment = GridHorizontalAlignment.Right;

 {% endhighlight %}


{% highlight vbnet %}  



Dim sumCol1 As New GridSummaryColumnDescriptor("sumCol1", SummaryType.DoubleAggregate, "Col1", "{Sum}")

sumCol1.Appearance.AnyCell.HorizontalAlignment = GridHorizontalAlignment.Right 

{% endhighlight %} 

#### How to create weighted summaries in GridGroupingControl

You can create custom summaries that perform weighted average calculations using code naming convention to pass the column holding the weights to the summary descriptor. Refer to the code snippet below, which illustrates this.

{% highlight C# %}  


private void gridGroupingControl1_QueryCustomSummary(object sender, GridQueryCustomSummaryEventArgs e)

{

if(e.SummaryDescriptor.SummaryType == SummaryType.Custom) 

{

e.SummaryDescriptor.CreateSummaryMethod = new CreateSummaryDelegate(WeightedSummary.CreateSummaryMethod);

}

e.Handled = true;

}



private GridSummaryColumnDescriptor GetWeightedSummaryColumnDescriptor(string sourceCol, string weightCol)

{

GridSummaryColumnDescriptor wgtSumCol = new GridSummaryColumnDescriptor();

wgtSumCol.Name = string.Format("{0}_{1}", sourceCol, weightCol); //special name following the convention above

wgtSumCol.DataMember = sourceCol; //the column this summary is applied to

wgtSumCol.DisplayColumn = sourceCol; //where this summary is displayed

wgtSumCol.Format = "{WeightedAverage:#.##}"; //what is displayed in the summary

wgtSumCol.SummaryType = SummaryType.Custom; //marks this as a Custom Summary

wgtSumCol.Appearance.AnySummaryCell.HorizontalAlignment = GridHorizontalAlignment.Right;

wgtSumCol.MaxLength = 6;

return wgtSumCol;

}

{% endhighlight %}


{% highlight vbnet %}  

'Custom summary.

Private Sub gridGroupingControl1_QueryCustomSummary(ByVal sender As Object, ByVal e As GridQueryCustomSummaryEventArgs)

If e.SummaryDescriptor.SummaryType = SummaryType.Custom Then

e.SummaryDescriptor.CreateSummaryMethod = New CreateSummaryDelegate(AddressOf WeightedSummary.CreateSummaryMethod)

End If

e.Handled = True

End Sub



Private Function GetWeightedSummaryColumnDescriptor(ByVal sourceCol As String, ByVal weightCol As String) As GridSummaryColumnDescriptor

Dim wgtSumCol As GridSummaryColumnDescriptor = New GridSummaryColumnDescriptor

wgtSumCol.Name = String.Format("{0}_{1}", sourceCol, weightCol) 'special name following the convention above

wgtSumCol.DataMember = sourceCol 'the column this summary is applied to

wgtSumCol.DisplayColumn = sourceCol 'where this summary is displayed

wgtSumCol.Format = "{WeightedAverage:#.##}" 'what is displayed in the summary

wgtSumCol.SummaryType = SummaryType.Custom 'marks this as a Custom Summary

wgtSumCol.Appearance.AnySummaryCell.HorizontalAlignment = GridHorizontalAlignment.Right

wgtSumCol.MaxLength = 6

Return wgtSumCol

End Function

{% endhighlight %} 



#### How to define a summary row in the grid

This can be done using the code below.

{% highlight C# %}  


//Defines a summary column descriptor.

GridSummaryColumnDescriptor sd = new GridSummaryColumnDescriptor();

//Summary for Col2. 

sd.DataMember= "Col2";

//Sets under which column you need to see the total.

sd.DisplayColumn = "Col2";

//Here you specify the format of the field to be displayed.

sd.Format = "{Count}";

//Here you set the type of the summary i.e totalling or average or count etc...

sd.SummaryType = SummaryType.DistinctCount;

//Here"Total" is the text that occurs as the header.

//Creates a new SummaryRowDescriptor and adds it to the SummaryRows collection.

this.gridGroupingControl1.TableDescriptor.SummaryRows.Add(new GridSummaryRowDescriptor("Col2", "Total", sd));

{% endhighlight %}


{% highlight vbnet %}  


'Defines a summary column descriptor.

Private sd As GridSummaryColumnDescriptor = New GridSummaryColumnDescriptor()

'Summary for Col2. 

sd.DataMember= "Col2"

'Sets under which column you need to see the total.

sd.DisplayColumn = "Col2"

'Here you specify the format of the field to be displayed.

sd.Format = "{Count}"

'Here you set the type of the summary i.e totalling or average or count etc...

sd.SummaryType = SummaryType.DistinctCount

'Here "Total" is the text that occurs as the header.

'Creates a new SummaryRowDescriptor and adds it to the SummaryRows collection

Me.gridGroupingControl1.TableDescriptor.SummaryRows.Add(New GridSummaryRowDescriptor("Col2", "Total", sd))

{% endhighlight %} 


#### How to format summary rows

The following code shows how to format summary rows.

{% highlight C# %}  



//sd is GridSummaryColumnDescriptor. 

//Changes the backcolor of the SummaryFieldCell.

sd.Appearance.SummaryFieldCell.BackColor = Color.LightBlue;

//Changes the type of SummaryFieldCell.

sd.Appearance.SummaryFieldCell.CellType = "ComboBox";

{% endhighlight %}

{% highlight vbnet %}  


'sd is GridSummaryColumnDescriptor. 

'Changes the backcolor of the SummaryFieldCell.

sd.Appearance.SummaryFieldCell.BackColor = Color.LightBlue

'Changes the type of SummaryFieldCell.

sd.Appearance.SummaryFieldCell.CellType = "ComboBox"

{% endhighlight %} 


#### How to retrieve a summary item

The following code shows how to retrieve a summary item.

{% highlight C# %}  



//sd is GridSummaryColumnDescriptor. 

string item=GridEngine.GetSummaryText(this.gridGroupingControl1.Table.TopLevelGroup,sd)

{% endhighlight %}

{% highlight vbnet %} 



'sd is GridSummaryColumnDescriptor. 

Dim item As String = GridEngine.GetSummaryText(Me.gridGroupingControl1.Table.TopLevelGroup, sd)

 {% endhighlight %} 

#### How to show Summary Results in the Inner Most Table on every Parent Level in Nested Related Tables

The summary results of the nested tables can be obtained by using GetSummaryText method of GridEngine. 

Example

{% highlight C# %}  



private void gridGroupingControl1_QueryValue(object sender, Syncfusion.Grouping.FieldValueEventArgs e) 

{ 

     if(e.TableDescriptor.Name == this.parentTD.Name)

     { 

         Group g = e.Record.NestedTables[0].ChildTable as Group; 



//Sets SummaryText for ParentTable.

         e.Value = GridEngine.GetSummaryText(g, "c_ROW", "c_SUM");

     } 

     else if

        (e.TableDescriptor == this.childTD) 

        { 

              Group g = e.Record.NestedTables[0].ChildTable as Group;



//Sets SummaryText for child table.

              e.Value = GridEngine.GetSummaryText(g, "gc_ROW", "gc_SUM");

        } 

        else if

             (e.TableDescriptor == this.gridChildTD) 

             { 

//Retrieves the unbound column values.

                object o = this.unboundValues[e.Record.GetValue("GrandChildID").ToString()]; double d; 

                if(o != null && double.TryParse(o.ToString(), System.Globalization.NumberStyles.Any, null, out d)) 

                {

//Displays the values.

                   e.Value = d; 

                } 

             } 

}

{% endhighlight %}

{% highlight vbnet %}  


 Private Sub gridGroupingControl1_QueryValue(ByVal sender As Object, ByVal e As Syncfusion.Grouping.FieldValueEventArgs)

                    If e.TableDescriptor.Name = Me.parentTD.Name Then

                        Dim g As Group = CType(IIf(TypeOf e.Record.NestedTables(0).ChildTable Is Group, e.Record.NestedTables(0).ChildTable, Nothing), Group)



'Sets SummaryText for ParentTable.

                        e.Value = GridEngine.GetSummaryText(g, "c_ROW", "c_SUM")

                    ElseIf e.TableDescriptor Is Me.childTD Then

                        Dim g As Group = CType(IIf(TypeOf e.Record.NestedTables(0).ChildTable Is Group, e.Record.NestedTables(0).ChildTable, Nothing), Group)



'Sets SummaryText for ChildTable.

                        e.Value = GridEngine.GetSummaryText(g, "gc_ROW", "gc_SUM")

                    ElseIf e.TableDescriptor Is Me.gridChildTD Then



'Retrieves the unbound column values.

                        Dim o As Object = Me.unboundValues(e.Record.GetValue("GrandChildID").ToString())

                        Dim d As Double

                        If Not o Is Nothing AndAlso Double.TryParse(o.ToString(), System.Globalization.NumberStyles.Any, Nothing, d) Then



'Displays the values.

                           e.Value = d

                        End If

                     End If

End Sub

{% endhighlight %}


#### How to Update Summaries Immediately Upon Changing a Field

By default, the summaries will be refreshed as you leave the row. But if you want the summaries to be updated as you leave the cell, then you must handle CurrentRecordContextChange event and you can Invalidate the summary. Refer to the following code snippet.

{% highlight C# %}  



private void gridGroupingControl1_CurrentRecordContextChange(object sender, CurrentRecordContextChangeEventArgs e)

{

         if(e.Action == CurrentRecordAction.CurrentFieldChanged)

         {

             this.gridGroupingControl1.CurrencyManager.EndCurrentEdit();

             this.gridGroupingControl1.Table.InvalidateSummary();

         }

}

{% endhighlight %}

{% highlight vbnet %}  



Private Sub gridGroupingControl1_CurrentRecordContextChange(ByVal sender As Object, ByVal e As CurrentRecordContextChangeEventArgs)

      If e.Action = CurrentRecordAction.CurrentFieldChanged Then

            Me.gridGroupingControl1.CurrencyManager.EndCurrentEdit()

            Me.gridGroupingControl1.Table.InvalidateSummary()

      End If

End Sub

{% endhighlight %} 

#### What are the options in the summary columns

The options in the summary columns are illustrated using the code below.

{% highlight C# %} 



//Disables the change of summary value during the filter criteria.

//sd is GridSummaryColumnDescriptor. 

//This ignores filtering of the grid. So, the summary value does not change.

sd.IgnoreRecordFilterCriteria=true;

 {% endhighlight %}

{% highlight vbnet %}  



'Disables the change of summary value during the filter criteria.

'sd is GridSummaryColumnDescriptor. 

'This ignores filtering of the grid. So, the summary value does not change.

sd.IgnoreRecordFilterCriteria=True

{% endhighlight %} 

#### How to Get Summary Cell Values in sorting 

#### Or

#### How to Incorporate Summary Cells while Sorting 

#### Or

#### How to Sort the Grid based on Summary Cell Values 

While sorting, the grid rearranges data to match current sort criteria, but it excludes the summary cells. To perform sorting based on summary cell values, it should be passed as an argument in the “SetGroupSummarySortOrder” method. 

{% highlight C# %}  

private void PeformSort(GridTableControl tableControl, string name)

{

  if (tableControl.TableDescriptor.IsGrouped)

    {

//Code...

if (gsc != null)

{

string caption = gsc.Format.Trim(new char[]{'{','}'});

foreach (SortColumnDescriptor col in tableControl.TableDescriptor.GroupedColumns)

{

   if (!flag)

   group.Add(col.Name, col.Clone());                                   col.SetGroupSummarySortOrder(gsc.GetSummaryDescriptorName(),caption, _summSort);    

  }

 flag = true;

}

//Code...



{% highlight vbnet %}  {% endhighlight %} 

Private Sub PeformSort(ByVal tableControl As GridTableControl, ByVal name As String)

If tableControl.TableDescriptor.IsGrouped Then



'Code...



If gsc IsNot Nothing Then

Dim caption As String = gsc.Format.Trim(New Char(){"{"c,"}"c})

For Each col As SortColumnDescriptor In tableControl.TableDescriptor.GroupedColumns

  If Not flag Then

group.Add(col.Name, col.Clone())

  End If

col.SetGroupSummarySortOrder(gsc.GetSummaryDescriptorName(),caption, _summSort)

Next col

flag = True

'Code...

{% endhighlight %}

#### How to Change the Format of Summary Cell in Group Caption

To change summary cell’s format, TableControlDrawCellDisplayText event is handled. Using DisplayText property the desired format can be applied to the summary cell.

{% highlight C# %}  

//In form load...

this.gridGroupingControl1.TableControlDrawCellDisplayText += new GridTableControlDrawCellDisplayTextEventHandler(gridGroupingControl1_TableControlDrawCellDisplayText);

}

void gridGroupingControl1_TableControlDrawCellDisplayText(object sender, GridTableControlDrawCellDisplayTextEventArgs e)

{

GridTableCellStyleInfo style = e.Inner.Style as GridTableCellStyleInfo;

if (style.TableCellIdentity.TableCellType ==         GridTableCellType.GroupCaptionSummaryCell)

  {

   double value;

   if (double.TryParse(e.Inner.DisplayText, out value))

   e.Inner.DisplayText = value.ToString("#,###.00");

  }

}

//Code...


{% endhighlight %}


{% highlight vbnet %}  

'In form load...

AddHandler gridGroupingControl1.TableControlDrawCellDisplayText, AddressOf gridGroupingControl1_TableControlDrawCellDisplayText

End Sub



Private Sub gridGroupingControl1_TableControlDrawCellDisplayText(ByVal sender As Object, ByVal e As GridTableControlDrawCellDisplayTextEventArgs)



Dim style As GridTableCellStyleInfo = TryCast(e.Inner.Style, GridTableCellStyleInfo)

If style.TableCellIdentity.TableCellType = GridTableCellType.GroupCaptionSummaryCell Then

value As Double

If Double.TryParse(e.Inner.DisplayText, value) Then

e.Inner.DisplayText = value.ToString("#,###.00")

End If

End If

'Code

{% endhighlight %} 

Refer to the following sample file for more details:

[http://files2.syncfusion.com/dtSupport/DirectTrac/98946/GGCSortingFormat345822923.zip](http://files2.syncfusion.com/dtSupport/DirectTrac/98946/GGCSortingFormat345822923.zip)

### DisplayElements

#### How to access all DisplayElements or a particular DisplayElement in GridGrouping control

You can access DisplayElements by using the following code.

{% highlight C# %}  


//Accesses all the display elements.

foreach (Element el in gridGroupingControl1.Table.DisplayElements)

{

    Console.WriteLine(el.Info);

}



//Accesses a particular display element.

Console.WriteLine(this.gridGroupingControl1.Table.DisplayElements[index].Info);

{% endhighlight %}


{% highlight vbnet %}  



'Accesses all the display element.

 For Each el As Element In Me.gridGroupingControl1.Table.DisplayElements

    Console.WriteLine(el.Info)

 Next el



'Accesses a particular display element.

Console.WriteLine(Me.gridGroupingControl1.Table.DisplayElements(index).Info)

{% endhighlight %} 

#### How to access a particular DisplayElement if RowIndex is provided

You can access DisplayElements with rowindex by using the following code.

{% highlight C# %}  


// Accesses a particular display element.

Element el=this.gridGroupingControl1.Table.DisplayElements[rowindex].ParentElement;

{% endhighlight %}


{% highlight vbnet %} 


' Accesses a particular display element.

Dim el As Element = Me.gridGroupingControl1.Table.DisplayElements(rowindex).ParentElement

 {% endhighlight %} 


#### How to find DisplayElement Type

You can find the type of particular DisplayElement using the code below.

{% highlight C# %}  


//Accesses the type of display element.

Console.WriteLine(this.gridGroupingControl1.Table.DisplayElements[rowindex].Kind);

{% endhighlight %}


{% highlight vbnet %}  


'Accesses the type of display element.

Console.WriteLine(Me.gridGroupingControl1.Table.DisplayElements(rowindex).Kind)

{% endhighlight %} 

### Layout and Appearance

#### How to Allocate Equal Size for Each of the Columns in all the Tables

The parent and child table columns’ width can be set equally in proportion to the grid control's client width by dynamically setting the columns width in TableModel.QueryColWidth event handler. When it deals with a nested table, QueryColWidth event of the entire nested table must be handled to set the respective nested table columns width. In QueryColWidth event handler, the available width for the columns can be calculated as follows,

availableArea = groupingGrid.ClientSize.Width - gridModel.ColWidths.GetTotal(0, girdModel.Cols.HeaderCount) - indentColsTotalWidth;

and the proportional columns width can be calculated as follows,

Size = (int) availableArea / (grid.TableDescriptor.VisibleColumns.Count);

#### How to create multiple rows per record in a GridGroupingControl

This can be done by using ColumnSets property of GridGrouping control.

{% highlight C# %}  


//Creates GridColumnSpanDescriptor and initializes to a column  and mentions its location to display,. 

GridColumnSpanDescriptor columnSpanDescriptor1 = new GridColumnSpanDescriptor("Name","R0C0"); 



//Creates GridColumnSetDescriptor. 

GridColumnSetDescriptor columnSetDescriptor1 = new GridColumnSetDescriptor();



//Adds GridColumnSpanDescriptor to the GridColumnSetDescriptor. 

columnSetDescriptor1.ColumnSpans.Add(columnSpanDescriptor1);



//Adds GridColumnSetDescriptor to the ColumnSet of the GridGroupingControl through TableDescriptor.

this.gridGroupingControl1.TableDescriptor.ColumnSets.Add(columnSetDescriptor1);

{% endhighlight %}


{% highlight vbnet %}  



'Creates GridColumnSpanDescriptor and initializes to a column  and mentions its location to display. 

Dim columnSpanDescriptor1 As GridColumnSpanDescriptor = New GridColumnSpanDescriptor("Name", "R0C0")



'Creates GridColumnSetDescriptor. 

Dim columnSetDescriptor1 As GridColumnSetDescriptor = New GridColumnSetDescriptor()



'Add GridColumnSpanDescriptor to the GridColumnSetDescriptor. 

columnSetDescriptor1.ColumnSpans.Add(columnSpanDescriptor1)



'Adds GridColumnSetDescriptor to the ColumnSet of GridGroupingControl through TableDescriptor.

Me.gridGroupingControl1.TableDescriptor.ColumnSets.Add(columnSetDescriptor1)

{% endhighlight %} 

#### How to freeze specified columns

You can freeze Specified columns by making use of the code given below.

{% highlight C# %} 


//Adds a specified column index  to freeze

this. gridGroupingControl1.TableModel.Cols.FreezeRange(1, 1);



//Adds a range of columns to freeze.

this. gridGroupingControl1.TableModel.Cols.FreezeRange(1, 3);

 {% endhighlight %}


{% highlight vbnet %} 


'Adds a specified column index  to freeze

Me. gridGroupingControl1.TableModel.Cols.FreezeRange(1, 1)



'Adds a range of columns to freeze.

Me. gridGroupingControl1.TableModel.Cols.FreezeRange(1, 3)

 {% endhighlight %} 


#### How to set conditional formatting in the GroupingGrid

To set up conditional formatting in the GroupingGrid, use the following code.

{% highlight C# %} 



//Declares conditional format descriptor.

GridConditionalFormatDescriptor gcfd = new GridConditionalFormatDescriptor();



//Sets some properties.

gcfd.Appearance.AnyRecordFieldCell.Font.Bold = true;

gcfd.Appearance.AnyRecordFieldCell.Interior = new BrushInfo(Color.LightGreen);



//Expression which is applied on the table data.

gcfd.Expression = "[ColumnName] like \'true\'";



//Sets name to the conditional format and adds it to the grid.

gcfd.Name = "gcfd";

this.gridGroupingControl1.TableDescriptor.ConditionalFormats.Add(gcfd);


 {% endhighlight %}
 
{% highlight vbnet %}  



'Declares conditional format descriptor.

Dim gcfd As GridConditionalFormatDescriptor = New GridConditionalFormatDescriptor()



'Sets some properties.

gcfd.Appearance.AnyRecordFieldCell.Font.Bold = True

gcfd.Appearance.AnyRecordFieldCell.Interior = New BrushInfo(Color.LightGreen)



'Expression which is applied on the table data.

gcfd.Expression = "[ColumnName] like 'true'"



'Sets name to the conditional format and adds it to the grid.

gcfd.Name = "gcfd"

Me.gridGroupingControl1.TableDescriptor.ConditionalFormats.Add(gcfd)

{% endhighlight %} 

#### How to set texts in the preview record

This can be done by handling QueryCellStyleInfo event.

{% highlight C# %}  



//Checks for the preview record. 

if( e.TableCellIdentity.TableCellType == GridTableCellType.RecordPreviewCell)

{

//Sets the text in the record.

e.Style.CellValue = " This is preview record".ToString();



//Changes the default italic font to regular.

e.Style.Font.Italic = false;



//Sets Bold to the text font.

e.Style.Font.Bold = true;



//Changes the text color.

e.Style.TextColor = Color.Purple;

}

{% endhighlight %}

{% highlight vbnet %}  



'Checks for the preview record. 

If e.TableCellIdentity.TableCellType = GridTableCellType.RecordPreviewCell Then



'Sets the text in the record.

  e.Style.CellValue = " This is preview record".ToString()



'Changes the default italic font to regular.

  e.Style.Font.Italic = False



'Sets Bold to the text font.

  e.Style.Font.Bold = True



'Changes the text color.

  e.Style.TextColor = Color.Purple

End If

{% endhighlight %} 

#### How to set the cursor to GridGroupingControl instead of the default one

You need to handle TableControlCellCursor event of GridGroupingControl and set the required cursor to the e.Inner.Cursor property.

{% highlight C# %}  
//Event invoker.

            this.gridGroupingControl1.TableControlCellCursor +=new Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlCellCursorEventHandler(gridGroupingControl1_TableControlCellCursor);



//Event handler. 

        void gridGroupingControl1_TableControlCellCursor(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlCellCursorEventArgs e)

        {

            e.Inner.Cancel = true;           

            e.Inner.Cursor = Cursors.Hand;

        }



{% endhighlight %}




{% highlight vbnet %}  



'Event invoker.

AddHandler gridGroupingControl1.TableControlCellCursor, AddressOf gridGroupingControl1_TableControlCellCursor



'Event handler.

Private Sub gridGroupingControl1_TableControlCellCursor(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlCellCursorEventArgs)

e.Inner.Cancel = True

e.Inner.Cursor = Cursors.Hand

End Sub

{% endhighlight %} 

#### How to apply text color for RichText celltype in GridGroupingControl

You can use QueryCellStyleInfo event to provide styles for the cells in GridGroupingControl. This provides GridStyleInfo object for a cell on demand. QueryCellStyleInfo is triggered every time a request is made to access style information for a cell. You can do any type of cell formatting with this event. You can apply style settings for a given CellType using TableCellIdentity.TableCellType property on the instances of GridTableCellStyleInfoEventArgs.

The following code example illustrates how to apply styles to RichText CellType in the grouping grid:

{% highlight C# %}  

//Hooks up the event.

this.gridGroupingControl1.QueryCellStyleInfo += newGridTableCellStyleInfoEventHandler(gridGroupingControl1_QueryCellStyleInfo);



//QueryCellStyleInfo event: Formats Cell by Cell Basis on demand.

private void gridGroupingControl1_QueryCellStyleInfo(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventArgs e)

{

e.Style.ReadOnly = true;

if (e.TableCellIdentity.Column != null && e.TableCellIdentity.Column.Name == "Values" && e.TableCellIdentity.DisplayElement.Kind == Syncfusion.Grouping.DisplayElementKind.Record)

{

e.Style.CellType = GridCellTypeName.RichText;

e.Style.TextColor = Color.Purple;

}

}

{% endhighlight %}

{% highlight vbnet %} 

'Hooks up the event.

AddHandler GridGroupingControl1.QueryCellStyleInfo, AddressOf gridGroupingControl1_QueryCellStyleInfo



'QueryCellStyleInfo event: Formats Cell by Cell Basis on demand.

    Private Sub gridGroupingControl1_QueryCellStyleInfo(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventArgs)

        e.Style.ReadOnly = True

        If e.TableCellIdentity.Column IsNot Nothing AndAlso e.TableCellIdentity.Column.Name = "Values" AndAlso e.TableCellIdentity.DisplayElement.Kind = Syncfusion.Grouping.DisplayElementKind.Record Then

            e.Style.CellType = GridCellTypeName.RichText

            e.Style.TextColor = Color.Purple

        End If

    End Sub

	 {% endhighlight %}
	
### Context Menu

#### How to attach a context menu to a cell in GridGrouping control

By handling TableControlCurrentCellControlGotFocus and assigning context menu to the cell's control, we can attach context menu to a cell when the cell is in the edit mode.

{% highlight C# %}  



//Subscribes to the events.

this.gridGroupingControl1.TableControlCurrentCellControlGotFocus +=new 

Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlControlEventHandler(gridGroupingControl1_TableControlCurrentCellControlGotFocus);



this.gridGroupingControl1.TableControlCurrentCellControlLostFocus +=new 

Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlControlEventHandler(gridGroupingControl1_TableControlCurrentCellControlLostFocus);



// Attaches a context menu when the cell is in edit mode.

private void gridGroupingControl1_TableControlCurrentCellControlGotFocus(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlControlEventArgs e)

{

e.Inner.Control.ContextMenu = this.contextMenu1;

}



//Resets the context menu when the cell losses focus.

private void gridGroupingControl1_TableControlCurrentCellControlLostFocus(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlControlEventArgs e)

{

e.Inner.Control.ContextMenu = null;

}

{% endhighlight %}

{% highlight vbnet %}  


'Attaches a context menu when the cell is in edit mode.

Private Sub gridGroupingControl1_TableControlCurrentCellControlGotFocus(ByVal sender As Object, ByVal e As 

Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlControlEventArgs) Handles gridGroupingControl1.TableControlCurrentCellControlGotFocus

    If e.TableControl.CurrentCell.RowIndex = 7 AndAlso e.TableControl.CurrentCell.ColIndex = 2 Then

        e.Inner.Control.ContextMenu = Me.contextMenu1

    End If

End Sub



'Resets the context menu when the cell losses focus.

Private Sub gridGroupingControl1_TableControlCurrentCellControlLostFocus(ByVal sender As Object, ByVal e As 

Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlControlEventArgs) Handles gridGroupingControl1.TableControlCurrentCellControlLostFocus

    e.Inner.Control.ContextMenu = Nothing

End Sub

{% endhighlight %} 


#### How to attach a context menu to the GridGrouping control

This can be done using the code snippet below.



{% highlight C# %}  



//Adds items to context menu.

this.contextMenu1.MenuItems.Add("One");

this.contextMenu1.MenuItems.Add("Two");

this.contextMenu1.MenuItems.Add("Three");



//Assigns it to the GridGroupingControl.

this.gridGroupingControl1.ContextMenu = this.contextMenu1;



{% endhighlight %}



{% highlight vbnet %}  


'Adds items to context menu.

Me.contextMenu1.MenuItems.Add("One")

Me.contextMenu1.MenuItems.Add("Two")

Me.contextMenu1.MenuItems.Add("Three")



'Assigns it to the GridGroupingControl.

Me.gridGroupingControl1.ContextMenu = Me.contextMenu1

{% endhighlight %} 



### Expressions

#### How to add Expression columns

Expression fields allows you to add a column that holds calculated values based on other fields in the same record. These expression columns can be used in grouping and sorting. This also can be employed as summary fields for summary rows.

{% highlight C# %}  



using  Syncfusion.Grouping;

using  Syncfusion.Windows.Forms.Grid;

using  Syncfusion.Windows.Forms.Grid.Grouping;



//Declares an ExpressionFieldDescriptor.

ExpressionFieldDescriptor expression1 = new ExpressionFieldDescriptor();

expression1.Name = "Sum of all columns";



//Simple expression to add the values in the columns. 

//For all the valid Expression syntax, refer to the 

//EssentialGrid UserGuide --> Essential Grid Tutorials ---> 

//AddsvExpression Fields ---> Valid Expression Syntax 

expression1.Expression = "[Col0] + [Col1] + [Col2] + [Col3]";



//Adds the Expression column to the grid.

this.gridGroupingControl1.TableDescriptor.ExpressionFields.Add(expression1);

{% endhighlight %}

{% highlight vbnet %}  


Imports Syncfusion.Grouping

Imports Syncfusion.Windows.Forms.Grid

Imports Syncfusion.Windows.Forms.Grid.Grouping



'Declares an ExpressionFieldDescriptor.

Dim expression1 As New ExpressionFieldDescriptor()

expression1.Name = "Sum of all columns"



'Simple expression to add the values in the columns 

'For all the valid Expression syntax, refer the 

'EssentialGrid UserGuide --> Essential Grid Tutorials ---> 

'Adds Expression Fields ---> Valid Expression Syntax 

expression1.Expression = "[Col0] + [Col1] + [Col2] + [Col3]"



'Adds the Expression column to the grid.

Me.gridGroupingControl1.TableDescriptor.ExpressionFields.Add(expression1)

{% endhighlight %} 


#### What are the various ExpressionColumn options

The following code illustrates various expression column options.

{% highlight C# %}  


//1. Sets the operators in the expression.

//The computations are performed with level one operations done first.

//Alpha constants used with match and like should be enclosed in apostrophes ('). 

// *, / ,+, - ,&lt;, &gt;, =, &lt;=, &gt;=,match, like, in, between ,or, and 

// * operator used here.

ExpressionFieldDescriptor exp= new ExpressionFieldDescriptor("Expr1","[ColumnName] *2", "System.Int32");



//2. Sets the output/view type.

//Output in double type.

ExpressionFieldDescriptor exp= new ExpressionFieldDescriptor("Expr1","[ColumnName] *2", "System.Double");

{% endhighlight %}


{% highlight vbnet %}  



' 1. Sets the operators in the expression. 

' Sets operators in the expression.  

' The computations are performed with level one operations done first.                      

' Alpha constants used with match and like should be enclosed in apostrophes ('). 

' *, / ,+, - ,&lt;, &gt;, =, &lt;=, &gt;=,match, like, in, between ,or, and 

' * operator used here.

Dim exp As ExpressionFieldDescriptor = New ExpressionFieldDescriptor("Expr1", "[Id] *2", "System.Int32")



' 2. Sets the output in double type.

Dim exp2 As ExpressionFieldDescriptor = New ExpressionFieldDescriptor("Expr2", "[Expr1] *2", "System.Double")

{% endhighlight %} 

### Selections

#### How to access selected records

The selected records can be accessed using the code snippet below.

{% highlight C# %}  



//Accesses Selected records in GridGroupingcontrol.      

foreach(SelectedRecord rec in this.gridGroupingControl1.Table.SelectedRecords)

System.Diagnostics.Trace.WriteLine(rec.Record.Info);

{% endhighlight %}

{% highlight vbnet %}  



'Accesses Selected records in GridGroupingControl.

For Each rec As SelectedRecord In Me.gridGroupingControl1.Table.SelectedRecords

Console.WriteLine(rec.Record.Info)

Next rec
{% endhighlight %} 

#### How to select a record programmatically

The following code illustrates how to select a record programmatically.

{% highlight C# %}  



//Selects the 3rd record.

this.gridGroupingControl1.Table.SelectedRecords.Add(this.gridGroupingControl1.Table.Records[3]);

{% endhighlight %}

{% highlight vbnet %}  



'Selects the 3rd record.

Me.gridGroupingControl1.Table.SelectedRecords.Add(Me.gridGroupingControl1.Table.Records(3))

{% endhighlight %} 

#### How to set ListBoxSelectionModes

To set ListBoxSelectionModes property that determines the selection behavior, use the following code.

{% highlight C# %}  


//Selects Single record.

this.gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.One;



//Selects MultiRecords.

 this.gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.MultiSimple;



//Selects MultiExtendedRecords.

this.gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.MultiExtended;

{% endhighlight %}


{% highlight vbnet %}  



'Selects Single record.

Me.gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.One



'Selects MultiRecords.

Me.gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.MultiSimple



'Selects MultiExtendedRecords.

Me.gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.MultiExtended

{% endhighlight %} 

#### What are the events fired when the records are selected

Following are the events fired when the records are selected.

{% highlight C# %} 



//SelectionChanging Event.

this.gridGroupingControl1.SelectedRecordsChanging += new Syncfusion.Grouping.SelectedRecordsChangedEventHandler(this.gridGroupingControl1_SelectedRecordsChanging);



//SelectionChanged Event.

this.gridGroupingControl1.SelectedRecordsChanged += new Syncfusion.Grouping.SelectedRecordsChangedEventHandler(this.gridGroupingControl1_SelectedRecordsChanged);

 {% endhighlight %}

{% highlight vbnet %}  



'SelectionChanging Event

Private Sub gridGroupingControl1_SelectedRecordsChanging(ByVal sender As Object, ByVal e As Syncfusion.Grouping.SelectedRecordsChangedEventArgs) Handles gridGroupingControl1.SelectedRecordsChanging

    System.Diagnostics.Trace.WriteLine("Action in SelectedRecordsChanging-->" + e.Action)

End Sub



'SelectionChanged Event

Private Sub gridGroupingControl1_SelectedRecordsChanged(ByVal sender As Object, ByVal e As Syncfusion.Grouping.SelectedRecordsChangedEventArgs) Handles gridGroupingControl1.SelectedRecordsChanged

    System.Diagnostics.Trace.WriteLine("Action in SelectedRecordsChanged-->" + e.Action)

End Sub

{% endhighlight %} 

### Records

#### How to access a particular record from a table

This can be done using the following code snippet.

{% highlight C# %}  



//Uses the record Index to access a particular record from a table.

Record r=this.gridGroupingControl1.Table.Records[RecordIndex];

{% endhighlight %}

{% highlight vbnet %}  


'Uses the record Index to access a particular record from a table.

Dim r As Record = Me.gridGroupingControl1.Table.Records(RecordIndex)



#### How to access a record given the row index



This can be done using the following code snippet.

{% highlight C# %}  {% endhighlight %}



//Uses the DisplayElements property of the grid to find the corresponding record.

Record r = gridGroupingControl1.Table.DisplayElements[rowindex].ParentRecord;



{% highlight vbnet %}  {% endhighlight %} 



'Uses the DisplayElements property of the grid to find the corresponding record.

Dim r As Record = gridGroupingControl1.Table.DisplayElements(rowindex).ParentRecord

{% endhighlight %} 


#### How to access sorted or filtered records

This can be done using the following code snippet.

{% highlight C# %}  


//Loops through the filtered records.

foreach(Record fr in this.gridGroupingControl1.Table.FilteredRecords)

{

Console.WriteLine(fr.Info);

}



{% highlight vbnet %}  {% endhighlight %} 



'Loops through the filtered records.

For Each fr As Record In Me.gridGroupingControl1.Table.FilteredRecords

    Console.WriteLine(fr.Info)

Next fr

{% endhighlight %}


#### How to access unfiltered records

This can be done using the following code snippet.

{% highlight C# %}  


foreach(Record r in this.gridGroupingControl1.Table.Records)

{

foreach(Record fr in this.gridGroupingControl1.Table.FilteredRecords)

{

if(r!=fr)

{

Console.WriteLine(r.Info);

}

}

}

{% endhighlight %}


{% highlight vbnet %}  


For Each r As Record In Me.gridGroupingControl1.Table.Records

    For Each fr As Record In Me.gridGroupingControl1.Table.FilteredRecords

        If Not r Is fr Then

            Console.WriteLine(r.Info)

        End If

    Next fr

Next r

{% endhighlight %} 



#### How to get a record index given the rowindex

This can be done using the following code snippet.

{% highlight C# %}  



//Calculates Record index.

Table table = e.TableCellIdentity.Table;

Element el = table.DisplayElements[RowIndex];

Record r = el.ParentRecord;

int RecordIndex= table.UnsortedRecords.IndexOf(r);

{% endhighlight %}

{% highlight vbnet %}  



'Calculates Record index.

Dim table As Table = e.TableCellIdentity.Table

Dim el As Element = table.DisplayElements(RowIndex)

Dim r As Record = el.ParentRecord

Dim RecordIndex As Integer = table.UnsortedRecords.IndexOf(r)

{% endhighlight %} 

#### How to get rowindex given the record index

This can be done using the following code snippet.

{% highlight C# %}  



int position = gridGroupingControl1.Table.DisplayElements.IndexOf(record);

{% endhighlight %}

{% highlight vbnet %} 


Dim position As Integer = gridGroupingControl1.Table.DisplayElements.IndexOf(record)

 {% endhighlight %} 


#### How to get the row position of AddNewRecord in GridGroupingControl

You can get the row index of AddNewRecord using SourceListRecordChanged event handler. In the event handler, you can check e.Action property and get row position from FilteredRecordsCollection.

{% highlight C# %} 


void gridGroupingControl1_SourceListRecordChanged(object sender, RecordChangedEventArgs e)

{

if (e.Action == RecordChangedType.Added)

{

int offset = gridGroupingControl1.TableControl.GetMinimumTopRowIndex();

int newRowIndex = e.TableListChangedEventArgs.Table.FilteredRecords.IndexOf(e.Record) + offset;

Console.WriteLine(newRowIndex);

}

} 

 {% endhighlight %}


{% highlight vbnet %}  


Private Sub gridGroupingControl1_SourceListRecordChanged(ByVal sender As Object, ByVal e As RecordChangedEventArgs)

If e.Action = RecordChangedType.Added Then

Dim offset As Integer = gridGroupingControl1.TableControl.GetMinimumTopRowIndex()

Dim newRowIndex As Integer = e.TableListChangedEventArgs.Table.FilteredRecords.IndexOf(e.Record) + offset

Console.WriteLine(newRowIndex)

End If

End Sub

{% endhighlight %} 


#### What are the events fired when records are collapsing or collapsed

When the records are collapsing or collapsed, the following events are fired.

{% highlight C# %}  



//The RecordCollapsed event gets fired after the record is collapsed.

private void gridGroupingControl1_RecordCollapsed(object sender, Syncfusion.Grouping.RecordEventArgs e)

{

Console.WriteLine("collapsed"+ e.Record.Info);

}



//The RecordCollapsing event gets fired when the record is collapsing.

private void gridGroupingControl1_RecordCollapsing(object sender, Syncfusion.Grouping.RecordEventArgs e)

{

    Console.WriteLine("collapsing"+ e.Record.Info);

}

{% endhighlight %}

{% highlight vbnet %}  



'The RecordCollapsed event gets fired after the record is collapsed.

Private Sub gridGroupingControl1_RecordCollapsed(ByVal sender As Object, ByVal e As Syncfusion.Grouping.RecordEventArgs) Handles gridGroupingControl1.RecordCollapsed

    Console.WriteLine("Collapsed" + e.Record.Info)

End Sub



'The RecordCollapsing event gets fired when the record is collapsing.

Private Sub gridGroupingControl1_RecordCollapsing(ByVal sender As Object, ByVal e As Syncfusion.Grouping.RecordEventArgs) Handles gridGroupingControl1.RecordCollapsing

    Console.WriteLine("Collapsing" + e.Record.Info)

End Sub

{% endhighlight %} 

N>: This applies only when nested tables are used.

#### What are the events fired when the records are expanded or expanding

When the records are expanding or expanded, the following events are fired.

{% highlight C# %}  



//The RecordExpanded event gets fired after the record is expanded.

private void gridGroupingControl1_RecordExpanded(object sender, Syncfusion.Grouping.RecordEventArgs e)

{

Console.WriteLine("Expanded"+ e.Record.Info);

}



//The RecordExpanding event gets fired when the record is expanding.

private void gridGroupingControl1_RecordExpanding(object sender, Syncfusion.Grouping.RecordEventArgs e)

{

Console.WriteLine("Expanding"+ e.Record.Info);

}

{% endhighlight %}



{% highlight vbnet %}  



'The RecordExpanded event gets fired after the record is expanded.

Private Sub gridGroupingControl1_RecordExpanded(ByVal sender As Object, ByVal e As Syncfusion.Grouping.RecordEventArgs) Handles gridGroupingControl1.RecordExpanded

    Console.WriteLine("Expanded" + e.Record.Info)

End Sub



'The RecordExpanding event gets fired when the record is expanding.

Private Sub gridGroupingControl1_RecordExpanding(ByVal sender As Object, ByVal e As Syncfusion.Grouping.RecordEventArgs) Handles gridGroupingControl1.RecordExpanding

    Console.WriteLine("Expanding" + e.Record.Info)

End Sub
{% endhighlight %} 

N>: This applies only when nested tables are used.

#### What are the events fired when the record values are changed

When the record values are changed, the following events are fired.

{% highlight C# %}  



//The RecordValueChanged event gets fired after the record's value is changed.

private void gridGroupingControl1_RecordValueChanged(object sender,Syncfusion.Grouping.RecordValueChangedEventArgs e)

{

Console.WriteLine("Changed "+e.Record.Info);

}



//The RecordValueChanging event gets fired while the record's value is changing.

private void gridGroupingControl1_RecordValueChanging(object sender,Syncfusion.Grouping.RecordValueChangingEventArgs e)

{

Console.WriteLine("Changing "+e.Record.Info);

}



{% highlight vbnet %}  {% endhighlight %} 



'The RecordValueChanged event gets fired after the record's value is changed.

Private Sub gridGroupingControl1_RecordValueChanged(ByVal sender As Object, ByVal e As Syncfusion.Grouping.RecordValueChangedEventArgs) Handles gridGroupingControl1.RecordValueChanged

    Console.WriteLine("Changed " + e.Record.Info)

End Sub



'The RecordValueChanging event gets fired while the record's value is changing.

Private Sub gridGroupingControl1_RecordValueChanging(ByVal sender As Object, ByVal e As Syncfusion.Grouping.RecordValueChangingEventArgs) Handles gridGroupingControl1.RecordValueChanging

    Console.WriteLine("Changing " + e.Record.Info)

End Sub

{% endhighlight %}

### Datasource

#### How to Get the Position of a Row in the DataSource from the Current Record

From the row index, you can get the element displayed at that row. If it is a record row, then the element's parent record's unsorted position will give the underlying DataRow position. 

Example

{% highlight C# %}  



Table table = e.TableControl.Table;



//Gets the current display element.
Element el = table.DisplayElements[e.rowIndex];



//Gets the current record.
Record r = el.ParentRecord;



//Finds its row position.
int dataRowPos = table.UnsortedRecords.IndexOf(r);



//Retrieves the corresponding data row from the datasource.
CustomersDataRow row = dataSoure.Rows[dataRowPos];



// Accesses the CutomerId value of the current record.
string id = row.CustomerId;

{% endhighlight %}

{% highlight vbnet %}  



Dim table As Table = e.TableControl.Table 



'Gets the current display element.
Dim el As Element = table.DisplayElements(e.rowIndex)



'Gets the current record. 
Dim r As Record = el.ParentRecord 



'Finds its row position.
Dim dataRowPos As Integer = table.UnsortedRecords.IndexOf(r)



'Retrieves the corresponding data row from the datasource. 
Dim row As CustomersDataRow = dataSoure.Rows(dataRowPos)



'Accesses the CutomerId value of the current record. 
Dim id As String = row.CustomerId

{% endhighlight %}

#### How to set up a datasource to the grouping grid

You can set a datasource to GroupingGrid using the following code.

{% highlight C# %}  



//Assigns a datasource to the GroupingGrid.

this.gridGroupingControl1.DataSource = dataTable;

{% endhighlight %}

{% highlight vbnet %}  



'Assigns a datasource to the GroupingGrid.

Me.gridGroupingControl1.DataSource = dataTable

{% endhighlight %}

### Groups

#### How to access all the groups

To access all the groups and records categorized under it, use the following code.

{% highlight C# %}  



this.iterate(this.gridGroupingControl1.Table.TopLevelGroup);



public void iterate(Group g)

{

System.Diagnostics.Trace.WriteLine("GroupLevel = "+g.GroupLevel);

System.Diagnostics.Trace.WriteLine(g.Info);

foreach(Record r in g.Records)

{

System.Diagnostics.Trace.WriteLine(r.Info);

}

foreach(Group gr in g.Groups)

{

iterate(gr);

}

}

{% endhighlight %}

{% highlight vbnet %}  



Me.iterate(Me.gridGroupingControl1.Table.TopLevelGroup)



Public Sub iterate(ByVal g As Group)

    System.Diagnostics.Trace.WriteLine("GroupLevel = " + g.GroupLevel.toString())

    System.Diagnostics.Trace.WriteLine(g.Info)

    For Each r As Record In g.Records

        System.Diagnostics.Trace.WriteLine(r.Info)

    Next r

    For Each gr As Group In g.Groups

        iterate(gr)

    Next gr

End Sub

{% endhighlight %} 

#### How to access a particular group

To access a particular group and the records categorized under it, use the following code.

{% highlight C# %}  



//Accesses a particular group and the categorized records under it

this.gridGroupingControl1.TableDescriptor.GroupedColumns.Add("Col1");



//Uses category.

this.iterate(this.gridGroupingControl1.Table.TopLevelGroup.Groups["row6 col1"]);



//Or uses index.

//this.iterate(this.gridGroupingControl1.Table.TopLevelGroup.Groups[6]);



public void iterate(Group g)

{

System.Diagnostics.Trace.WriteLine("GroupLevel = "+g.GroupLevel);

System.Diagnostics.Trace.WriteLine(g.Info);

foreach(Record r in g.Records)

{

System.Diagnostics.Trace.WriteLine(r.Info);

}

foreach(Group gr in g.Groups)

{

iterate(gr);

}

}

{% endhighlight %}

{% highlight vbnet %}  



'Accesses a particular group and the categorized records under it.  

    Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Add("Col1")

' Uses category.

    Me.iterate(Me.gridGroupingControl1.Table.TopLevelGroup.Groups("row6 col1"))



Public Sub iterate(ByVal g As Group)

    System.Diagnostics.Trace.WriteLine("GroupLevel = " + g.GroupLevel.toString())

    System.Diagnostics.Trace.WriteLine(g.Info)

    For Each r As Record In g.Records

        System.Diagnostics.Trace.WriteLine(r.Info)

    Next r

    For Each gr As Group In g.Groups

        iterate(gr)

    Next gr

End Sub

{% endhighlight %} 

#### How to access the group from DisplayElements

To access the group from DisplayElements, use the following code snippet.

{% highlight C# %}  


//For all the display elements in the Table.

foreach(Element el in gridGroupingControl1.Table.DisplayElements)

{

//DisplayElementKind.Record or DisplayElementKind.Summary.

if(el.Kind==DisplayElementKind.Record || DisplayElementKind.Summary)

{

Group g = el.ParentGroup;

System.Diagnostics.Trace.WriteLine(g.Info);

}

}

{% endhighlight %}


{% highlight vbnet %}  


'For all the display elements in the Table

For Each el As Element In gridGroupingControl1.Table.DisplayElements

'DisplayElementKind.Record or DisplayElementKind.Summary

    If el.Kind=DisplayElementKind.Record OrElse el.Kind=DisplayElementKind.Summary Then

    Dim g As Group = el.ParentGroup

         System.Diagnostics.Trace.WriteLine(g.Info)

     End If

Next el

{% endhighlight %} 


#### How to access the group from the Record

To access the group from the record, use the following code snippet.

{% highlight C# %}  


//For all the display elements in the Table.

foreach(Element el in gridGroupingControl1.Table.DisplayElements)

{

//DisplayElementKind.Record or DisplayElementKind.Summary.

if(el.Kind==DisplayElementKind.Record || DisplayElementKind.Summary)

{

Group g = el.ParentGroup;

System.Diagnostics.Trace.WriteLine(g.Info);

}

}

{% endhighlight %}


{% highlight vbnet %}  


'For all the display elements in the Table.

For Each el As Element In gridGroupingControl1.Table.DisplayElements

'DisplayElementKind.Record or DisplayElementKind.Summary.

    If el.Kind=DisplayElementKind.Record OrElse el.Kind=DisplayElementKind.Summary Then

    Dim g As Group = el.ParentGroup

         System.Diagnostics.Trace.WriteLine(g.Info)

     End If

Next el

{% endhighlight %} 


#### How to apply grouping properties for a particular column

Grouping properties for a particular column can be applied using the code snippet below.

{% highlight C# %}  


//Sets the color of any group cell in column 'Col1'.

this.gridGroupingControl1.TableDescriptor.Columns["Col1"].GroupByAppearance.AnyGroupCell.BackColor=Color.LightBlue;



//Sets the FilterBar cell appearance to be raised.

this.gridGroupingControl1.TableDescriptor.Columns["Col1"].GroupByAppearance.FilterBarCell.CellAppearance=GridCellAppearance.Raised;



//Setts the cell type of any record cell.

this.gridGroupingControl1.TableDescriptor.Columns["Col1"].GroupByAppearance.AnyRecordFieldCell.CellType="ComboBox";

{% endhighlight %}


{% highlight vbnet %}  



'Shows how to apply grouping properties for particular column.

'Sets the color of any record cell in column 'Col1'.

Me.gridGroupingControl1.TableDescriptor.Columns("Col1").GroupByAppearance.AnyRecordFieldCell.BackColor=Color.LightBlue



'Sets the FilterBar cell appearance to be raised.

Me.gridGroupingControl1.TableDescriptor.Columns("Col1").GroupByAppearance.FilterBarCell.CellAppearance=GridCellAppearance.Raised



'Sets the cell type of any record cell.

Me.gridGroupingControl1.TableDescriptor.Columns("Col1").GroupByAppearance.AnyRecordFieldCell.CellType="ComboBox"

{% endhighlight %} 

#### How to apply grouping properties for ChildLevelGroups

Grouping properties for ChildLevelGroups can be applied using the code snippet below.

{% highlight C# %} 

//Hides the caption text of the group.

this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowCaption=false;



//Hides the plus or minus sign from the group.

this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowCaptionPlusMinus=false;



//Adds the Filter Bar to the Child level groups.

this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowFilterBar=true;



//Hides the AddNewRecord field before details row.

this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowAddNewRecordBeforeDetails=false;



//Shows the footer of the group.

this.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowGroupFooter=true;

 {% endhighlight %}



{% highlight vbnet %}  


'Hides the caption text of the group.

Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowCaption=False



'Hides the plus or minus symbols present in the group.

Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowCaptionPlusMinus=False



'Shows the FilterBar.

Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowFilterBar=True



'Hides the AddNewRecord before details.

Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowAddNewRecordBeforeDetails=False



'Shows the group footer.

Me.gridGroupingControl1.TableDescriptor.ChildGroupOptions.ShowGroupFooter=True

{% endhighlight %} 


#### How to apply grouping properties for TopLevelGroups

Grouping properties for TopLevelGroups can be applied using the code snippet below.

{% highlight C# %} 


//Hides the AddNewRecord field before details row.

this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowAddNewRecordBeforeDetails=false;



//Hides the Header cells.

this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowColumnHeaders=false;



//Adds the Filter Bar to the Child level groups.

this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowFilterBar=true;



//Sets the caption.

this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.CaptionText="Hai";



//Shows the group footer.

this.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowGroupFooter=true;

 {% endhighlight %}


{% highlight vbnet %}  


'Hides the AddNewRecord before details.

Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowAddNewRecordBeforeDetails=False



'Hides the column headers.

   Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowColumnHeaders=False



'Adds the Filter Bar to the Top level groups.

   Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowFilterBar=True



'Sets the caption.

Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.CaptionText="Hai"



'Shows the group footer.

Me.gridGroupingControl1.TableDescriptor.TopLevelGroupOptions.ShowGroupFooter=True

{% endhighlight %} 


#### How to derive user defined groups

This can be done using the code below.

{% highlight C# %}  


//Group "Col2" using a custom categorizer and Comparer.

Syncfusion.Grouping.SortColumnDescriptor cd = new Syncfusion.Grouping.SortColumnDescriptor("Col2");

cd.Categorizer = new CustomCategorizer();

cd.Comparer = new CustomComparer();

this.gridGroupingControl1.TableDescriptor.GroupedColumns.Add(cd);



//Custom comparer function.

public int Compare(object x, object y)

{

if(x == null)

 return -1;

else if(y == null)

 return 100;

else 

{

 int i = int.Parse(x.ToString());

 int j = int.Parse(y.ToString());

 return i - j;

}

}



//Custom categorizer function.

public static int GetCategory(int i)

{

int ret = 0;

if(i < 10)

 ret = 1;

else if(i >= 10 && i < 20)

 ret = 2;

else if(i >= 20 && i < 30)

 ret = 3;

else if(i >= 30 && i < 40)

 ret = 4;

else  

 ret = 5;

return ret;

}

{% endhighlight %}


{% highlight vbnet %}  


'Group "Col2" using a custom categorizer and Comparer.

   Dim cd As Syncfusion.Grouping.SortColumnDescriptor = New 



Syncfusion.Grouping.SortColumnDescriptor("Col2")

   cd.Categorizer = New CustomCategorizer()

   cd.Comparer = New CustomComparer()

   Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Add(cd)



'Custom Comparer function.

   Public Function Compare(ByVal x As Object, ByVal y As Object) As 



Integer Implements IComparer.Compare

    If x Is Nothing Then

        Return -1

    ElseIf y Is Nothing Then

        Return 100

    Else

        Dim i As Integer = Integer.Parse(x.ToString())

        Dim j As Integer = Integer.Parse(y.ToString())

        Return i - j

    End If

End Function



'Custom Categorizer function.

Public Shared Function GetCategory(ByVal i As Integer) As Integer

    Dim ret As Integer = 0

    If i < 10 Then

        ret = 1

    ElseIf i >= 10 AndAlso i < 20 Then

        ret = 2

    ElseIf i >= 20 AndAlso i < 30 Then

        ret = 3

    ElseIf i >= 30 AndAlso i < 40 Then

        ret = 4

    Else

        ret = 5

    End If



    Return ret

End Function

{% endhighlight %} 


#### What are the events fired when the group is collapsing or collapsed

Following are the events triggered when the group is collapsing or collapsed.

{% highlight C# %}  



//Shows the GroupCollapsing event.

private void gridGroupingControl1_GroupCollapsing(object sender, Syncfusion.Grouping.GroupEventArgs e)

{

//Shows all the records in the group, which is being collapsed.

foreach(Record r in e.Group.Records)

{

    Console.WriteLine("Collapsing event "+r.Info);

}

}



//Shows the GroupCollapsed event.

private void gridGroupingControl1_GroupCollapsed(object sender, Syncfusion.Grouping.GroupEventArgs e)

{

//Shows all the records in the group which has collapsed.

    foreach(Record r in e.Group.Records)

    {

        Console.WriteLine("Collapsed event "+r.Info);

    }

}

{% endhighlight %}

{% highlight vbnet %} 



'Shows the GroupCollapsed events.

 Private Sub gridGroupingControl1_GroupCollapsed(ByVal sender As Object, ByVal e As Syncfusion.Grouping.GroupEventArgs) Handles 

    gridGroupingControl1.GroupCollapsed()

    For Each r As Record In e.Group.Records

        Console.WriteLine("Collapsed event " + r.Info)

    Next r

End Sub



'Shows the GroupCollapsing events.

  Private Sub gridGroupingControl1_GroupCollapsing(ByVal sender As Object, ByVal e As Syncfusion.Grouping.GroupEventArgs) Handles 

    gridGroupingControl1.GroupCollapsing()

    For Each r As Record In e.Group.Records

        Console.WriteLine("Collapsing event " + r.Info)

    Next r

End Sub

 {% endhighlight %} 

#### What are the events fired when the group is expanded / expanding?

Following are the events fired when the group is expanding or expanded.

{% highlight C# %}  


//Shows the GroupExpanding event.

private void gridGroupingControl1_GroupExpanding(object sender, Syncfusion.Grouping.GroupEventArgs e)

{

//Shows all the records in the group, which is being Expanded.

foreach(Record r in e.Group.Records)

{

Console.WriteLine("Expanding event "+r.Info);

}

}



//Shows the GroupExpanded event.

private void gridGroupingControl1_GroupExpanded(object sender, Syncfusion.Grouping.GroupEventArgs e)

{

//Shows all the records in the group, which has expanded.

foreach(Record r in e.Group.Records)

{

Console.WriteLine("Expanded event "+r.Info);

}

}

{% endhighlight %}


{% highlight vbnet %}  


//Shows the GroupExpanding event.

private void gridGroupingControl1_GroupExpanding(object sender, Syncfusion.Grouping.GroupEventArgs e)

{

// Shows all the records in the group, which is being Expanded.

    foreach(Record r in e.Group.Records)

    {

        Console.WriteLine("Expanding event "+r.Info);

    }

}



//Shows the GroupExpanded event.

private void gridGroupingControl1_GroupExpanded(object sender, Syncfusion.Grouping.GroupEventArgs e)

{

//Shows all the records in the group, which has expanded.

    foreach(Record r in e.Group.Records)

    {

        Console.WriteLine("Expanded event "+r.Info);

    }

}

{% endhighlight %} 


### How to Move Groups Upward or Downward Using Custom Comparer

To enable moving the groups using custom Comparer in GridGrouping control, an IComparer object and QueryValue event should be handled. The Comparer object allows you to control the movement of groups in GGC. The group moving logic should be implemented in custom Comparer. After customizing the sorting logic through IComparer, the QueryValue event should be applied to make the groups move among its position.

{% highlight C# %}  
public class CustomGroupSortOrderComparer : IGroupSortOrderComparer

{



string sortColumnDescriptorName;

public CustomGroupSortOrderComparer(string sortColumnDescriptorName)

{

this.sortColumnDescriptorName = sortColumnDescriptorName;

}

#region IComparer Members

public int Compare(object x, object y)

{

Group x1 = x as Group;

Group y1 = y as Group;

return String.Compare(x1.Records[0].GetValue(sortColumnDescriptorName).ToString(), y1.Records[0].GetValue(sortColumnDescriptorName).ToString());

}

#endregion

}





//In the above codes, IComparer is used to compare the groups to move. If X1 is greater than the Y1 groups, it will return either X1 or Y1. This Comparer class is used to move all groups from their original position. sortColumnDescriptorName describes the grouped column. 





//Handles the QueryValue event to make the grid use the custom Comparer.





void gridGroupingControl1_QueryValue(object sender, FieldValueEventArgs e)

{

//Code...

if (g == e.Record.ParentGroup)

{

ArrayList list = new ArrayList(table.Values.Count);

list.AddRange(table.Values);

list.Sort();

if (flag1 || flag2)

{

if (flag1)

{

index = list.IndexOf(table[e.Record.GetValue(e.TableDescriptor.GroupedColumns[0].Name)]) - 1;

}

else if (flag2)

{

index = list.IndexOf(table[e.Record.GetValue(e.TableDescriptor.GroupedColumns[0].Name)]) + 1;

}

if (index &lt; 0 || index &gt;= list.Count)

{

MessageBox.Show("Cannot go further!");

}

//Code...

}

//If you click the Move Up button, the index of the current record is decreased using the below code.

index = list.IndexOf(table[e.Record.GetValue(e.TableDescriptor.GroupedColumns[0].Name)]) - 1;



//If you click the Move Down button then the index of the current record is increased. Refer to the below code.

index = list.IndexOf(table[e.Record.GetValue(e.TableDescriptor.GroupedColumns[0].Name)]) - 1;



//Code...



 }

}

{% endhighlight %}


{% highlight vbnet %}  

public class CustomGroupSortOrderComparer : IGroupSortOrderComparer



Dim sortColumnDescriptorName As String

public CustomGroupSortOrderComparer(String sortColumnDescriptorName)

Me.sortColumnDescriptorName = sortColumnDescriptorName

'#Region "IComparer Members"

public Integer Compare(Object x, Object y)

Dim x1 As Group = TryCast(x, Group)

Dim y1 As Group = TryCast(y, Group)

Return String.Compare(x1.Records(0).GetValue(sortColumnDescriptorName).ToString(), y1.Records(0).GetValue(sortColumnDescriptorName).ToString())

'#End Region





'In the above codes, IComparer is used to compare the groups to move. If X1 is greater than the Y1 groups it will return the groups, either X1 or Y1. This Comparer class is used to move all groups from their original position. sortColumnDescriptorName describes the grouped column. 





'Handles the QueryValue event to make the grid use the custom Comparer.





void gridGroupingControl1_QueryValue(Object sender, FieldValueEventArgs e)

'Code...

If g = e.Record.ParentGroup Then

Dim list As New ArrayList(table.Values.Count)

list.AddRange(table.Values)

list.Sort()

If flag1 OrElse flag2 Then

If flag1 Then

index = list.IndexOf(table(e.Record.GetValue(e.TableDescriptor.GroupedColumns(0).Name))) - 1

ElseIf flag2 Then

index = list.IndexOf(table(e.Record.GetValue(e.TableDescriptor.GroupedColumns(0).Name))) + 1

End If

If index &lt; 0 OrElse index &gt;= list.Count Then

MessageBox.Show("Cannot go further!")

End If



'Code...



End If

'If you click the Move Up button the index of the current record is decreased using the below code.

index = list.IndexOf(table(e.Record.GetValue(e.TableDescriptor.GroupedColumns(0).Name))) - 1



'If you click the Move Down button then the index of the current record is increased. Refer to the below code.

index = list.IndexOf(table(e.Record.GetValue(e.TableDescriptor.GroupedColumns(0).Name))) - 1

'Code...



End Sub

{% endhighlight %} 

Refer to the following sample file for more details.

[http://www.syncfusion.com/downloads/Support/DirectTrac/98850/Demo%20(2)539070983.zip](http://www.syncfusion.com/downloads/Support/DirectTrac/98850/Demo%20(2)539070983.zip)

### Sorting

#### How to Do Custom Sorting for a Specified String Column

You can customize the sorting and set the rows with an empty string to the last. This can be done by making use of the Compare method of IComparer Class. You can write your custom code for the Compare() method where you can set the empty string rows as last. This can be achieved by finding the length of the string in the compare() method and canceling its sorting thereby pushing the empty strings at the last.

Example

Here is the code for implementing the string length compare method.

{% highlight C# %}  



public int Compare(object x, object y)

{

      if(x == null && y == null)

      return 0;



//Does not include empty strings for comparison.

      else if(x == System.DBNull.Value)

      {

          return 0;

      }

      else if(y == System.DBNull.Value)

      {

          return 0;

      }

      else

      {

           return ((IComparable) x.ToString()).CompareTo(y.ToString());

      }

}



SortColumnDescriptor cd = new Syncfusion.Grouping.SortColumnDescriptor();

this.gridGroupingControl1.TableDescriptor.SortedColumns.Add(cd);

cd.SortDirection = System.ComponentModel.ListSortDirection.Descending;

cd.Comparer = new StrLenComparer();

{% endhighlight %}

{% highlight vbnet %}  



Public Function Compare(ByVal x As Object, ByVal y As Object) As Integer

    If x Is Nothing AndAlso y Is Nothing Then

       Return 0



'Does not include empty strings for comparison.

    Else If x Is System.DBNull.Value Then

       Return 0

    Else If y Is System.DBNull.Value Then

       Return 0

    Else

       Return (CType(x.ToString(), IComparable)).CompareTo(y.ToString())

    End If

End Function



Private cd As SortColumnDescriptor = New Syncfusion.Grouping.SortColumnDescriptor()

Me.gridGroupingControl1.TableDescriptor.SortedColumns.Add(cd)

Private cd.SortDirection = System.ComponentModel.ListSortDirection.Descending

Private cd.Comparer = New StrLenComparer()

{% endhighlight %}

#### How to perform Custom Sorting in GridGroupingControl

To use custom sorting in GridGroupingControl, you need to disable default sorting using the TableControlQueryAllowSortColumn and the TableControlCellClick events. 

The following are the steps to disable default sorting and use custom sorting:

1. Set AllowSort property of TableControlQueryAllowSortColumn event to false to disable default sorting. The following code illustrates this:

{% highlight C# %}  

void gridGroupingControl1_TableControlQueryAllowSortColumn(object sender, GridQueryAllowSortColumnEventArgs e)

        {

            if (checkBox1.Checked && e.Column.Name== "Source")

                e.AllowSort = false;

            else

                e.AllowSort = true;

        }



{% endhighlight %}

{% highlight vbnet %}  
Private Sub gridGroupingControl1_TableControlQueryAllowSortColumn(ByVal sender As Object, ByVal e As GridQueryAllowSortColumnEventArgs)

            If e.Column.Name = "Source" Then

                e.AllowSort = False

            Else

                e.AllowSort = True

            End If

        End Sub


{% endhighlight %} 



2.Ensure that the CellType is ColumnHeaderCell in TableControlCellClick event and then call your sorting method. The following code illustrates this:

{% highlight C# %}  

void gridGroupingControl1_TableControlCellClick(object sender, GridTableControlCellClickEventArgs e)

        {

            GridTableCellStyleInfo style = e.TableControl.GetTableViewStyleInfo(e.Inner.RowIndex, e.Inner.ColIndex);

            if (style.TableCellIdentity.TableCellType == GridTableCellType.ColumnHeaderCell)

            {

                if (style.TableCellIdentity.Column != null && style.TableCellIdentity.Column.Name == "Source")

                {



                    CustomSorting(style.TableCellIdentity.Column.Name);

                }                

            }}

{% endhighlight %}

{% highlight vbnet %}  

Private Sub gridGroupingControl1_TableControlCellClick(ByVal sender As Object, ByVal e As GridTableControlCellClickEventArgs)

            Dim style As GridTableCellStyleInfo = e.TableControl.GetTableViewStyleInfo(e.Inner.RowIndex, e.Inner.ColIndex)

            If style.TableCellIdentity.TableCellType = GridTableCellType.ColumnHeaderCell Then

                If style.TableCellIdentity.Column IsNot Nothing AndAlso style.TableCellIdentity.Column.Name = "Source" Then



                    CustomSorting(style.TableCellIdentity.Column.Name)

                End If

            End If

        End Sub


{% endhighlight %} 


In the preceding code example CustomSorting_()_ is the user defined method. In this method, the values from the grid are added to an ArrayList and sorted, and then the sorted values are stored back into the grid. The following code illustrates this:

{% highlight C# %} 

public void CustomSorting(string sortColumn)

        {

            ArrayList list = new ArrayList();

            foreach (Record r in this.gridGroupingControl1.Table.Records)

            {

                list.Add(r.GetValue(sortColumn));

            }

            list.Sort();



            for (int i = 0; i < this.gridGroupingControl1.Table.Records.Count; i++)

            {

                this.gridGroupingControl1.Table.Records[i].GetRecord().SetValue(sortColumn, list[i].ToString());

            }

            this.gridGroupingControl1.Refresh();

        }



 {% endhighlight %}

{% highlight vbnet %}  

Public Sub CustomSorting(ByVal sortColumn As String)

            Dim list As New ArrayList()

            For Each r As Record In Me.gridGroupingControl1.Table.Records

                list.Add(r.GetValue(sortColumn))

            Next

            list.Sort()



            For i As Integer = 0 To Me.gridGroupingControl1.Table.Records.Count - 1

                Me.gridGroupingControl1.Table.Records(i).GetRecord().SetValue(sortColumn, list(i).ToString())

            Next

            Me.gridGroupingControl1.Refresh()

        End Sub

{% endhighlight %} 

#### How to prevent sorting if the column has the same value in each cell

To prevent sorting column with same cell values, the choices are obtained through ‘GetFilterBarChoices()’ method from the filter bar cell model. This retrieves the unique values of the respective column. ‘OptimizeFilterPerformance’ property can also be enabled to get these choices.

{% highlight C# %}  

GridTableFilterBarCellModel filterModel = null;//Declares this globally. 

//In form load.

filterModel = this.gridGroupingControl1.TableModel.CellModels["FilterBarCell"] as GridTableFilterBarCellModel;

this.gridGroupingControl1.OptimizeFilterPerformance = true;

//In event.

private void gridGroupingControl1_TableControlQueryAllowSortColumn(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridQueryAllowSortColumnEventArgs e)

{

int rowIndex = e.TableControl.Table.Records[0].GetRowIndex();

int colIndex = e.Column.GetRelativeColumnIndex() + 1; //Check the col index with your application.

GridTableCellStyleInfo tableStyleInfo = e.TableControl.GetTableViewStyleInfo(rowIndex, colIndex);

object[] items = (object[])filterModel.GetFilterBarChoices(tableStyleInfo.TableCellIdentity);

if (items.Length == 2 && items[0].GetType() == typeof(System.DBNull)) //Checks if there is only one unique item.

{

e.AllowSort = false;

}

}


{% endhighlight %}


{% highlight vbnet %} 


Dim filterModel As GridTableFilterBarCellModel = Nothing 'Declares this globally.



'In form load.



filterModel = TryCast(Me.gridGroupingControl1.TableModel.CellModels("FilterBarCell"), GridTableFilterBarCellModel)



Me.gridGroupingControl1.OptimizeFilterPerformance = True



'In event.



private void gridGroupingControl1_TableControlQueryAllowSortColumn(Object sender, 



Syncfusion.Windows.Forms.Grid.Grouping.GridQueryAllowSortColumnEventArgs e)



Dim rowIndex As Integer = e.TableControl.Table.Records(0).GetRowIndex()



Dim colIndex As Integer = e.Column.GetRelativeColumnIndex() + 1 'Checks the col index with your application.



Dim tableStyleInfo As GridTableCellStyleInfo = e.TableControl.GetTableViewStyleInfo(rowIndex, colIndex)



Dim items() As Object = CType(filterModel.GetFilterBarChoices(tableStyleInfo.TableCellIdentity), Object())



If items.Length = 2 AndAlso items(0).GetType() Is GetType(System.DBNull) Then 'Checks if there is only one unique item.



e.AllowSort = False

 {% endhighlight %} 


### How to Remove Hidden Columns from Field Chooser

To remove hidden columns from Grid Grouping Field Chooser, you need to bypass original column collection in the Field Chooser with a cloned GridColumnDescriptorCollection. The following steps illustrate how to do this:

1.Get the collection of the visible columns, which are removed from the column collection.

2.Create a cloned column collection GridColumnDescriptorCollection from theTable Descriptor.

3.Pass the cloned collection object as an argument to the Field Chooser to ensure that changes are made correctly to the Field Chooser.

The following code example illustrates this.

{% highlight C# %}  


//Removes Visible Columns.

this.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("Name3");


//Creates GridColumnDescriptorCollection column collection.

GridColumnDescriptorCollection collection = 

this.gridGroupingControl1.TableDescriptor.Columns.Clone();



//Detaches visible column, which is likely to be removed from this cloned collection also.

collection.Remove("Name3");



//Passes the collection as an argument to the Field Chooser object.

FieldChooser fChooser = new FieldChooser(this.gridGroupingControl1, collection);

{% endhighlight %}


{% highlight vbnet %}  



'Removes Visible Columns.

Me.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("Name3")



'Creates a GridColumnDescriptorCollection column collection.

Dim collection As GridColumnDescriptorCollection = 

Me.gridGroupingControl1.TableDescriptor.Columns.Clone()



'Detaches the visible column, which is likely to be removed from this cloned collection also.

collection.Remove("Name3")



'Passes the collection as an argument to the Field Chooser object.

Dim fChooser As New FieldChooser(Me.gridGroupingControl1, collection)

{% endhighlight %}

### How to refresh Binding List Data Source automatically when Grid Grouping Control changes

To refresh binding list data source automatically when GridGroupingControl changes, you need to set TableDirty property to _‘__True’_ in GridGroupingControl. Doing this invalidates Grid Table to its current changes. Refreshing Data Source takes place only while using the data source as Binding List. The following code sample shows how to refresh Binding List Data Source when GridGroupingControl changes.

{% highlight C# %}  

  this.Grid.Table.TableDirty = ‘_True’_

{% endhighlight %}

{% highlight vbnet %}  
  this.Grid.Table.TableDirty = _‘True’_
{% endhighlight %} 

  
Sample:

[http://www.syncfusion.com/downloads/support/directtrac/118685/GridDeleteTest-1197463268.zip](http://www.syncfusion.com/downloads/support/directtrac/118685/GridDeleteTest-1197463268.zip)

### How to use OLD Metro Style in Grid?

Starting from Essential Studio, Volume 4, 2013(V11.40.26), Metro Theme is available with newer styles.  For any version earlier than Volume 4, 2013, you can use oldmetrostyle in your Grid using new class OldMetroStyle. Using the new class, you can apply all the controls in form with static method “ApplyStyle”. You can also pass gridcontrol,gridgrouping, or griddatabound control in this method.

The following code example illustrates how to add the Old Metro Style in Grid control.

{% highlight C# %}  

 OldMetroStyle.ApplyStyle(this. gridControl1);

{% endhighlight %}

{% highlight vbnet %}  

 OldMetroStyle.ApplyStyle(Me.gridControl1)

 {% endhighlight %}
 
 You can download the sample that uses a Old metro style in the Grid from the following location.

[http://www.syncfusion.com/downloads/support/directtrac/119651/OldMetroStyle1845477900.zip](http://www.syncfusion.com/downloads/support/directtrac/119651/OldMetroStyle1845477900.zip)

The following screen shot shows a new metro theme in Grid.

 ![New_Metro](GridGrouping-Control_images/GridGrouping-Control_img4.png) 



The following screen shot shows an Old metro theme in Grid.

 ![Old_Metro](GridGrouping-Control_images/GridGrouping-Control_img5.png) 



