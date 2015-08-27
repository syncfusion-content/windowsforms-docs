---
layout: post
title: Common
description: common
platform: windowsform
control: GridControl
documentation: ug
---

### Common

The tasks and solutions discussed in this section apply to either GridControl or GridDataBoundGrid.

#### How to Add Conditional Formatting to Rows

Introduction

Say you want to color a row if the value in column 2 is larger than 10 (or any logical condition that you can evaluate). You can do something like this by using PrepareViewStyleInfo event. This event is raised immediately prior to the cell being drawn and gives you a chance to modify GridStyleInfo object that determines the appearance of the cell. Since you want to affect a visual change on the whole row when a single cell value is modified, you will need to tell the grid to redraw the whole row when the current cell moves instead of just redrawing affected cells. You can use the same technique to conditionally format columns or cells.

Example

[C#]



//Tells the grid to redraw the whole row as current cell moves (say in Form.Load).

this.grid.Model.Options.RefreshCurrentCellBehavior = GridRefreshCurrentCellBehavior.RefreshRow;



//The event handler.

private void grid_PrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)

{

    if(e.RowIndex > 0  && e.ColIndex > 0)

    {

         double d;

         string val = (e.ColIndex == 2) ? e.Style.Text : this.gridDataBoundGrid1[e.RowIndex, 2].Text;

         if(double.TryParse(val, System.Globalization.NumberStyles.Any, null, out d)

                          && d > 10)

         {

              e.Style.BackColor = Color.LightGoldenrodYellow;

         }

     }

}



[VB.NET]



'Tells the grid to redraw the whole row as current cell moves (say in Form.Load).

Me.grid.Model.Options.RefreshCurrentCellBehavior = GridRefreshCurrentCellBehavior.RefreshRow



'The event handler.

Private Sub grid_PrepareViewStyleInfo(ByVal sender As Object, ByVal e As GridPrepareViewStyleInfoEventArgs)

     If e.RowIndex > 0 And e.ColIndex > 0 Then

         Dim d As Double

         Dim val As String

         If e.ColIndex = 2 Then 

             val = e.Style.Text 

         Else 

             val = Me.gridDataBoundGrid1(e.RowIndex, 2).Text) 

         End If

         If Double.TryParse(val, System.Globalization.NumberStyles.Any, Nothing, d) And d > 10 Then

             e.Style.BackColor = Color.LightGoldenrodYellow

         End If

      End If



'Grid_PrepareViewStyleInfo.

End Sub 

#### How to Capture Function Keys When the Current Cell is in Active Edit Mode

Introduction

While the grid cell is not actively edited, the grid itself will get these keystrokes. In this case, event handlers like grid.CurrentCellKeyDown and grid.KeyDown can be used to catch the keys. When the current cell is actively being edited, the grid does not automatically catch these keys. In this case, you can use Grid.CurrentCellControlKeyMessage to catch the function keys. You will have to manually subscribe to it. Note that this event may be hit multiple times for each keystroke (eg., for both KeyDown and KeyUp). You can check e.Msg property to see what key message is being processed by your event handler.

Example

[C#]



//Subscribes to the event.
this.grid.CurrentCellControlKeyMessage += new GridCurrentCellControlKeyMessageEventHandler (grid_CurrentCellControlKeyMessage);



//The handler.
private void grid_CurrentCellControlKeyMessage(object sender, GridCurrentCellControlKeyMessageEventArgs e)

{

    Keys keyCode = (Keys)((int)e.Msg.WParam) & Keys.KeyCode;

    Console.WriteLine(keyCode);

    Console.WriteLine(e.Msg);

}



[VB.NET]



'Subscribes to the event.
AddHandler Me.grid.CurrentCellControlKeyMessage, AddressOf grid_CurrentCellControlKeyMessage



'The handler.
Private Sub grid_CurrentCellControlKeyMessage(ByVal sender As Object, ByVal e As GridCurrentCellControlKeyMessageEventArgs)

        Dim keyCode As Keys = CType(Fix(e.Msg.WParam), Keys) And Keys.KeyCode

        Console.WriteLine(keyCode)

        Console.WriteLine(e.Msg)



'Grid_CurrentCellControlKeyMessage.

End Sub 

#### How to Capture Mouse and Key Events When the Text Box Cell is in an Active State

Introduction

The embedded text box control gets the mouse actions while the text box is active. You can subscribe to the embedded text box's events inside a cell by accessing it through the cell's renderer. 

Example

[C#]



 private void Form1_Load(object sender, System.EventArgs e)

    {

//Creates TextBoxCellRenderer object.

        GridTextBoxCellRenderer tbr = (GridTextBoxCellRenderer) this.grid.CellRenderers["TextBox"];



//Handle Renderer.TextBox.MouseDown to capture mouse events. 

        tbr.TextBox.MouseDown += new MouseEventHandler(textbox_MouseDown);



//Handle Renderer.TextBox.KeyUp to capture key events.

        tbr.TextBox.KeyUp += new KeyEventHandler(textBox_KeyUp);

    }



    private void textbox_MouseDown(object sender, MouseEventArgs e)

    {

        Console.WriteLine("textbox_MouseDown");

    }



    private void textBox_KeyUp(object sender, KeyEventArgs e)

    {

        Console.WriteLine("textBox_KeyUp");

    }



[VB.NET]



Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs)



'Creates TextBoxCellRenderer object.

        Dim tbr As GridTextBoxCellRenderer = CType(Me.grid.CellRenderers("TextBox"), GridTextBoxCellRenderer)



'Handle Renderer.TextBox.MouseDown to capture mouse events.

        AddHandler tbr.TextBox.MouseDown, AddressOf textbox_MouseDown

        AddHandler tbr.TextBox.KeyUp, AddressOf textBox_KeyUp



'Form1_Load.

    End Sub 



    Private Sub textbox_MouseDown(ByVal sender As Object, ByVal e As MouseEventArgs)

        Console.WriteLine("textbox_MouseDown")



'Form1_Load.

    End Sub X



    Private Sub textBox_KeyUp(ByVal sender As Object, ByVal e As KeyEventArgs)

        Console.WriteLine("textBox_KeyUp")



'TextBox_KeyUp.

End Sub 

#### How to Change the Color of All Headers

Introduction

The styles of the Header cells are controlled by base styles. The "Header" base style will affect all column headers including cell 0,0. The "Column Header" base style will affect the column headers excluding cell 0,0. The "RowHeader" base style will affect all row headers excluding cell 0,0.

Example

[C#]



//Column headers including cell 0,0.
this.grid.BaseStylesMap["Header"].StyleInfo.BackColor = Color.Blue;



//Column headers excluding cell 0,0.
this.grid.BaseStylesMap["Column Header"].StyleInfo.BackColor = Color.Red;



//Row headers excluding cell 0,0.
this.grid.BaseStylesMap["Row Header"].StyleInfo.BackColor = Color.Green;



[VB.NET]



'Column headers including cell 0,0.

Me.grid.BaseStylesMap("Header").StyleInfo.BackColor = Color.Blue



'Column headers excluding cell 0,0.

Me.grid.BaseStylesMap("Column Header").StyleInfo.BackColor = Color.Red

'Row headers excluding cell 0,0.

Me.grid.BaseStylesMap("Row Header").StyleInfo.BackColor = Color.Green

#### How to Change the Size of the Combo Box Button

Introduction

Change the size of the combobox button by changing the ButtonBarSize in the CellModel for the control. 

Example

[C#]



//Creates Combobox Cell model object.

GridComboBoxCellModel model = this.grid.Model.CellModels["ComboBox"] as GridComboBoxCellModel;



//Assigns a new value to its ButtonBarSize property. 
model.ButtonBarSize = new Size(8, 8);



[VB.NET]



'Creates Combobox Cell model object.

Dim model As GridComboBoxCellModel = CType(Me.Grid.Model.CellModels("ComboBox"), GridComboBoxCellModel)



'Assigns a new value to its ButtonBarSize property.
model.ButtonBarSize = New Size(8, 8)

#### How to Change the Mouse Cursor for a GridControl

Introduction

The simplest way is to derive the grid and override OnSetCursor. You can add additional checks to narrow down where to set the cursor.

Example

[C#]



//GridDataBoundGrid.

  public class MyGridControl : GridControl 

  {

         protected override void OnSetCursor(ref Message m)

         {

              base.OnSetCursor(ref m);



//Always set the cursor to a cross.

              Cursor.Current = Cursors.Cross;



//or

//Put special cursor over cell 2,2.

//Point pt = this.PointToClient(Control.MousePosition);

//int row, col;

//if(this.PointToRowCol(pt, out row, out col, -1)

//        && row == 2 && col == 2)

// {

//        Cursor.Current = Cursors.Cross;

// }

          }

}



[VB.NET]



   Public Class MyGridControl

       Inherits GridControl 'GridDataBoundGrid



       Protected Overrides Sub OnSetCursor(ByRef m As Message)

           MyBase.OnSetCursor(m)



'Always set the cursor to a cross.

           Cursor.Current = Cursors.Cross



'OR

'Put special cursor over cell 2,2.

'Point pt = this.PointToClient(Control.MousePosition);

'int row, col;

'If Me.PointToRowCol(pt, row, col, -1) AndAlso row = 2 AndAlso col = 2 Then

           '        Cursor.Current = Cursors.Cross;

'End If



'OnSetCursor 

       End Sub 



'MyGridControl 

End Class 

#### How to Control the Number of Visible Items in a Combo Box Cell

Introduction

There is a GridComboBoxListBoxPart.DropDownRows property that you can set to control this. The GridComboBoxListBoxPart is the actual control type of the list that is dropped to display the items. But, it is buried a little deep and generally needs an event handler to set it. The reason for using an event handler is that normally a single combobox control is shared among all combobox cells. Each cell can potentially have a different list and may need different numbers of visible rows. So to handle this, you must catch Grid.CurrentCellShowingDropDown event and set the property there depending upon the exact row and column.

Example

[C#]



private void grid_CurrentCellShowingDropDown(object sender, GridCurrentCellShowingDropDownEventArgs e)

{ 

        GridControlBase grid = sender as GridControlBase; 

        if(grid != null) 

        { 

            GridCurrentCell cc = grid.CurrentCell; 

            GridComboBoxCellRenderer cr = cc.Renderer as GridComboBoxCellRenderer;



//Sets number of visible items for comboboxes in Row 6 as 4, Row 4 as 7, Row 2 as 10 , and so on. 

            if(cc != null) 

            { 

                if(cc.RowIndex == 6) 

                     ((GridComboBoxListBoxPart)cr.ListBoxPart).DropDownRows = 4; 

                else if(cc.RowIndex == 4) 

                     ((GridComboBoxListBoxPart)cr.ListBoxPart).DropDownRows = 7; 

                else if(cc.RowIndex == 2)

                     ((GridComboBoxListBoxPart)cr.ListBoxPart).DropDownRows = 10; 

                else ((GridComboBoxListBoxPart)cr.ListBoxPart).DropDownRows = 6; 

            } 

         }

}



[VB.NET]



Private Sub Grid_CurrentCellShowingDropDown(sender As Object, e As GridCurrentCellShowingDropDownEventArgs)

        Try

            Dim grid As GridControlBase = sender

            Dim cc As GridCurrentCell = grid.CurrentCell

            If cc.Renderer Is GetType(GridComboBoxCellRenderer) Then

                Dim cr As GridComboBoxCellRenderer = cc.Renderer



'Sets number of visible items for comboboxes in Row 6 as 4, Row 4 as 7, Row 2 as 10 , and so on.

                If cc.RowIndex = 6 Then

                    CType(cr.ListBoxPart, GridComboBoxListBoxPart).DropDownRows = 4

                ElseIf cc.RowIndex = 4 Then

                    CType(cr.ListBoxPart, GridComboBoxListBoxPart).DropDownRows = 7

                ElseIf cc.RowIndex = 2 Then

                    CType(cr.ListBoxPart, GridComboBoxListBoxPart).DropDownRows = 10

                Else

                    CType(cr.ListBoxPart, GridComboBoxListBoxPart).DropDownRows = 6

                End If

            End If

        Catch

        End Try

End Sub

#### How to Control the Way Grid Handles Exceptions

Introduction

Syncfusion.Windows.Forms.ExceptionManager has static members that you can use to control how the grid handles exceptions. 

Example

To suspend the grid's error handling, try.

[C#]



//Suspends Grid's Error Handling.

Syncfusion.Windows.Forms.ExceptionManager.SuspendCatchExceptions()



[VB.NET]



'Suspends Grid's Error Handling.

Syncfusion.Windows.Forms.ExceptionManager.SuspendCatchExceptions()

> { ![](Common_images/Common_img1.jpeg) | markdownify }

_Note: You can also subscribe to an event (Syncfusion.Windows.Forms.ExceptionManager.ExceptionCatched) to get any exception thrown and handle them by yourself or re-throw them._

#### How to Control Whether OLE Drag-and-Drop is Supported in the Grid

Introduction

Whether a grid is an OLE drop target, which is controlled by DragDropTargetFlags in the grids Model.Options class. These flags control things like clipboard format, the type of data, whether columns or rows can be appended to accommodate the dropped data, and whether auto scrolling is supported. Check the enums for GridDragDropFlags to see the full set of options.

Example

[C#]



//Turns off being a drop target.        

gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Disabled;        



//Turns on accepting text.         

gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Text;        



//Accepts both text and styles.        

gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Text | GridDragDropFlags.Text;



[VB.NET]



'Turns off being a drop target. 

gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Disabled



'Turns on accepting text. 

gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Text



'Accepts both text and styles. 

gridControl1.Model.Options.DragDropDropTargetFlags = GridDragDropFlags.Text Or GridDragDropFlags.Text

#### How to convert the contents of GridControl or GridDataBoundGridControl to Excel

The Contents of GridControl and GridDataBoundGrid can be transferred to Excel by using GridToExcel method of GridExcelConverter class. Here is the code snippet.

[C#]



Syncfusion.GridExcelConverter.GridExcelConverterControl gecc = new Syncfusion.GridExcelConverter.GridExcelConverterControl();

gecc.GridToExcel(this.gridControl1.Model,@"C:\MyGC.xls");



[VB.NET]



Dim gecc As New Syncfusion.GridExcelConverter.GridExcelConverterControl

gecc.GridToExcel(Me.gridControl1.Model, "C:\MyGC.xls")

The following dll files should be added along with the default dll files in the reference folder: Syncfusion.GridConverter.Base and Syncfusion.XlsIO.Base.

#### How to Disable Clipboard Cut, Copy, or Paste in a Grid

Introduction

If you want to conditionally disable support, handle ClipboardCanCut, ClipboardCanCopy, or ClipboardCanPaste events and cancel the events by setting e.Handled to True and e.Result to False under the desired conditions. 

Example

To completely turn off support, set this property.

[C#]



//Completely turns off  Clipboard cut, copy, or paste.

this.grid.CutPaste.ClipboardFlags = GridDragDropFlags.Disabled;



[VB.NET]



'Completely turns off  Clipboard cut, copy, or paste.

Me.grid.CutPaste.ClipboardFlags = GridDragDropFlags.Disabled


Here are some code samples.

[C#]



//Subscribes to the event.

this.gridControl1.ClipboardCanPaste += new GridCutPasteEventHandler(this.gridControl1_ClipboardCanPaste);



//Handles ClipBoardCanPaste event to disable Paste operation.

private void gridControl1_ClipboardCanPaste(object sender, GridCutPasteEventArgs e) 

    { 

          if(someCondition)

          {

               e.Handled = true; 



//Sets Result Property to False to disable the process.

               e.Result = false; 

          }

    } 



[VB.NET]



'Handles ClipBoardCanPaste event to disable Paste operation.

 Private Sub gridControl1_ClipboardCanPaste(sender As Object, _e As GridCutPasteEventArgs) _Handles GridControl1.ClipboardCanPaste

        If someCondition Then

            e.Handled = True



'Sets Result Property to False to disable the process.

            e.Result = False

        End If



'GridControl1_ClipboardCanPaste.

    End Sub 

#### How to Display Placeholder Characters when Cell Content Exceeds Cell Width

If the content of a grid cell exceeds the cell width, then characters can be displayed to act as placeholders instead of actual letters or numbers, indicating that the cell contains more content than can be shown within the cell. By default, the number sign (#) is used as the placeholder character, but you can specify custom characters.You can enable the following types of cell content to be converted to placeholder characters when content exceeds cell size:

* Alphabetic
* Numeric
* Both alphabetic and numeric
* None
> 
{ ![C:/Users/labuser/Desktop/note.jpg](Common_images/Common_img2.jpeg) | markdownify }

_Note: When set to None, the original content will be displayed._

{ ![](Common_images/Common_img3.png) | markdownify }



Converting Alphabetic Content

Use the following code to specify that only alphabetic content will be converted to placeholder characters when content exceeds a cell.

[C#]

this.gridcontrol1[1,1].AutoFit=AutoFitOptions.Alphabet;



[VB]

Me.gridcontrol1(1,1).AutoFit=AutoFitOptions.Alphabet



Converting Numeric Content

Use the following code to specify that only numeric content will be converted to placeholder characters when content exceeds a cell.

[C#]

 this.gridcontrol1[1,1].AutoFit=AutoFitOptions.Numeric





[VB]

 Me.gridcontrol1(1,1).AutoFit=AutoFitOptions.Numeric



Converting Alphabetic and Numeric Content

The following code specifies that both alphabetic and numeric content will be converted to placeholder characters. To do so, set AutoFitOptions to Both.

[C#]

 this.gridcontrol1[1,1].AutoFit=AutoFitOptions.Both





[VB]

 Me.gridcontrol1(1,1).AutoFit=AutoFitOptions.Both





Not Converting Content

Use the following code to display original cell content without converting anything to placeholder characters. This is performed by setting AutoFitOptions to None.

[C#]

 this.gridcontrol1[1,1].AutoFit=AutoFitOptions.None





[VB]

 Me.gridcontrol1(1,1).AutoFit=AutoFitOptions.None

> { ![C:/Users/labuser/Desktop/note.jpg](Common_images/Common_img4.jpeg) | markdownify }

_Note: By default, AutoFitOptions is set to None._


Setting Custom Characters

Characters other than the number sign (#), the default, can be used to replace alphanumeric content that exceeds the size of a cell.To do so, set AutoFitChar to the desired character. For example, in the code samples below, the placeholder character has been changed to the _at_ (@) character.

[C#]

 this.gridcontrol1[1,1]. AutoFitChar=’@’





[VB]

 Me.gridcontrol1[1,1]. AutoFitChar=’@’



{ ![](Common_images/Common_img5.png) | markdownify }



Sample Link

The following sample demonstrates how to use placeholder characters for content exceeding a cell’s dimensions.

_<Installed location of Essential Studio>\<Essential Studio Version Number>\Windows\Grid.Windows\Samples\2.0\Grid Layout\Resize To Fit Demo_

#### How Does the Helper class Support Percentage Sizing in GridControl / GridDataBoundGrid

Introduction

The example given below has a helper class that supports automatic sizing in both GridControl or GridDataBoundGrid in two ways. One way, referred as proportional sizing is where all the columns in the grid are equally sized. The other technique used is referred as the percentage sizing, which allows you to specify that certain columns should occupy certain percentages of the available space for these columns.

WireGrid and UnwireGrid are the methods used to enable sizing of the helper class. Proportional sizing is achieved by using QueryColWidth event. Percentage sizing will explicitly set ColWidth[index] property for each column.

Example

[C#]



private void Form1_Load(object sender, System.EventArgs e)

                {

                        DataTable dt = new DataTable();

                        for(int i=0; i<10; i++)

                        {

                                dt.Columns.Add();

                                dt.Rows.Add(new object[]{});

                        }

                        this.gridDataBoundGrid1.DataSource = dt;





//There is a condition check in accepting hashtable values.

// ie.. the total of values passed must not be greater than (100 - Unmodified Column count)

                        ht = new Hashtable();

                        ht.Add(1,20);

                        ht.Add(9,30);

                        ht.Add(4,13);



//Attempts like using unwanted keys are not encouraged because count is being used.

                        // ht.Add(12,100); 

                        Helper1 = new GridColSizingHelper();

                        Helper2 = new GridColSizingHelper();

                        Helper2.WireGrid(this.gridControl1,ht);

                        this.gridDataBoundGrid1.AllowResizeToFit = false;

                        Helper1.WireGrid(this.gridDataBoundGrid1,ht);

                }



                private void buttonAdv1_Click(object sender, System.EventArgs e)

                {

                        this.Helper1.UnwireGrid();

                        this.Helper2.UnwireGrid();

                }





                private void Form1_Resize(object sender, System.EventArgs e)

                {

                        this.Helper1.TurnOffProportion();

                        this.Helper1.TurnOnPercentages();

                        this.Helper2.TurnOffProportion();

                        this.Helper2.TurnOnPercentages();

                }



                private void buttonAdv2_Click(object sender, System.EventArgs e)

                {

                        Helper2.WireGrid(this.gridControl1);

                        Helper1.WireGrid(this.gridDataBoundGrid1);

                }



                private void buttonAdv3_Click(object sender, System.EventArgs e)

                {

                        Helper2.WireGrid(this.gridControl1,ht);

                        Helper1.WireGrid(this.gridDataBoundGrid1,ht);

                }

        }

}



[VB.NET]



Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load

    Dim dt As DataTable = New DataTable()

    For i As Integer = 0 To 9

        dt.Columns.Add()

        dt.Rows.Add(New Object(){})

    Next i

    Me.gridDataBoundGrid1.DataSource = dt





' There is a condition check in accepting hashtable values.

' ie.. the total of values passed must not be greater than (100 - Unmodified Column count)

    ht = New Hashtable()

    ht.Add(1,20)

    ht.Add(9,30)

    ht.Add(4,13)



' Attempts like using unwanted keys are not encouraged because count is being used.

    ' ht.Add(12,100); 

    Helper1 = New GridColSizingHelper()

    Helper2 = New GridColSizingHelper()

    Helper2.WireGrid(Me.gridControl1,ht)

    Me.gridDataBoundGrid1.AllowResizeToFit = False

    Helper1.WireGrid(Me.gridDataBoundGrid1,ht)

End Sub



Private Sub buttonAdv1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles buttonAdv1.Click

    Me.Helper1.UnwireGrid()

    Me.Helper2.UnwireGrid()

End Sub





Private Sub Form1_Resize(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Resize

    If Not Helper1 Is Nothing Then

        Me.Helper1.TurnOffProportion()

        Me.Helper1.TurnOnPercentages()

        Me.Helper2.TurnOffProportion()

        Me.Helper2.TurnOnPercentages()

    End If

End Sub



Private Sub buttonAdv2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles buttonAdv2.Click

    Helper2.WireGrid(Me.gridControl1)

    Helper1.WireGrid(Me.gridDataBoundGrid1)

End Sub



Private Sub buttonAdv3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles buttonAdv3.Click

    Helper2.WireGrid(Me.gridControl1, ht)

    Helper1.WireGrid(Me.gridDataBoundGrid1, ht)

End Sub

    End Class

End Namespace

#### How to export CellCommentTips to Excel using GridExcelConverterControl

You can achieve this by handling QueryImportExportCellInfo event handler. In the event, check GridExcelTipStyleProperties for ExcelTip properties and accordingly add the comment to the IRange.

[C#]



Syncfusion.GridExcelConverter.GridExcelConverterControl gecc = new Syncfusion.GridExcelConverter.GridExcelConverterControl();

gecc.QueryImportExportCellInfo += new Syncfusion.GridExcelConverter.GridImportExportCellInfoEventHandler(gecc_QueryImportExportCellInfo);



void gecc_QueryImportExportCellInfo(object sender, Syncfusion.GridExcelConverter.GridImportExportCellInfoEventArgs e)

{

ExcelTip.GridExcelTipStyleProperties style = new ExcelTip.GridExcelTipStyleProperties(e.GridCell);

if (style.HasExcelTipText)

e.ExcelCell.AddComment().Text = style.ExcelTipText;

}



[VB.NET]



Dim gecc As New Syncfusion.GridExcelConverter.GridExcelConverterControl()

AddHandler gecc.QueryImportExportCellInfo, AddressOf gecc_QueryImportExportCellInfo



Private Sub gecc_QueryImportExportCellInfo(ByVal sender As Object, ByVal e As Syncfusion.GridExcelConverter.GridImportExportCellInfoEventArgs)

Dim style As New ExcelTipDLL.GridExcelTipStyleProperties(e.GridCell)

If style.HasExcelTipText Then

e.ExcelCell.AddComment().Text = style.ExcelTipText

End If

End Sub 'gecc_QueryImportExportCellInfo

#### How to Get the Selected Ranges in a Grid

Introduction

The grid.Selections.Ranges is GridRangeInfoList object, which holds the currently selected ranges. 

Example

You can iterate through this list retrieving GridRangeInfo objects with code such as.

[C#]



//Iterate throughs the SelectionRanges to display every range in the list.

foreach(GridRangeInfo range in this.grid.Selections.Ranges)

{

         MessageBox.Show(range.ToString());

}



[VB.NET]



 Dim range As GridRangeInfo



'Iterates through the SelectionRanges to display every range in the list.

For Each range In Me.grid.Selections.Ranges

        MessageBox.Show(range.ToString())

Next

In the previous code, note that GridRangeInfo object is not really being used for anything. When you actually try to use it, you will need to take into account the fact that you cannot make any assumptions regarding whether this range object is a row range, cell range, column range, or something else. For example, you may want to make use of Range.Top and Range.Bottom to get the top and bottom rows that have been selected. But, if the range happens to be a column range then these properties will not be valid as column ranges. So, before using such range properties, you must check whether these properties have been properly set. GridRangeInfo class has a method that can manage this task: GridRangeInfo.ExpandRange. If you need to access properties like left, right, top and bottom in a GridRangeInfo where it is unknown whether or not the range is a cell range, then you should first call ExpandRange to make sure that this is the case.

[C#]



int rowLimit = grid.Model.RowCount;

    int colLimit = grid.Model.ColCount;



//Calls ExpandRange method and displays the top and bottom rows in each range.

    foreach(GridRangeInfo range in this.grid.Selections.Ranges)

    {

        GridRangeInfo range1 = range.ExpandRange(1, 1, rowLimit, colLimit);

        MessageBox.Show("top={0} bot={1}", range1.Top, range1.Bottom);

    }



[VB.NET]



Dim rowLimit As Integer = grid.Model.RowCount

    Dim colLimit As Integer = grid.Model.ColCount

    Dim range As GridRangeInfo



'Calls ExpandRange method and displays the top and bottom rows in each range.

        For Each range In Me.grid.Selections.Ranges

    Dim range1 As GridRangeInfo = range.ExpandRange(1, 1, rowLimit, colLimit)

              MessageBox.Show("top={0} bot={1}", range1.Top, range1.Bottom)

        Next range



To retrieve the active range, use the code snippet given below.



[C#]



//Retrieves the active range.

GridRangeInfo activeRange = grid.Selections.Ranges.ActiveRange;



[VB.NET]



'Retrieves the active range.

Dim activeRange As GridRangeInfo = grid.Selections.Ranges.ActiveRange

#### How to Get Cell Coordinates Under a Given Point

Introduction

If the point is given as part of one of the grids mouse event arguments, e.X and e.Y members of the event args should give the point in the grids coordinates. If the point is obtained in some other manner, you will have to first change it to the grid's coordinates. Once you have the point in grid coordinates, you can call Grid.PointToRowCol method to get row and column under the point.

Example

[C#]



//In a mouse event you might have code such as this to get the point.       

Point pt = new Point(e.X, e.Y);        

//In other situations, you could use static Cursor.Position method to get the current mouse point in screen coordinates.        

Point pt = this.gridControl1.PointToClient(Cursor.Position);        



//Then get the row and col.

int row, col; 

this.grid.PointToRowCol(pt, out row, out col);        



//From the row, col, you can get the cell rectangle.        

Rectangle cellRect = this.grid.RangeInfoToRectangle(GridRangeInfo.Cell(row, col));



[VB.NET]



'In a mouse event you might have code such as this to get the point.        

Dim pt As New Point(e.X, e.Y)



'In other situations, you could use the static Cursor.Position method to get the current mouse point in screen coordinates.        

Dim pt As Point = Me.GridControl1.PointToClient(Cursor.Position)



'Then get the row and col.        

Dim row, col As Integer

Me.grid.PointToRowCol(pt, row, col)



'From the row, col, you can get the cell rectangle.        

Dim cellRect As Rectangle = Me.grid.RangeInfoToRectangle(GridRangeInfo.Cell(row, col))

#### How to Get the Top, Bottom / Left, or Right Viewable Row and Column Indexes

Introduction

Use the following variables to get the viewable row and column indexes.

Example

[C#]



//Top Row Index.

this.grid.TopRowIndex



//Left Column Index.
this.grid.LeftColIndex



//Bottom Row Index.
this.grid.ViewLayout.LastVisibleRow



//Right Column Index.
this.grid.ViewLayout.LastVisibleCol



[VB.NET]



'Top Row Index.
Me.grid.TopRowIndex


'Left Column Index.
Me.grid.LeftColIndex

'Bottom Row Index.
Me.grid.ViewLayout.LastVisibleRow

'Right Column Index.
Me.grid.ViewLayout.LastVisibleCol

#### How to Get the Screen Point for the Given Cell Coordinates

Introduction

You can get the cell's rectangle in grid coordinates from RangeInfoToRectangle method. Then with the rectangle's coordinates, you can get the screen point using PointToScreen method.

Example

[C#]



//For a given row and col.

Rectangle rect = this.grid.RangeInfoToRectangle(GridRangeInfo.Cell(row, col));

Point screenPoint = this.grid.PointToScreen(new Point(rect.Left, rect.Top));



[VB.NET]



'For a given row and col.

Dim rect As Rectangle = Me.grid.RangeInfoToRectangle(GridRangeInfo.Cell(row, col))

Dim screenPoint As Point = Me.grid.PointToScreen(New Point(rect.Left, rect.Top))

#### How to Get the New Value and Old Value when an Item is Selected in a Combobox Cell

Introduction

CurrentCellCloseDropDown event gets triggered when a dropdown is closed in a grid cell. The new value of ComboBox can be obtained from CurrentCell's Renderer property and old value can be obtained from the grid.

Example

[C#]



GridCurrentCell cc;



//Handles CurrentCellCloseDropDown.

private void gridDataBoundGrid1_CurrentCellCloseDropDown(object sender, Syncfusion.Windows.Forms.PopupClosedEventArgs e)

{

          cc= this.gridDataBoundGrid1.CurrentCell;

          Console.WriteLine(e.PopupCloseType.ToString());



//Uses Renderer.GetCellValue() to retrieve the new cell value.

          Console.WriteLine("New Value {0}",cc.Renderer.GetCellValue());



//Retrieves the oldvalue. 

          Console.WriteLine("Old Value {0}",this.gridDataBoundGrid1[cc.RowIndex,cc.ColIndex].CellValue.ToString());

}



//Handle CurrentCellCloseDropDown.

private void gridControl1_CurrentCellCloseDropDown(object sender, Syncfusion.Windows.Forms.PopupClosedEventArgs e)

{

       cc= this.gridControl1.CurrentCell;

       Console.WriteLine(e.PopupCloseType.ToString());



//Uses Renderer.GetCellValue() to retrieve the new cell value.

       Console.WriteLine("New Value {0}",cc.Renderer.GetCellValue()); 



//Retrieves the oldvalue.

       Console.WriteLine("Old Value {0}",this.gridControl1[cc.RowIndex,cc.ColIndex].CellValue.ToString());

}



[VB.NET]



Private cc As GridCurrentCell



'Handles CurrentCellCloseDropDown.

Private Sub gridDataBoundGrid1_CurrentCellCloseDropDown(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.PopupClosedEventArgs)

    cc= Me.gridDataBoundGrid1.CurrentCell

    Console.WriteLine(e.PopupCloseType.ToString())



'Uses Renderer.GetCellValue() to retrieve the new cell value.

    Console.WriteLine("New Value {0}",cc.Renderer.GetCellValue())



'Retrieves the oldvalue.

    Console.WriteLine("Old Value{0}",Me.gridDataBoundGrid1(cc.RowIndex,cc.ColIndex).CellValue. ToString())

End Sub



'Handles CurrentCellCloseDropDown.

Private Sub gridControl1_CurrentCellCloseDropDown(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.PopupClosedEventArgs)

     cc= Me.gridControl1.CurrentCell

     Console.WriteLine(e.PopupCloseType.ToString())



'Uses Renderer.GetCellValue() to retrieve the new cell value.

     Console.WriteLine("New Value {0}",cc.Renderer.GetCellValue())



'Retrieves the oldvalue.

     Console.WriteLine("Old Value {0}",Me.gridControl1(cc.RowIndex,cc.ColIndex).CellValue.ToString())

End Sub

#### How to Have Character Casing Settings for a Cell

Introduction

CharacterCasing works only with CellType = "OriginalTextBox" that uses a control derived from System.Windows.Forms.TextBox. The celltype text box is derived from RichTextBox, which does not have CharacterCasing property. To enable UpperCasing for the whole grid, set properties in TableStyle. To enable CharacterCasing on a column, row or cell basis, set style properties using techniques that are appropriate for grid that you are using as discussed in the topics on changing backcolor.

Example

[C#]



//Enables UpperCasing for the whole grid.

this.grid.TableStyle.CellType = "OriginalTextBox";

this.grid.TableStyle.CharacterCasing = CharacterCasing.Upper;



[VB.NET]



'Enables UpperCasing for the whole grid.

Me.grid.TableStyle.CellType = "OriginalTextBox"
Me.grid.TableStyle.CharacterCasing = CharacterCasing.Upper

#### How to Hide a Row or Column

Introduction

You can hide rows and columns using grid.Model.Rows.Hidden collection and grid.Model.Cols.Hidden collection. You can hide or show a range of columns or rows using grid.Model.HideCols.SetRange or grid.Model.HideRows.SetRange.

Example

[C#]



//Hides row 2.

this.grid.Model.Rows.Hidden[2] = true; 



//Hides column 3.

this.grid.Model.Cols.Hiddent[3] = true; 



//Hides cols 1-3.

this.grid.Model.HideCols.SetRange(1, 3, true); 



[VB.NET]



'Hides row 2. 

Me.grid.Model.Rows.Hidden(2) = True 



'Hides column 3.

Me.grid.Model.Cols.Hiddent(3) = True 



'Hides cols 1-3.

Me.grid.Model.HideCols.SetRange(1, 3, True) 

#### How to Make a Cell Display '...' if it is Not Wide Enough

Introduction

You must set GridStyleInfo'sTrimming property to achieve this. To enable trimming for the whole grid, set this property in TableStyle. To enable trimming on a column, row, or cell basis, set this style property using techniques that are appropriate for the grid that you are using as discussed in the topics on changing backcolor.

Example

[C#]



//Sets Ellipsis Text for the whole grid.

this.grid.TableStyle.Trimming = StringTrimming.EllipsisWord;

this.grid.TableStyle.Trimming = StringTrimming.EllipsisWord;



[VB.NET]



'Sets Ellipsis Text for the whole grid.

Me.grid.TableStyle.Trimming = StringTrimming.EllipsisWord
Me.grid.TableStyle.Trimming = StringTrimming.EllipsisWord

#### How to Make the Grid Behave Like a List Box

Introduction

You need to do two things to make the grid work like a list box. You must set grid.ListBoxSelectionMode property to make the grid select the whole row when you click a cell or move the current cell with arrow keys. This will highlight the entire row except for the current cell. If your grid is to be non-editable, you must highlight the current cell as well as handle CurrentCellActivating event.

Example

[C#]



//In form.Load.

this.gridControl1.ListBoxSelectionMode = SelectionMode.One;

this.gridControl1.CurrentCellActivating += new GridCurrentCellActivatingEventHandler(grid_CurrentCellActivating);



//The handler.

private void grid_CurrentCellActivating(object sender, GridCurrentCellActivatingEventArgs e)

{        

     e.ColIndex = 0;

}



[VB.NET]



'In form.Load.

Me.GridControl1.ListBoxSelectionMode = SelectionMode.One

AddHandler Me.GridControl1.CurrentCellActivating, AddressOf grid_CurrentCellActivating



'The handler.

Private Sub grid_CurrentCellActivating(ByVal sender As Object, ByVal e As GridCurrentCellActivatingEventArgs)

     e.ColIndex = 0

'Grid_CurrentCellActivating.

End Sub 

#### How to make resizing possible in additional row headers of a GridControl and GridDataBoundGrid



The resizing of additional row headers on the grid can be made possible by setting ResizeColsBahaviour flag to Grid.GridResizeCellsBehavior.InsideGrid.

[C#]



grid.ResizeColsBehavior = (((Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.ResizeSingle

| Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.InsideGrid)

| Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.OutlineHeaders)

| Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.OutlineBounds);



[VB.NET]



grid.ResizeColsBehavior = (((Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.ResizeSingle

| Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.InsideGrid)

| Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.OutlineHeaders)

Dim Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.OutlineBounds) As |

#### How to Move to the Next Row from the Last Cell of a Row

Introduction

Set the WrapCellBehavior property to wrap a row when the Tab or Enter key is pressed.

Example

[C#]



//Sets WrapCellBehaviour property to Wrap Row to move to the next row.

this.grid.Model.Options.WrapCellBehavior = GridWrapCellBehavior.WrapRow; 



[VB.NET]



'Sets WrapCellBehaviour property to Wrap Row to move to the next row.

Me.grid.Model.Options.WrapCellBehavior = GridWrapCellBehavior.WrapRow

#### How to Prevent Resizing a Specific Column in GridControl

Introduction

Handle ResizingColumns event and cancel the resizing for specific columns.

Example

[C#]



//Handles ResizingColumns event.

 private void grid_ResizingColumns(object sender, GridResizingColumnsEventArgs e)

    {

//Disables Column Resizing for the third column from the Right.

        if(e.Columns.Right == 2)

        {

            e.Cancel = true;

        }

    }



[VB.NET]



'Handles ResizingColumns event.

  Private Sub grid_ResizingColumns(ByVal sender As Object, ByVal e As GridResizingColumnsEventArgs)



//Disables Column Resizing for the third column from the Right.

        If e.Columns.Right = 2 Then

            e.Cancel = True

        End If

   End Sub

#### How to Print a Grid

Introduction

GridPrintDocument class will allow you to print your grids. Here is a button click event handler that will show you how to use this class.

Example

[C#]

private void menuItem13_Click(object sender, System.EventArgs e)

{

        if (this.grid != null)

        {

            try

            {

//Creates a print document for the grid.

                 GridPrintDocument pd = new GridPrintDocument(this.grid);



//Creates Print Dialog.

                 PrintDialog dlg = new PrintDialog();



//Assigns the print document to the dialog object.

                 dlg.Document = pd;



//Applies Dialog Settings.

                 dlg.AllowSelection = true;

                 dlg.AllowSomePages = true;

                 DialogResult result = dlg.ShowDialog();

                 if (result == DialogResult.OK)

                 {

//Prints the Grid Document.

                      pd.Print();

                 }

            }

            catch(Exception ex)

            {

                MessageBox.Show("An error occurred - " + ex.Message);

            }

        }

}            



[VB.NET]



Private Sub menuItem13_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        If Not (Me.grid Is Nothing) Then

            Try



'Creates a print document for the grid.

                Dim pd As New GridPrintDocument(Me.grid)



'Creates Print Dialog.

                Dim dlg As New PrintDialog



'Assign the print document to the dialog object.

                dlg.Document = pd



'Applies Dialog Settings.

                dlg.AllowSelection = True

                dlg.AllowSomePages = True

                Dim result As DialogResult = dlg.ShowDialog()

                If result = DialogResult.OK Then

                        ' Print the Grid Document.

                    pd.Print()

                End If

            Catch ex As Exception

                MessageBox.Show(("An error occurred - " + ex.Message))

            End Try

        End If

' MenuItem13_Click

End Sub 

#### How to Print Preview a Grid

Introduction

GridPrintDocument class will allow you to print preview your grids. Here is a button click event handler that will show you how to use this class.

Example

[C#]



private void menuItem13_Click(object sender, System.EventArgs e)

{

        if (this.grid != null)

        {

            try

            {

                 GridPrintDocument pd = new GridPrintDocument(this.grid, true);



//Creates a PrintPreviewDialog object.

                 PrintPreviewDialog dlg = new PrintPreviewDialog();



//Initializes it with the print document to be previewed.

                 dlg.Document = pd;



//Displays the preview dialog.

                 dlg.ShowDialog();

            }

            catch(Exception ex)

            {

                MessageBox.Show("An error occurred - " + ex.Message);

            }

        }}



[VB.NET]



Private Sub menuItem13_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        If Not (Me.grid Is Nothing) Then

            Try

                Dim pd As New GridPrintDocument(Me.grid  True)



'Creates a PrintPreviewDialog object.

                Dim dlg As New PrintPreviewDialog



'Initializes it with the print document to be previewed.

                dlg.Document = pd



'Displays the preview dialog.

                dlg.ShowDialog()

            Catch ex As Exception

                MessageBox.Show(("An error occurred - " + ex.Message))

            End Try

        End If



' MenuItem13_Click

End Sub 

#### How to Put a CheckBox in a Header Cell in GridControl or GridDataBoundGrid

Introduction

To place a CheckBox in GridControl, you must set CellType to CheckBox and assign string values for CheckedValue and UncheckedValue in the CheckBoxOptions property. The value of CheckBox will be stored to a particular cell in the GridControl. When the CheckBox is clicked, CheckBoxClick event gets triggered. To place a CheckBox in GridDataBoundGrid, two events have to be implemented: QueryCellInfo event, which is used to set the style properties and SaveCellInfo event, which is used to save the cell's value. The value of the CheckBox cannot be stored in GridDataBoundGrid, so any datatype or collection can be used to store the value. CheckBoxClick event gets triggered when the CheckBox is clicked.

Example

[C#]



private string CheckBoxValue;



private void Model_QueryCellInfo(object sender, GridQueryCellInfoEventArgs e)

{

//Checks for a row header.

     if(e.ColIndex > 0 && e.RowIndex == 0)

     {

           int colIndex1 = this.gridDataBoundGrid1.Binder.NameToColIndex("Column2");

           if(colIndex1 == e.ColIndex)

           {

                 e.Style.Description = "Check";



//Displays CellValue.

                 e.Style.CellValue = CheckBoxValue;

                 e.Style.CellValueType = typeof(string);



//Determines CheckBoxOptions Values.

                 e.Style.CheckBoxOptions = new GridCheckBoxCellInfo(true.ToString(), false.ToString(), "", true);



//Sets up CheckBox control in the header.

                 e.Style.CellType = "CheckBox";

                 e.Style.CellAppearance = GridCellAppearance.Raised;

                 e.Style.Enabled = true;

           }

      }

}

private void Model_SaveCellInfo(object sender, GridSaveCellInfoEventArgs e)

{

    if(e.ColIndex > 0 && e.RowIndex == 0)

    {

       int colIndex1 = this.gridDataBoundGrid1.Binder.NameToColIndex("Column2");

       if(colIndex1 == e.ColIndex)

       {

//Saves the changes that are made in the Cell Value.

           if(e.Style.CellValue != null)

           CheckBoxValue = (string)e.Style.CellValue;

       }

    }

}



[VB.NET]



Private CheckBoxValue As Boolean = False

Private Sub Model_QueryCellInfo(ByVal sender As Object, ByVal e As GridQueryCellInfoEventArgs)



'Checks for a row header.

     If e.ColIndex > 0 AndAlso e.RowIndex = 0 Then

        Dim colIndex1 As Integer = Me.gridDataBoundGrid1.Binder.NameToColIndex("Column2")

        If colIndex1 = e.ColIndex Then

            e.Style.Description = "Check"



'Displays the CellValue.

            e.Style.CellValue = CheckBoxValue

            e.Style.CellValueType = GetType(Boolean)



'Determines CheckBoxOptions Values.

            e.Style.CheckBoxOptions = New GridCheckBoxCellInfo(True.ToString(), False.ToString(), "", True) 



'Sets up a CheckBox control in the header.

            e.Style.CellType = "CheckBox"

            e.Style.CellAppearance = GridCellAppearance.Raised

            e.Style.Enabled = True

        End If

    End If

End Sub

Private Sub Model_SaveCellInfo(ByVal sender As Object, ByVal e As GridSaveCellInfoEventArgs)

     If e.ColIndex > 0 AndAlso e.RowIndex = 0 Then

        Dim colIndex1 As Integer = Me.gridDataBoundGrid1.Binder.NameToColIndex("Column2")

        If colIndex1 = e.ColIndex Then



'Saves the changes that are made in the Cell Value.

            If Not e.Style.CellValue Is Nothing Then

                CheckBoxValue = CBool(e.Style.CellValue)

            End If

        End If

     End If

End Sub

#### How to Put a Cell in Overstrike Mode so Characters get Replaced instead of Inserted as you type

Introduction

This can be achieved by using TextBox.SelectionLength property of GridTextBoxCellRenderer in CurrentCellKeyPress event. The idea to achieve this is by selecting one character when a key is pressed, and also neglecting the Backspace key.

Example

[C#]



private void gridControl1_CurrentCellKeyPress(object sender, KeyPressEventArgs e)

{

      GridTextBoxCellRenderer cr = this.gridControl1.CurrentCell.Renderer as GridTextBoxCellRenderer;



      if(e.KeyChar != Convert.ToChar(Keys.Back) 

       && cr.TextBox.SelectionLength == 0)

     {



//Programmatically selects One char.

        cr.TextBox.SelectionLength = 1; 

     }



}



private void gridControl1_CurrentCellKeyDown(object sender, System.Windows.Forms.KeyEventArgs e)

{

     if(e.KeyCode == Keys.Back) 

     {



//Translates the Backspace key to a left arrow key.

          SendKeys.Send("{LEFT}"); 

          e.Handled = true;

     }

}



[VB.NET]



Private Sub gridControl1_CurrentCellKeyPress(ByVal sender As Object, ByVal e As KeyPressEventArgs)



    Dim cr As GridTextBoxCellRenderer = CType(IIf(TypeOf Me.gridControl1.CurrentCell.Renderer Is GridTextBoxCellRenderer, Me.gridControl1.CurrentCell.Renderer, Nothing), GridTextBoxCellRenderer)



'Programmatically selects One char.

        If e.KeyChar <> Convert.ToChar(Keys.Back) AndAlso cr.TextBox.SelectionLength = 0 Then

cr.TextBox.SelectionLength = 1 



        End If



End Sub



Private Sub gridControl1_CurrentCellKeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms. KeyEventArgs)

   If e.KeyCode = Keys.Back Then



'Translates the Backspace key to a left arrow key.

      SendKeys.Send("{LEFT}") 

      e.Handled = True

   End If

End Sub

#### How to Put a ComboBox in a Header Cell in GridControl or GridDataBoundGrid

Introduction

GridControl

To place a ComboBox in a header cell of GridControl, you must set CellType of the header to ComboBox and assign a valid data source (Choicelist or DataSource).

Example

[C#]



//Sets up a ComboBox control.

this.gridControl1[0,4].CellType = "ComboBox";

this.gridControl1[0,4].CellAppearance = GridCellAppearance.Raised;

this.gridControl1[0,4].ShowButtons = GridShowButtons.ShowCurrentCellEditing;

this.gridControl1[0,4].ChoiceList = items;

this.gridControl1[0,4].CellValue = "Combo";



[VB.NET]



'Sets up a ComboBox control.

Me.gridControl1(0,4).CellType = "ComboBox"

Me.gridControl1(0,4).CellAppearance = GridCellAppearance.Raised

Me.gridControl1(0,4).ShowButtons = GridShowButtons.ShowCurrentCellEditing

Me.gridControl1(0,4).DataSource = items

Me.gridControl1(0,4).CellValue = "Combo"

GridDataBoundGrid

To place a ComboBox in a header cell of GridDataBoundGrid, you need to handle two events (QueryCellInfo and SaveCellInfo). Set the data source (Choicelist or DataSource) for the header cell in QueryCellInfo event handler and save the edited value back to datasource in SaveCellInfo event handler. 

Example

[C#]



this.gridDataBoundGrid1.Model.QueryCellInfo += new GridQueryCellInfoEventHandler(Model_QueryCellInfo);

this.gridDataBoundGrid1.Model.SaveCellInfo += new GridSaveCellInfoEventHandler(Model_SaveCellInfo);

String Collection items;

string choice;



//Handles QueryCellInfo to set datasource for combobox.

private void Model_QueryCellInfo(object sender, GridQueryCellInfoEventArgs e)

{

     if(e.ColIndex > 0 && e.RowIndex == 0)

     {

          int colIndex2 = this.gridDataBoundGrid1.Binder.NameToColIndex("Column4");

          if(colIndex2 == e.ColIndex)

          {

                e.Style.Borders.All = gb;

                e.Style.BackColor = Color.White;

                e.Style.CellType = "ComboBox";



//Sets Datasource for combobox.

                e.Style.ChoiceList = items;

                e.Style.CellValue = choice;

                e.Style.CellAppearance = GridCellAppearance.Raised;

                e.Style.Enabled = true;

          }

     }

}



//Handles SaveCellInfo to save the edited values back to the datasource.

private void Model_SaveCellInfo(object sender, GridSaveCellInfoEventArgs e)

{

        if(e.ColIndex > 0 && e.RowIndex == 0)

        {

            int colIndex2 = this.gridDataBoundGrid1.Binder.NameToColIndex("Column4");

            if(colIndex2 == e.ColIndex)

            {

                   if(e.Style.CellValue != null )

                   choice = (string)e.Style.CellValue;

            }

        }

}



[VB.NET]



AddHandler gridDataBoundGrid1.Model.QueryCellInfo, AddressOf Model_QueryCellInfo

AddHandler gridDataBoundGrid1.Model.SaveCellInfo, AddressOf Model_SaveCellInfo

Private items As StringCollection

Private choice As String 



'Handles QueryCellInfo to set datasource for combobox.

Private Sub Model_QueryCellInfo(ByVal sender As Object, ByVal e As GridQueryCellInfoEventArgs)

    If e.ColIndex > 0 AndAlso e.RowIndex = 0 Then

         Dim colIndex2 As Integer = Me.gridDataBoundGrid1.Binder.NameToColIndex("Column4")

         If colIndex2 = e.ColIndex Then

              e.Style.Borders.All = gb

              e.Style.BackColor = Color.White

              e.Style.CellType = "ComboBox"



'Sets Datasource for combobox.

              e.Style.ChoiceList = items

              e.Style.CellValue = choice

              e.Style.CellAppearance = GridCellAppearance.Raised

              e.Style.Enabled = True

         End If

    End If

End Sub



'Handles SaveCellInfo to save the edited values back to the datasource.

Private Sub Model_SaveCellInfo(ByVal sender As Object, ByVal e As GridSaveCellInfoEventArgs)

    If e.ColIndex > 0 AndAlso e.RowIndex = 0 Then

         Dim colIndex2 As Integer = Me.gridDataBoundGrid1.Binder.NameToColIndex("Column4")

         If colIndex2 = e.ColIndex Then

              If Not e.Style.CellValue Is Nothing Then

                  choice = CStr(e.Style.CellValue)

              End If

        End If

   End If

End Sub

#### How to Set the Background Color for a Grid

Introduction

To set the backcolor for the area of the grid populated by cells, you must set the grid.BackColor property to the color. The grid display may also have regions where there are no cells. These regions will be the grid's client area where there are no cells or scrollbars. 

Example

[C#]



//Blue.

grid.BackColor = Color.Blue;



//Orange.

grid.Properties.BackgroundColor = Color.Orange;



[VB.NET]



'Blue.

grid.BackColor = Color.Blue



'Orange.

grid.Properties.BackgroundColor = Color.Orange

{ ![](Common_images/Common_img6.jpeg) | markdownify }



#### How to Select All Text in a Grid After Clicking a Cell

Introduction

ActivateCurrentCellBehavior property controls the activation behavior as a cell becomes current by being clicked or through the cursor keys. If you want the cell text to be fully selected when a cell becomes the current cell, then use the following property.

The following code illustrates how to set Cell Activation behavior to SelectAll in GridControl:

[C#]



//Sets Cell Activation behavior to 'SelectAll'.

this.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll;



[VB.NET]



'Sets Cell Activation behavior to 'SelectAll'.

Me.Grid.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll



The following code illustrates how to set Cell Activation behavior to SelectAll in GridGrouping control:

[C#]



this.gridGroupingControl1.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll;

> { ![](Common_images/Common_img7.jpeg) | markdownify }

_Note: Other options range from None (no activation at all) to ClickOnCell, DblClickOnCell or SetCurrent._

#### How to Size Column Widths or Row Heights to Fit the Text

Introduction

To size columns so that all the text is visible, use grid.Model.ColWidths.ResizeToFit method. This method will take two arguments, GridRangeInfo object that will specify the cells that are to be resized and GridResizeToFitOptions setting that will specify certain behaviors. The second setting controls whether you allow the cell to shrink when it is resized and whether you want to include any header cells in the resizing. There is also grid.Model.RowHeights.ResizeToFit method to size row heights.


Example

[C#]



//AutoFits RowHeights.

grid.Model.RowHeights.ResizeToFit(GridRangeInfo.Table, GridResizeToFitOptions.NoShrinkSize);



//AutoFits ColumnWidths.

grid.Model.ColWidths.ResizeToFit(GridRangeInfo.Col(2), GridResizeToFitOptions.NoShrinkSize);



[VB.NET]



'AutoFits RowHeights.

grid.Model.RowHeights.ResizeToFit(GridRangeInfo.Table, GridResizeToFitOptions.NoShrinkSize)



'AutoFits ColumnWidths. 

grid.Model.ColWidths.ResizeToFit(GridRangeInfo.Col(2), GridResizeToFitOptions.NoShrinkSize)

> { ![](Common_images/Common_img8.jpeg) | markdownify }

_Note: Resizing the entire grid for very large grids can be time consuming. To only resize the visible area of the grid, you can set the range argument to grid.ViewLayout.VisibleCellsRange._

#### How to Validate Changes Made to a Grid Cell

Introduction

There are two events that can be used to validate the changes that are made to a grid cell: CurrentCellValidateString and CurrentCellValidating. CurrentCellValidateString is fired every time a key is pressed and the current text is passed as part of EventArgs. CurrentCellValidating is only fired once when the user tries to leave the current cell. 


Example

Here are some code samples that will show how you can get the new value of the cell as well as the old value of the cell in the CurrentCellValidating event.

[C#]



//Retrieves the old and new values of a cell.

GridCurrentCell cc = this.grid.CurrentCell;

string newValue = cc.Renderer.ControlText;

string oldValue = this.grid[cc.RowIndex, cc.ColIndex].Text;



[VB.NET]



'Retrieves the old and new values of a cell.

Dim cc As GridCurrentCell = Me.GridControl1.CurrentCell

Dim newValue As String = cc.Renderer.ControlText

Dim oldValue As String = Me.GridControl1(cc.RowIndex, cc.ColIndex).Text



In either event, if you want the validation to fail, set e.Cancel = True. Here is the code that will not allow your user to blank out cells in column 2.

[C#]



private void grid_CurrentCellValidating(object sender, CancelEventArgs e)

{

                GridCurrentCell cc = this.grid.CurrentCell;



//Prevents user from blanking out cells in column 2.

                if (cc.ColIndex == 2)

                {

                        string val = cc.Renderer.ControlText;

                        if (val.Length == 0)

                        {



//No empty string in col 2.

                                e.Cancel = true;

                        }

                }



      // Grid_CurrentCellValidating

} 



[VB.NET]



Private Sub grid_CurrentCellValidating(ByVal sender As Object, ByVal e As CancelEventArgs)

     Dim cc As GridCurrentCell = Me.grid.CurrentCell



'Prevents user from blanking out cells in column 2.

     If cc.ColIndex = 2 Then

          Dim val As String = cc.Renderer.ControlText

          If val.Length = 0 Then



'No empty string in col 2.

               e.Cancel = True 

          End If

     End If



'Grid_CurrentCellValidating

End Sub 

#### How to Write Syntax for Grid Model Properties 

From Essential Studio 9.4.6.20, it is not mandatory to specify the complete network to utilize the GridModel properties. 

_Table 156: GridModel Properties_ 

<table>
<tr>
<td>
PROPERTIES</td><td>
DESCRIPTION</td><td>
TYPE</td><td>
DATA TYPE</td><td>
REFERENCE LINKS</td></tr>
<tr>
<td>
ShowColumnHeaders</td><td>
Specifies whether column headers have to be shown </td><td>
GridControl</td><td>
Boolean  </td><td>
Show or Hider Header</td></tr>
<tr>
<td>
ShowRowHeaders</td><td>
Specifies whether row headers have to be shown. </td><td>
GridControl</td><td>
Boolean  </td><td>
Show or Hider Header</td></tr>
<tr>
<td>
DisplayHorizontalLines</td><td>
Specifies whether horizontal lines have to be displayed. </td><td>
GridControl</td><td>
Boolean  </td><td>
Customize the Appearance</td></tr>
<tr>
<td>
DisplayVerticalLines</td><td>
Specifies whether vertical lines have to be displayed. </td><td>
GridControl</td><td>
Boolean  </td><td>
Customize the Appearance</td></tr>
<tr>
<td>
GridLineColor</td><td>
Specifies the grid line color.</td><td>
GridControl</td><td>
Boolean  </td><td>
Customize the Appearance</td></tr>
<tr>
<td>
PrintColumnHeader</td><td>
Specifies whether column header has to be printed. </td><td>
GridControl</td><td>
Boolean  </td><td>
Printing Options</td></tr>
<tr>
<td>
PrintHorizontalLines</td><td>
Specifies whether horizontal lines have to be printed.</td><td>
GridControl</td><td>
Boolean  </td><td>
Printing Options</td></tr>
<tr>
<td>
PrintRowHeader</td><td>
Specifies whether row header has to be printed.</td><td>
GridControl</td><td>
Boolean  </td><td>
Printing Options</td></tr>
<tr>
<td>
PrintVerticalLines</td><td>
Specifies whether vertical lines have to be printed.</td><td>
GridControl</td><td>
Boolean  </td><td>
Printing Options</td></tr>
</table>


_Table 157: Grid Model Option_

<table>
<tr>
<td>
PROPERTIES</td><td>
DESCRIPTION</td><td>
TYPE</td><td>
DATA TYPE</td><td>
REFERENCE LINKS</td></tr>
<tr>
<td>
ActivateCurrentCellBehavior</td><td>
Used to set currentcell behaviour </td><td>
GridControl</td><td>
Enum</td><td>
Grid Model Options</td></tr>
<tr>
<td>
AllowScrollCurrentCellInView</td><td>
To set Allow Scroll in current cell view </td><td>
GridControl</td><td>
Enum</td><td>
Grid Model Options</td></tr>
<tr>
<td>
AlphaBlendSelectionColor</td><td>
To select alpha blend selection color </td><td>
GridControl</td><td>
Enum</td><td>
Grid Model Options</td></tr>
<tr>
<td>
ClickedOnDisabledCellBehavior</td><td>
Disable to click behaviour </td><td>
GridControl</td><td>
Enum</td><td>
Grid Model Options</td></tr>
<tr>
<td>
ShowCurrentCellBorderBehavior</td><td>
To show currentcell border behaviour </td><td>
GridControl</td><td>
Enum</td><td>
Grid Model Options</td></tr>
<tr>
<td>
DefaultGridBorderStyle</td><td>
To set Default Grid Border style.</td><td>
GridControl</td><td>
Enum</td><td>
Grid Model Options</td></tr>
</table>
##### Show or Hide Header

You can show or hide row and column headers using _ShowColumnHeaders_and_ShowRowHeaders_ properties. 

Column Header

To show column header set ShowColumnHeaders property to true. 

The following code illustrates how to show column header in GridControl: 

gridControl1.ShowColumnHeaders = true;



The following code illustrates how to show column header in GridDataBoundGrid: 

gridDataBoundGrid.ShowColumnHeaders = true;

The following code illustrates how to show column header in GridGrouping control: 

gridGroupingControl1.ShowColumnHeaders = true;

Row Header

To show the row header, set ShowRowHeaders property to true. 

The following code illustrates how to show row header in GridControl: 

gridControl1.ShowRowHeaders = true;



The following code illustrates how to show row header in GridDataBoundGrid: 

gridDataBoundGrid.ShowRowHeaders = true;

The following code illustrates how to show the row header in GridGrouping control: 

gridGroupingControl1.ShowRowHeaders = true;

##### Customize Appearance 

Essential Grid provides support to display horizontal and vertical lines and customize the grid line color. 

Displaying Horizontal Lines

You can display horizontal lined using DisplayHorizontalLinesproperty. 

The following code illustrates how to display horizontal lines in GridControl: 

gridControl1.DisplayHorizontalLines = true;

The following code illustrates how to display horizontal lines in GridDataBoundGrid: 

gridDataBoundGrid.DisplayHorizontalLines = true;

The following code illustrates how to display horizontal lines in GridGrouping control: 

gridGroupingControl1.DisplayHorizontalLines = true;





Displaying Vertical Lines

You can display vertical lined using the DisplayVerticalLines__property. 

The following code illustrates how to display vertical lines in GridControl: 

gridControl1.DisplayVerticalLines = true;

The following code illustrates how to display vertical lines in GridDataBoundGrid: 

gridDataBoundGrid.DisplayVerticalLines = true;

The following code illustrates how to display vertical lines in GridGrouping control: 

gridGroupingControl1.DisplayVerticalLines = true;

Customizing Grid Line Color

You can customize grid line color using _GridLineColor_ property. 

The following code illustrates how to display vertical lines in GridControl: 

gridControl1.GridLineColor = Color.Red;

The following code illustrates how to customize grid line color in GridDataBoundGrid: 

gridDataBoundGrid.GridLineColor = Color.Red;

The following code illustrates how to customize grid line color in GridGrouping control: 

gridGroupingControl1.GridLineColor = Color.Red;

##### Printing Options 

Essential Grid provides support to print column and row header and horizontal and vertical lines. 

Printing Column Header

You can print column header using PrintColumnHeader__property. 

The following code illustrates how to print column header in GridControl: 

gridControl1.PrintColumnHeader = true;

The following code illustrates how to print column header in GridDataBoundGrid: 

gridDataBoundGrid.PrintColumnHeader = true;

The following code illustrates how to print the column header GridGrouping control: 

gridGroupingControl1.PrintColumnHeader = true;

Printing Row Header

You can print row header using PrintRowHeader__property. 

The following code illustrates how to print row header in GridControl: 

gridControl1.PrintRowHeader = true;

The following code illustrates how to print the row header in GridDataBoundGrid: 

gridDataBoundGrid.PrintRowHeader = true;

The following code illustrates how to print row header GridGrouping control: 

gridGroupingControl1.PrintRowHeader = true;

Printing Horizontal Lines

You can print horizontal lines using PrintHorizontalLines__property. 

The following code illustrates how to print horizontal lines in GridControl: 

gridControl1.PrintHorizontalLines = true; 

The following code illustrates how to print horizontal lines in GridDataBoundGrid: 

gridDataBoundGrid.PrintHorizontalLines = true;

The following code illustrates how to print horizontal lines GridGrouping control: 

gridGroupingControl1.PrintHorizontalLines = true;

Printing Vertical Lines 

You can print vertical lines using PrintVerticalLines__property. 

The following code illustrates how to print vertical lines in GridControl: 

gridControl1.PrintVerticalLines = true;

The following code illustrates how to print vertical lines in GridDataBoundGrid: 

gridDataBoundGrid.PrintVerticalLines = true;

 The following code illustrates how to print vertical lines GridGrouping control: 

gridGroupingControl1.PrintVerticalLines = true;

##### Grid Model Options 

This section provides information on how to write syntax for the following GridModel Options:

* ActivateCurrentCellBehavior
* AllowScrollCurrentCellInView
* AlphaBlendSelectionColor
* ClickedOnDisabledCellBehavior
* ShowCurrentCellBorderBehavior
* DefaultGridBorderStyle

Activating Current Cell Behavior

The following code illustrates how to activate current cell behavior:

this.gridGroupingControl1.ActivateCurrentCellBehavior = GridCellActivateAction.SelectAll;

Allow scroll for Current cell view

The following code illustrates how to allow scroll for current cell view:

this.gridGroupingControl1.AllowScrollCurrentCellInView = GridScrollCurrentCellReason.Activate;



Alpha Blend Selection Color

The following code illustrates how to select alpha blend selection color: 

this.gridGroupingControl1.AlphaBlendSelectionColor = Color.Red;

ClickedOnDisabledCellBehavior

The following code illustrates how to define the current cell behavior when disabled cell is clicked: 

this.gridGroupingControl1.ClickedOnDisabledCellBehavior = GridClickedOnDisabledCellBehavior.Default;

Show Current Cell Border Behavior

The following code illustrates how to show current cell border behavior: 

this.gridGroupingControl1.ShowCurrentCellBorderBehavior = GridShowCurrentCellBorder.HideAlways;

Default Grid Border Style

The following code illustrates how to set default grid border style: 

this.gridGroupingControl1.DefaultGridBorderStyle = GridBorderStyle.None;

#### How to Overcome SendKey Exception in Currency Cell

CurrentCellKeyDown event cannot be handled for CurrencyTextbox when Windows Forms application is hosted into Internet Explorer. It will throw an error message as,“SendKeys cannot run inside this application.” To overcome this exemption, set ActivateSendKey property to false. 

The following code illustrates this: 



[C#]

//GridGroupingControl: 



this.Grid.TableModel.Option.ActivateSendKey = false;



//GridControl/GridDataBound:



this.Grid.Model.Option. ActivateSendKey = false;



//GridListControl:



this.GridList.Grid.Model.Option.ActivateSendKey = false;







[VB]



'GridGroupingControl: 



Me.Grid.TableModel.Option.ActivateSendKey = False



'GridControl/GridDataBound:



Me.Grid.Model.Option.ActivateSendKey = False



'GridListControl:



Me.GridList.Grid.Model.Option.ActivateSendKey = False

#### How To Release Tab Focus from Grid

When you set ActiveControl variable to Grid__control, focus will be on Grid control. This may not allow you to navigate to other controls in the form. To overcome this difficulty, set ActiveControl to Grid control. Then set WantTabKey property to false. This helps you navigate to other controls in the form.

The following code illustrates how to release tab focus from GridGroupingControl: 

[C#]

private void FormMain_Load(object sender, EventArgs e)

        {

            this.ActiveControl = this.gridGroupingControl1.TableControl;

            gridGroupingControl1.WantTabKey = false;

            return;

        }





[VB]

Private Sub FormMain_Load(ByVal sender As Object, ByVal e As EventArgs)

Me.ActiveControl = Me.gridGroupingControl1.TableControl

gridGroupingControl1.WantTabKey = False

Return

 End Sub



#### How To Resize Row Height Based On the Font of Grid Cell Content

You can resize the row height based on the cell content height using ResizingRows event. Calculate the content height using MeasuringString() method. This considers the text, font style and font size to calculate the content size. Assign the calculated value to RowHeights property.

You can resize the rows individually using AllowResizingIndividualRows() method of GridHelperclasses. This method will be effective only when used before InitializeComponent().

The following code illustrates resizing rows based on the grid cell content: [C#]

public Form1()

     {

//Customizes the row height for individual row 

 GridEngineFactory.Factory = new Syncfusion.GridHelperClasses.AllowResizingIndividualRows();

      InitializeComponent();     

     }

Size stringSize;

        void grid_ResizingRows(object sender, Syncfusion.Windows.Forms.Grid.GridResizingRowsEventArgs e)

        {



            if (e.Reason == GridResizeCellsReason.DoubleClick)

            {

                Graphics grapics = CreateGraphics();

                long maxHeight = 0;

                GridStyleInfo style = this.grid.GetViewStyleInfo(e.Rows.Bottom, 1);

                stringSize = grapics.MeasureString(style.Text, style.GdipFont,this.grid.Model.ColWidths[1]).ToSize();  

                if (maxHeight < stringSize.Height)

                {

                    maxHeight = (long)stringSize.Height;

                }

                this.grid.Model.RowHeights[e.Rows.Bottom] = (int)maxHeight;

                e.Cancel = true;           

          }            

        }



[VB]

Public Sub New()

            GridEngineFactory.Factory = New Syncfusion.GridHelperClasses.AllowResizingIndividualRows()

            InitializeComponent()           

End Sub





Private Sub grid_ResizingRows(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridResizingRowsEventArgs)

            If e.Reason = GridResizeCellsReason.DoubleClick Then

                Dim grapics As Graphics = CreateGraphics()

                Dim maxHeight As Long = 0

                Dim style As GridStyleInfo = Me.grid.GetViewStyleInfo(e.Rows.Bottom, 1)

                stringSize = grapics.MeasureString(style.Text, style.GdipFont, Me.grid.Model.ColWidths(1)).ToSize()

                If maxHeight < stringSize.Height Then

                    maxHeight = CLng(stringSize.Height)

                End If

                Me.grid.Model.RowHeights(e.Rows.Bottom) = CInt(maxHeight)

                e.Cancel = True

            End If

        End Sub



#### How to Align Image Button at the Centre of a Cell 

To align the button at the center of the cell, customize the model and the renderer of the cell. Specify the bounds of the button using the OnLayout() method. The following code illustrates how to align the button at the center of the grid cell: 



<table>
<tr>
<td>
[C#]protected override Rectangle OnLayout(int rowIndex, int colIndex, GridStyleInfo style, Rectangle innerBounds, Rectangle[] buttonsBounds){TraceUtil.TraceCurrentMethodInfo(rowIndex, colIndex, style, innerBounds, buttonsBounds);Rectangle rect = GridUtil.CenterInRect(innerBounds, this.Model.ButtonBarSize);int width = rect.Width / 2;buttonsBounds[0] = new Rectangle(rect.X, rect.Y, width, rect.Height);return innerBounds;}</td></tr>
<tr>
<td>
[VB]Protected Overrides Function OnLayout(ByVal rowIndex As Integer, ByVal colIndex As Integer, ByVal style As GridStyleInfo, ByVal innerBounds As Rectangle, ByVal buttonsBounds As Rectangle()) As Rectangle            TraceUtil.TraceCurrentMethodInfo(rowIndex, colIndex, style, innerBounds, buttonsBounds)            Dim rect As Rectangle = GridUtil.CenterInRect(innerBounds, Me.Model.ButtonBarSize)            Dim width As Integer = rect.Width / 2            buttonsBounds(0) = New Rectangle(rect.X, rect.Y, width, rect.Height)            Return innerBounds        End Function</td></tr>
</table>
#### How to Hold the Row Selection After the Cell is Deactivated

Essential Grid enables you to hold the selection after the cell is deactivated. To hold the selection, cancel SelectionChanging event, when e.Reason is MouseDown or Clear. 

The following code holds the selection even after the cell is deactivated:



[C#]

void Model_SelectionChanging(object sender, GridSelectionChangingEventArgs e)

        {

            if (e.Reason == GridSelectionReason.MouseDown || e.Reason == GridSelectionReason.Clear)

                e.Cancel = true;

        }





[VB]

Private Sub Model_SelectionChanging(ByVal sender As Object, ByVal e As GridSelectionChangingEventArgs)

            If e.Reason = GridSelectionReason.MouseDown OrElse e.Reason = GridSelectionReason.Clear Then

                e.Cancel = True

            End If

        End Sub



#### How to Suppress KeyDown Event

To suppress the TablecontrolCurrentCellKeyDown event, enable the SuppressKeyPress property in this event.  To get the Keys data, override the ProcessCmdKey() method. 

1. Suppress the KeyDown event as given in the following code:

[C#]

void gridGroupingControl1_TableControlCurrentCellKeyDown(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlKeyEventArgs e)

        {

            e.Inner.SuppressKeyPress = true;

        }



[VB]

Private Sub gridGroupingControl1_TableControlCurrentCellKeyDown(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlKeyEventArgs)

            e.Inner.SuppressKeyPress = True

        End Sub









2. Handle the ProcessCmdKey() method to get the keys data as given in the following code: 

[C#]

protected override bool ProcessCmdKey(ref Message msg, Keys keyData)

        {

            Keys keyCode = keyData & Keys.KeyCode;

            switch (keyCode)

            {

                case Keys.Down: Console.WriteLine("down");                 

                    break;

                case Keys.Up: Console.WriteLine("Up");

                    break;

                case Keys.Right: Console.WriteLine("Right");

                    break;

                case Keys.Left: Console.WriteLine("Left");

                    break;

                case Keys.PageUp: Console.WriteLine("PageUp");

                    break;

                case Keys.PageDown: Console.WriteLine("PageDown");

                    break;

            }            

            return base.ProcessCmdKey(ref msg, keyData);

        }









[VB]

Protected Overrides Function ProcessCmdKey(ByRef msg As Message, ByVal keyData As Keys) As Boolean

            Dim keyCode As Keys = keyData And Keys.KeyCode

            Select Case keyCode

                Case Keys.Down

                    Console.WriteLine("down")

                    Exit Select

                Case Keys.Up

                    Console.WriteLine("Up")

                    Exit Select

                Case Keys.Right

                    Console.WriteLine("Right")

                    Exit Select

                Case Keys.Left

                    Console.WriteLine("Left")

                    Exit Select

                Case Keys.PageUp

                    Console.WriteLine("PageUp")

                    Exit Select

                Case Keys.PageDown

                    Console.WriteLine("PageDown")

                    Exit Select

            End Select

            Return MyBase.ProcessCmdKey(msg, keyData)

        End Function



#### How to Restrict Alphabetical Characters in NumericUpDown Cell

NumericUpDown cell can be customized to allow only numeric characters by setting the AcceptAlphaKeys property to false. This property can be derived from GridNumericUpDownCellModel class.

[C#]

GridNumericUpDownCellModel model = this.gridControl1.CellModels[GridCellTypeName.NumericUpDown] as GridNumericUpDownCellModel;

model.AcceptAlphaKeys = false;



[VB.NET]

Dim model As GridNumericUpDownCellModel = TryCast(Me.gridControl1.CellModels(GridCellTypeName.NumericUpDown), GridNumericUpDownCellModel)

model.AcceptAlphaKeys = False

#### How to Enable ColorStyle Settings in Windows Grids

This feature enables you to apply enhanced visual styles to the following Windows Forms Grid controls: Grid, GridGrouping, GridDataBoundGrid, and GridList. 

You can apply one of the following styles: 

* Office2007Blue
* Office2007Black
* Office2007Silver
* Office2010Blue
* Office2010Black
* Office2010Silver
* Metro

_Table 158: Properties_

<table>
<tr>
<td>
PROPERTY</td><td>
DESCRIPTION</td><td>
TYPE</td><td>
DATA TYPE</td></tr>
<tr>
<td>
EnableLegacyStyle</td><td>
Get or set the value.</td><td>
</td><td>
Boolean </td></tr>
</table>
Sample Link

_{Installed Path}\Syncfusion\EssentialStudio\{Version}\Windows\Grid.Grouping.Windows\Samples\2.0\ Styling and Formatting\Skin Customization Demo\_

{ ![](Common_images/Common_img9.png) | markdownify }





To enable this feature, use the following code:

[C#]



this.gridGroupingControl1.TableModel.EnableLegacyStyle  = false;



[VB]



Me.gridGroupingControl1.TableModel.EnableLegacyStyle  = False



#### How to trigger an event when the ComBox DropDownList has null value or has no datasource bound to it?

If a ComboBox is neither bound to any datasource nor has list items, it can be notified to the user by clicking on it. The notification message that the user wants to display can be given as shown in the following TableControlCurrentCellShowingDropDown event.  

[C#]



//Code..



void gridGroupingControl1_TableControlCurrentCellShowingDropDown(object sender, GridTableControlCurrentCellShowingDropDownEventArgs e)

{

GridComboBoxCellRenderer rend = e.TableControl.CurrentCell.Renderer as      GridComboBoxCellRenderer;

  ListBox list = rend.ListBoxPart;

  if (list.Items.Count == 0)

  {



    // write your code here..



  }

}



//Code..





[VB]



'Code..

void gridGroupingControl1_TableControlCurrentCellShowingDropDown(Object sender, GridTableControlCurrentCellShowingDropDownEventArgs e)



Dim rend As GridComboBoxCellRenderer = 

TryCast(e.TableControl.CurrentCell.Renderer, GridComboBoxCellRenderer)

  Dim list As ListBox = rend.ListBoxPart

  If list.Items.Count = 0 Then



  ' write your code here..



  End If



'Code.. 



#### How to get the selected text from a TextBox cell?

To get the selected text from a TextBox cell, the TextBox renderer should be acquired inside the CurrentCellStartEditing event. MouseUp event should be hooked to get the selected text from the TextBox cell.

[C#]

this.gridDataBoundGrid1.CurrentCellStartEditing += new CancelEventHandler(gridDataBoundGrid1_CurrentCellStartEditing);

}



void gridDataBoundGrid1_CurrentCellStartEditing(object sender, CancelEventArgs e)

{

  GridCurrentCell cc = this.gridDataBoundGrid1.CurrentCell;

  if (cc.Renderer is GridTextBoxCellRenderer)

  {

   GridTextBoxCellRenderer rend = cc.Renderer as GridTextBoxCellRenderer;

   rend.TextBox.MouseUp += new MouseEventHandler(TextBox_MouseUp);

  }

}



void TextBox_MouseUp(object sender, MouseEventArgs e)

{

  TextBox text = sender as TextBox;

  if (text.SelectionLength > 0)

  {

   Console.WriteLine(text.SelectedText);

  }

}



[VB]



AddHandler gridDataBoundGrid1.CurrentCellStartEditing, AddressOf gridDataBoundGrid1_CurrentCellStartEditing

End Sub

Private Sub gridDataBoundGrid1_CurrentCellStartEditing(ByVal sender As Object, ByVal e As CancelEventArgs)

Dim cc As GridCurrentCell = Me.gridDataBoundGrid1.CurrentCell

If TypeOf cc.Renderer Is GridTextBoxCellRenderer Then

Dim rend As GridTextBoxCellRenderer = TryCast(cc.Renderer, GridTextBoxCellRenderer)

AddHandler rend.TextBox.MouseUp, AddressOf TextBox_MouseUp

End If

End Sub



Private Sub TextBox_MouseUp(ByVal sender As Object, ByVal e As MouseEventArgs)

Dim text As TextBox = TryCast(sender, TextBox)

If text.SelectionLength > 0 Then

Console.WriteLine(text.SelectedText)

End If

End Sub



Refer to the following sample file for more details:

[http://www.syncfusion.com/downloads/Support/DirectTrac/99890/99890_SelectedText653111008.zip](http://www.syncfusion.com/downloads/Support/DirectTrac/99890/99890_SelectedText653111008.zip)

Similarly, the text from the Combobox cell, Richtextbox cell, etc., can be acquired by taking their respective renderers. You can also achieve the same behavior for the Grid control and GridGrouping control.

#### How to enable double-click on the formula cell

To enable double-click on the formula cell, set ForceEditWhenActivated property to _False_. ActivateCurrentCellBehavior property cannot be achieved in GridFormulaCellRender unless the property is set to _False_. 

[C#]

this.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.DblClickOnCell;

GridFormulaCellRenderer.ForceEditWhenActivated = false ;



[VB.NET]

Me.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.DblClickOnCell

GridFormulaCellRenderer.ForceEditWhenActivated = False

#### Why does the call to Application.DoEvents never returns while updating the Grid using BeginUpdate() method

If the Grid is performing a time-consuming task, BeginUpdate() and EndUpdate() methods will be used to ensure the updates correctly reflected in the grid. 

The problem arises when users try to dispatch windows messages to the controls (triggering the Application.DoEvents) inside BeginUpdate() and EndUpdate() methods.

Root Cause:

The root cause of the problem is that the usage of Application.DoEvents will ask WM_PAINT messages of Grid to execute, but WM_PAINT messages will be ignored since the grid is in an updating state (the WM_PAINT message will be processed by the Grid only when the EndUpdate is called). Hence the above makes an Infinite loop execution, meaning the loop will never be returned from WM_PAINT.

The above problem can be resolved in the following two ways:

Solution 1:

If the usage of Application.DoEvents is mandatory, then the simplest way to get rid of this problem is by calling the grid.CancelUpdate before triggering Appplication.DoEvents. After that, the grid can be updated with the call to Grid.BeginUpdate.

Solution 2:

Add a public static member to the class where Application.DoEvents is to be used. Then override the Grid's WndProc method and process WM_PAINT if the DoEvents loop is triggered.

[C#]

public static bool InDoEvents = false;

private void button1_Click(object sender, System.EventArgs e)

{

      this.gridControl1.BeginUpdate();

      this.gridControl1.Refresh();



      Console.WriteLine("before Application.DoEvents");

      Form1.InDoEvents = true;

      Application.DoEvents();

      Form1.InDoEvents = false;

      Console.WriteLine("after Application.DoEvents");



      this.gridControl1.EndUpdate();

}

public class MyGridControl : GridControl

{

       public const int WM_PAINT = 15;

       protected override void WndProc(ref System.Windows.Forms.Message msg)

       {

         if (Form1.InDoEvents && msg.Msg == WM_PAINT)

               DefWndProc(ref msg);

          else

             base.WndProc(ref msg);

       }

}



[VB]

Public Shared InDoEvents As Boolean = False

Private Sub button1_Click(sender As Object, e As System.EventArgs)

Me.gridControl1.BeginUpdate()

Me.gridControl1.Refresh()



Console.WriteLine("before Application.DoEvents")

Form1.InDoEvents = True

Application.DoEvents()

Form1.InDoEvents = False

Console.WriteLine("after Application.DoEvents")



Me.gridControl1.EndUpdate()

End Sub

Public Class MyGridControl

Inherits GridControl

Public Const WM_PAINT As Integer = 15

Protected Overrides Sub WndProc(ByRef msg As System.Windows.Forms.Message)

If Form1.InDoEvents AndAlso msg.Msg = WM_PAINT Then

DefWndProc(msg)

Else

MyBase.WndProc(msg)

End If

End Sub

End Class

#### How can I implement an Excel accounting format in the Syncfusion WinForms GridControl?

We can achieve this behavior by setting the cell type to Currency. The currency symbol is removed from the cell data with the following code:

[C#]

this.gridControl1[i, j].CurrencyEdit.CurrencySymbol = "";



[VB]

Me.gridControl1[i, j].CurrencyEdit.CurrencySymbol = "";



The CurrencyDecimalDigits property is used and the digits after the decimal point are set using the code below:

[C#]

this.gridControl1[i, j].CurrencyEdit.CurrencyDecimalDigits = 2;





[VB]

Me.gridControl1[i, j].CurrencyEdit.CurrencyDecimalDigits = 2;





By default the contents are left-aligned, so the horizontal alignment is set to Right.

[C#]

this.gridControl1.ColStyles[j].HorizontalAlignment = Syncfusion.Windows.Forms.Grid.GridHorizontalAlignment.Right;



[VB]

Me.gridControl1.ColStyles[j].HorizontalAlignment = Syncfusion.Windows.Forms.Grid.GridHorizontalAlignment.Right;

#### How to achieve Excel-like Text Alignment in Grid Control?

Text alignment in Grid cells is similar to text alignment in Excel cells. When no data type is explicitly specified for a cell, by default, text containing numbers is right-aligned and the remaining text is left-aligned. If the data type of the cell is set to Integer, Double, or Decimal, the text is right-aligned; or else the text is left-aligned. In some cases, when the text contains numbers and the data type of the cell is set to String_,_ the text is left-aligned. This default text alignment also applies to the respective Header cells of the Grid control. Excel-like Text Alignment can be achieved in Grid cells by using ExcelLikeAlignment property. It enables you to apply Excel-like alignment to text in grid cells. This property is of Boolean data type and is set to false_,_ by default.



[C#]



this.gridControl1.ExcelLikeAlignment = true;



[VB]



me.gridControl1.ExcelLikeAlignment = True;



> { ![http://help.syncfusion.com/ug_94/User%20Interface/Windows%20Forms/Grid/ImagesExt/image9_1.png](Common_images/Common_img10.png) | markdownify }

_Note: The preceding settings can be applied to all Grid Controls._

#### How to export user-defined function from Grid to Excel workbook

To export user-defined formula library function from Grid to Excel:

1. Create an Excel Add-In file (*.xla) including the user-defined function as illustrated in the following link: [http://msdn.microsoft.com/en-us/library/office/aa140990(v=office.10).aspx](http://msdn.microsoft.com/en-us/library/office/aa140990(v=office.10).aspx).
2. Now, bind add-in file path and custom method name with GridExcelConverterControl through AddCustomFunction method.

Creating the XLA File

To create an XLA file in Excel:

1. Create a new empty workbook and click Save As from the File menu.
3. In the Save As dialog box, select the location to save the workbook. Enter the file name for the Add-In workbook, and then select the type as Excel Add-In (*.xla).
4. Click Save, and then press ALT+ F11 to open the VBA Editor. Now, you can create the custom function through the VBA Editor.



The following screen shot illustrates how to create the user-defined function through the VBA editor.

{ ![](Common_images/Common_img11.png) | markdownify }



The XLA file will not be visible in Excel because Add-Ins are never visible. All changes must be done to the VBA Editor only.



The following code illustrates how to export the user-defined function to Excel.

[C#]



//Exports the user-defined function.

string xla = @"..\..\AddIns\Add.xla";

Syncfusion.GridExcelConverter.GridExcelConverterControl gecc = new Syncfusion.GridExcelConverter.GridExcelConverterControl();

gecc.AddCustomFunction(xla, "add", saveFileDialog1.FileName);

gecc.GridToExcel(this.gridControl1.Model, saveFileDialog1.FileName);



