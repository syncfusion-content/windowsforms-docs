---
layout: post
title: General
description: general
platform: windowsform
control: GridGroupingControl
documentation: ug
---

## General

#### How to Access Corresponding Parent Table's Row from the Child

Get the table's current element. Then cast this element to GridNestedTable. You can now access the parent table for the current element. This is a recursive process. 

Example

[C#]



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



[VB.NET]



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

#### How to access the current record

To access the current record, use the following code.

[C#]



Record rec = this.gridGroupingControl1.Table.CurrentRecord;

Trace.WriteLine(rec.ToString());



[VB.NET]



Dim rec As Record = Me.gridGroupingControl1.Table.CurrentRecord

Trace.WriteLine(rec.ToString())

#### How to add and format unbound columns in GridGrouping control

The unbound columns can be added and formatted using the below code.

[C#]



//Adds unbound column in GridGroupingControl.

this.gridGroupingControl1.TableDescriptor.UnboundFields.Add("UnboundColumn1");



//Formats the Unbound column.

this.gridGroupingControl1.TableDescriptor.Columns["UnboundColumn1"].Appearance.AnyRecordFieldCell.CellType = "CheckBox";

this.gridGroupingControl1.TableDescriptor.Columns["UnboundColumn1"].Appearance.AnyRecordFieldCell.BackColor = Color.LightSteelBlue;



[VB]



'Adds an Unbound column in a  GridGroupingControl.

Me.gridGroupingControl1.TableDescriptor.UnboundFields.Add("UnboundColumn1")



'Formats an Unbound column in GridGroupingControl.

Me.gridGroupingControl1.TableDescriptor.Columns("UnboundColumn1").Appearance.AnyRecordFieldCell.CellType = "CheckBox"

Me.gridGroupingControl1.TableDescriptor.Columns("UnboundColumn1").Appearance.AnyRecordFieldCell.BackColor = Color.LightSteelBlue

#### How to change the caption text

This can be done using the code below.

[C#]



// Sets the caption text.

// {TableName} - Displays the CaptionSection.ParentTableDescriptor.Name

//{CategoryName} - Displays the CaptionSection.ParentGroup.Name

//{Category} - Displays the CaptionSection.ParentGroup.Category

//{RecordCount} - Displays the CaptionSection.ParentGroup.GetFilteredRecordCount()

this.gridGroupingControl1.TopLevelGroupOptions.CaptionText = "Tablename is {TableName} : {Category} : {RecordCount}";



[VB]



'Sets the caption text.

' {TableName} - Displays the CaptionSection.ParentTableDescriptor.Name

'{CategoryName} - Displays the CaptionSection.ParentGroup.Name

'{Category} - Displays the CaptionSection.ParentGroup.Category

'{RecordCount} - Displays the CaptionSection.ParentGroup.GetFilteredRecordCount()

Me.gridGroupingControl1.TopLevelGroupOptions.CaptionText = "Tablename is {TableName} : {Category} : {RecordCount}"

#### How to disable the resizing of rows and columns

This can be done using the below code.

[C#]



//Code to disable the resizing of rows.

this.gridGroupingControl1.TableModel.Options.ResizeRowsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None;



//Code to disable the column resizing.

this.gridGroupingControl1.TableModel.Options.ResizeColsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None;



[VB]



'Code to disable the column resizing.

Me.gridGroupingControl1.TableModel.Options.ResizeColsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None



'Code to disable the resizing of rows.

Me.gridGroupingControl1.TableModel.Options.ResizeRowsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None

#### How to Efficiently Customize Child Table/Group using Custom Engine.

When customizing GridChildTable/GridGroup by deriving GridChildTable/GridGroup in the custom engine, OnInitializeVisibleCounters method and OnEnsureInitialized method must also be overridden along with other overrides. Otherwise, GridGroup calls into GridGroup extend methods and sometimes bypasses methods like IsChildVisible that you have overridden.

In OnInitializeVisibleCounters override, the total visible elements count, the total vertical scroll distance of elements in pixels and the total custom count of the visible elements must be calculated and set to CachedVisibleCount, CachedYamountCount and CachedVisibleCustomCount respectively. The OnEnsureInitialized override method must return false (i.e changes were detected and the object was not updated) to ensure that the object is up to data.

#### How to group a column programmatically

To group a column programmatically, use the following code.

[C#]



//Shows the GroupDropArea.

this.gridGroupingControl1.ShowGroupDropArea = true;

//Groups by "Col1".

this.gridGroupingControl1.TableDescriptor.GroupedColumns.Add("Col1", ListSortDirection.Ascending);



[VB.NET]



'Shows the GroupDropArea.

Me.gridGroupingControl1.ShowGroupDropArea = True

'Groups by "Col1".

Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Add("Col1", ListSortDirection.Ascending)

#### How to Hide Custom Option in the FilterBar DropDown

To achieve this, you need to implement custom filterbar cell deriving cellmodel/cellrenderer from GridTableFilterBarCellModel/GridTableFilterBarCellRenderer.

* GridTableFilterBarCellModel.FillWithChoices method is overridden to remove the string "Custom" from the list.
* GridTableFilterBarCellModel.Select method is rewritten with "Select_withoutcustom" method, which specifies the index for the selected item. You can pass the index for the "Custom" selected item as 0.
* GridTableFilterBarCellModel.ListBoxMouseUp() method is overridden to invoke Select_withoutcustom method instead of the Select method.

[C#]



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



[VB.NET]



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

#### How to Hide or Unhide the Columns in a Grouping Grid

The TableDescriptor object has VisibleColumns collection that you can use to control the columns that are visible. You can hide or unhide columns using the following code.

Example

[C#]



//Hides.

this.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("Col1");



//Unhides.

this.gridGroupingControl1.TableDescriptor.VisibleColumns.Add("Col1");



[VB]



'Hides.

Me.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("Col1")



'Unhides.

Me.gridGroupingControl1.TableDescriptor.VisibleColumns.Add("Col1")

#### How to Place a Checkbox in a Header Cell

A CheckBox can be placed in a header cell of the GridGroupingControl by handling QueryCellStyleInfo event. The value of the check box has to be stored in any datatype and SaveCellText handler saves the value from the grid. To get this working, you need to cancel sorting of the header cell by handling TableControlCellClick event.

In the TableControl.MouseUp event handler, CellRenderer's mouseup has to be raised. By default, selectcells mousecontroller calls Cellrenderer's MouseUp, which in turn raises checkboxclick. DragGroupHeader mousecontroller, which is for the header cells and does not call Renderer's mouseup. So you have to explicitly call Renderer's Mouseup from TableControl's Mouseup checking for MouseController type. Refer to the attached sample for more details.

Example

[C#]



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



[VB]



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

#### How to Place UserControl in a Header Cell

To have User Control in GridGroupingControl, GridGenericCellModel and GridGenericCellRenderer classes must be derived and User Control designed must be made as a cellmodel in the GridGroupingControl using these derived classes.

The following are the steps that need to be followed to do this.

Step 1: The UserControl form is added to the project and the required controls are dropped into it.

Step 2: The GridGenericCellModel and GridGenericCellRenderer classes are derived and the UserControl is drawn accordingly to fit into the required cell header.

[C#]



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



[VB]



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



Step 3: A new CellType is created by adding the instance of derived generic cell model class into the GridGroupingControl's cellmodels.

[C#]



CustomControlCellModel.CustomControl = new Button();

this.gridGroupingControl1.Table.TableModel.CellModels.Add("UserControl",new CustomControlCellModel(this.gridGroupingControl1.TableModel));



[VB]



CustomControlCellModel.CustomControl = New Button

Me.gridGroupingControl1.Table.TableModel.CellModels.Add("UserControl", New CustomControlCellModel(Me.gridGroupingControl1.TableModel))

#### How to Prevent Columns Resizing for Child Tables

To prevent GridGroupingControl's child table or grandchild table's columns from getting resized, you must handle TableControlResizingColumns event of the grid. In the event handler, check for the e.TableDescriptor.Name and cancel the event by setting e.Cancel to true. The following code snippet cancels resizing the Child table.

[C#]



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



[VB]



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

#### How to reject the changes made to GridGroupingControl

By default, any changes made to GridGroupingControl will affect the underlying data source. In order to cancel the changes, you can make use of RejectChanges method to reject the recent changes made to the data source. Also, ensure that AcceptChanges method is called after date source is filled, as RejectChanges method will roll back all the changes made to the data source since the last time the AcceptChanges method was called.

[C#]



private void button1_Click(object sender, EventArgs e) 

{ 

DataTable dt = this.gridGroupingControl1.DataSource as DataTable; 

dt.RejectChanges(); 

}



[VB]



Private Sub button1_Click(ByVal sender As Object, ByVal e As EventArgs)

Dim dt As DataTable = TryCast(Me.gridGroupingControl1.DataSource, DataTable)

dt.RejectChanges()

End Sub

#### How to resize columns to fit in a page while exporting to PDF

To resize columns to fit in a page, you can use property ExportRange of GridPDFConverter. The property is used to set number of rows to be exported in a page. The ExportToPdfWithMerge method is used to export the grid.

Example

C#

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





VB



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



#### How to Make Use of the Journal Control using GridGrouping Controls

You can use GridGroupingControl, TextBox, RecordNavigationBar and Button control to make use of Journal control. GridGroupingControl is designed as a grid to bind the data source. The navigation bar is used to browse the records in the grid. The navigation bar can be enabled by setting ShowNavigationBar property as true. Preview operation can be performed through Button control. QueryCellInfo event is used to display text box value in the preview cell.

_Table 155: Properties_

<table>
<tr>
<td>
PROPERTIES</td><td>
DESCRIPTION</td></tr>
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

[C#]



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



[VB.Net]



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

![](General_images/General_img1.png)
{:.image }


Sample link:

[http://www.syncfusion.com/uploads/redirect.aspx?&team=support&file=I68039-490391191.zip](http://www.syncfusion.com/uploads/redirect.aspx?&team=support&file=I68039-490391191.zip)

#### How to Get New Form Window in Front of an Active Window while Double Clicking a Cell

To display a new form window while double clicking a cell, TableControlCellDoubleClick event is handled. window.BringToFront() method is used to bring the new window in front of the active window, but this is effective only if FocusOnMouseDown property is set to false.

[C#]

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



[VB]

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



