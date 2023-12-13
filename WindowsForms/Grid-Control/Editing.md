---
layout: post
title: Editing in Windows Forms Grid Control | Syncfusion
description: Learn about Editing support in Syncfusion Windows Forms Grid Control, its elements and more details.
platform: windowsforms
control: GridControl
documentation: ug
---
# Editing in Windows Forms Grid Control

GridControl provides editing support for normal cells and also for all the cell types that are existing in it accordingly. For changing the editing behavior make use of the [ActivateCurrentCellBehavior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html#Syncfusion_Windows_Forms_Grid_GridControl_ActivateCurrentCellBehavior) property. This property will decide whether to edit the cells using single click or double click or disable editing.

{% tabs %}
{% highlight c# %}
// Begin editing after user clicks on a cell.
this.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.ClickOnCell;

// Begin editing after user double clicks on a cell.
this.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.DblClickOnCell;

// Editing cursor will not be displayed.
this.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.None;
{% endhighlight %}

{% highlight vb %}
'Begin editing after user clicks on a cell.
Me.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.ClickOnCell

'Begin editing after user double clicks on a cell.
Me.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.DblClickOnCell

'Editing cursor will not be displayed.
Me.gridControl1.ActivateCurrentCellBehavior = GridCellActivateAction.None
{% endhighlight %}
{% endtabs %}

It is also possible to disable editing by using the `Static` cell type to a cell.

{% tabs %}
{% highlight c# %}
// Applies static cell type for the cell (2,2).
this.gridControl1[2, 2].CellType = GridCellTypeName.Static;
{% endhighlight %}

{% highlight vb %}
'Applies static cell type for the cell (2,2).
Me.gridControl1(2, 2).CellType = GridCellTypeName.Static
{% endhighlight %}
{% endtabs %}

N> Editing can also be done in Virtual Grid, please check the detailed description on Editing in our [Virtual Grid topic](https://help.syncfusion.com/windowsforms/grid-control/virtual-grid).

## Programmatic Editing

This section will explain on how to begin, commit and cancel the editing process through code wise.

### Start Editing on current cell

The [CurrentCell.BeginEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCurrentCell.html#Syncfusion_Windows_Forms_Grid_GridCurrentCell_BeginEdit) method is used to start editing for a current cell and it also allows to set the focus for the cell editor.

{% tabs %}
{% highlight c# %}
this.gridControl1.CurrentCell.BeginEdit();
{% endhighlight %}

{% highlight vb %}
Me.gridControl1.CurrentCell.BeginEdit()
{% endhighlight %}
{% endtabs %}


N> To check whether the current cell is in editing mode, make use of the [CurrentCell.IsEditing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCurrentCell.html#Syncfusion_Windows_Forms_Grid_GridCurrentCell_IsEditing) property.

### Committing the changes

The [CurrentCell.EndEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCurrentCell.html#Syncfusion_Windows_Forms_Grid_GridCurrentCell_EndEdit) method is used to complete the editing process of the current cell. After completing the `EndEdit` method the cell style will be saved for the current cell.

{% tabs %}
{% highlight c# %}
this.gridControl1.CurrentCell.EndEdit();
{% endhighlight %}

{% highlight vb %}
Me.gridControl1.CurrentCell.EndEdit()
{% endhighlight %}
{% endtabs %}

N> Likewise [ConfirmChanges](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCurrentCell.html#Syncfusion_Windows_Forms_Grid_GridCurrentCell_ConfirmChanges) method also saves or confirms the modified current cell and closes any open drop-down windows. 



### Canceling the Changes

The [CancelEdit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridCurrentCell.html#Syncfusion_Windows_Forms_Grid_GridCurrentCell_CancelEdit)() method is used to cancel editing for the current cells and discard the changes related to it.

{% tabs %}
{% highlight c# %}
this.gridControl1.CurrentCell.CancelEdit();
{% endhighlight %}

{% highlight vb %}
Me.gridControl1.CurrentCell.CancelEdit()
{% endhighlight %}
{% endtabs %}

## Read Only

Editing can be enabled or disabled by using the [ReadOnly](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html#Syncfusion_Windows_Forms_Grid_GridModel_ReadOnly) property. Default value for this property is `false`. This section explains about the usage of `ReadOnly` property in GridControl.

### Enabling Read Only for entire Grid

To enable/disable the editing for the entire GridControl, make use of the [ReadOnly](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html#Syncfusion_Windows_Forms_Grid_GridModel_ReadOnly) property.

{% tabs %}
{% highlight c# %}
//Enabling Readonly for whole Grid.
this.gridControl1.ReadOnly = true;

//Disabling Readonly for whole Grid.
this.gridControl1.ReadOnly = false;
{% endhighlight %}

{% highlight vb %}
'Enabling Readonly for whole Grid.
Me.gridControl1.ReadOnly = True

'Disabling Readonly for whole Grid.
Me.gridControl1.ReadOnly = False
{% endhighlight %}
{% endtabs %}

### Enabling Read Only for a Particular Cell

For preventing the editing in cell by cell basis, make use of the [GridStyleInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridStyleInfo.html) object’s [ReadOnly](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridModel.html#Syncfusion_Windows_Forms_Grid_GridModel_ReadOnly) property. `GridStyleInfo` object will be available for each cell in the GridControl.

{% tabs %}
{% highlight c# %}
//Enabling Readonly for particular cell in Grid.
this.gridControl1[2, 2].ReadOnly = true;

//Disabling Readonly for particular cell in Grid.
this.gridControl1[2, 2].ReadOnly = false;
{% endhighlight %}

{% highlight vb %}
'Enabling Readonly for particular cell in Grid.
Me.gridControl1(2, 2).ReadOnly = True

'Disabling Readonly for particular cell in Grid.
Me.gridControl1(2, 2).ReadOnly = False
{% endhighlight %}
{% endtabs %}

### Changing the content of a Read Only Cell

If a cell is in ReadOnly mode then it is not possible to make any changes in that cell programmatically. So to make changes to Read-Only cells, make use of the [IgnoreReadOnly](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html#Syncfusion_Windows_Forms_Grid_GridControl_IgnoreReadOnly) property, which allows to change the ReadOnly cell.

{% tabs %}
{% highlight c# %}
//Cell (1,1) has been set to Read-only.
this.gridControl1[1, 1].ReadOnly = true;

//To change its value, you need to use IgnoreReadOnly property.

//Turns off Read-only checking.
this.gridControl1.IgnoreReadOnly = true;

//Now you can change the cell value.
this.gridControl1[1, 1].CellValue = 256;

//Turns on Read-only checking.
this.gridControl1.IgnoreReadOnly = false;
{% endhighlight %}

{% highlight vb %}
'Cell (1,1) has been set to Read-only.
Me.gridControl1(1, 1).ReadOnly = True

'To change its value, you need to use IgnoreReadOnly property.

'Turns off Read-only checking.
Me.gridControl1.IgnoreReadOnly = True

'Now you can change the cell value.
Me.gridControl1(1, 1).CellValue = 256

'Turns on Read-only checking.
Me.gridControl1.IgnoreReadOnly = False
{% endhighlight %}
{% endtabs %}

## Browse Only

[BrowseOnly](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControl.html#Syncfusion_Windows_Forms_Grid_GridControl_BrowseOnly) property can be used to disable the editing mode for the whole grid. It is not possible to disable particular cells using this property.

{% tabs %}
{% highlight c# %}
//Disabling Readonly for particular cell in Grid.
this.gridControl1.BrowseOnly = true;
{% endhighlight %}

{% highlight vb %}
'Disabling Readonly for particular cell in Grid.
Me.gridControl1.BrowseOnly = True
{% endhighlight %}
{% endtabs %}

N> On using the `BrowseOnly` property, the edit cursor for that cell will not be shown in editing. 

### Prevent Editing for Particular Range of Cells

It is possible to prevent a particular cell or range of cells by using the [CurrentCellStartEditing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html#Syncfusion_Windows_Forms_Grid_GridControlBase_CurrentCellStartEditing) event. The `Cancel` property is used to restrict the editing.

{% tabs %}
{% highlight c# %}
this.gridControl1.CurrentCellEditingComplete += new EventHandler(gridControl1_CurrentCellEditingComplete);

void gridControl1_CurrentCellStartEditing(object sender, CancelEventArgs e)
{
    GridCurrentCell currentCell = this.gridControl1.CurrentCell;

    // Editing for the rows in-between 2 and 6 will be canceled.
    if (currentCell.RangeInfo.IntersectsWith(GridRangeInfo.Rows(2, 6)))
    e.Cancel = true;
}
{% endhighlight %}

{% highlight vb %}
AddHandler gridControl1.CurrentCellEditingComplete, AddressOf gridControl1_CurrentCellEditingComplete
Private Sub gridControl1_CurrentCellStartEditing(ByVal sender As Object, ByVal e As CancelEventArgs)
Dim currentCell As GridCurrentCell = Me.gridControl1.CurrentCell

'Editing for the rows in-between 2 and 6 will be canceled.
If currentCell.RangeInfo.IntersectsWith(GridRangeInfo.Rows(2, 6)) Then
e.Cancel = True
End If
End Sub
{% endhighlight %}
{% endtabs %}

## Editing Events

### CurrentCellActivating

The [CurrentCellActivating](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html#Syncfusion_Windows_Forms_Grid_GridControlBase_CurrentCellActivating) event will be fired each time, while navigating between cells. Also when the grid activates a specified cell as current cell then this event will be called.

{% tabs %}
{% highlight c# %}
this.gridControl1.CurrentCellActivating+=gridControl1_CurrentCellActivating;

void gridControl1_CurrentCellActivating(object sender, GridCurrentCellActivatingEventArgs e)
{    

// Desired code can be added.
}
{% endhighlight %}

{% highlight vb %}
AddHandler gridControl1.CurrentCellActivating, AddressOf gridControl1_CurrentCellActivating

Private Sub gridControl1_CurrentCellActivating(ByVal sender As Object, ByVal e As GridCurrentCellActivatingEventArgs)

'Desired Code can be added.
End Sub
{% endhighlight %}
{% endtabs %}

### CurrentCellActivated

After activating the specified current cell, the [CurrentCellActivated](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html#Syncfusion_Windows_Forms_Grid_GridControlBase_CurrentCellActivated) event will be fired.

{% tabs %}
{% highlight c# %}
this.gridControl1.CurrentCellActivated+=gridControl1_CurrentCellActivated;

// Will be fired when current cell is activated.
void gridControl1_CurrentCellActivated(object sender, EventArgs e)
{    

// Desired code can be added. 
}
{% endhighlight %}

{% highlight vb %}
AddHandler gridControl1.CurrentCellActivated, AddressOf gridControl1_CurrentCellActivated

' Will be fired when current cell is activated
Private Sub gridControl1_CurrentCellActivated(ByVal sender As Object, ByVal e As EventArgs)

'Desired Code can be added.

End Sub
{% endhighlight %}
{% endtabs %}

### Canceling Edit for the Whole Grid Cells

The [CurrentCellStartEditing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html#Syncfusion_Windows_Forms_Grid_GridControlBase_CurrentCellStartEditing) event will be fired when the current cell switches to edit mode. So on clicking an editing cell, this event will be called. There is `Cancel` property used in this event so that editing can be canceled whenever required.

{% tabs %}
{% highlight c# %}
this.gridControl1.CurrentCellStartEditing += new CancelEventHandler(gridControl1_CurrentCellStartEditing);

void gridControl1_CurrentCellStartEditing(object sender, CancelEventArgs e)
{

// Cancels the Editing.
e.Cancel = true;
    
}
{% endhighlight %}


{% highlight vb %}
AddHandler gridControl1.CurrentCellStartEditing, AddressOf gridControl1_CurrentCellStartEditing 

Private Sub gridControl1_CurrentCellStartEditing(ByVal sender As Object, ByVal e As CancelEventArgs)

'Cancels the Editing.
 e.Cancel = True
End Sub

{% endhighlight %}
{% endtabs %}

### CurrentCell Changing or Changed

While changing contents in the current cell, [CurrentCellChanging](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html#Syncfusion_Windows_Forms_Grid_GridControlBase_CurrentCellChanging) and [CurrentCellChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html#Syncfusion_Windows_Forms_Grid_GridControlBase_CurrentCellChanged) events will be triggered respectively for each cells.

{% tabs %}
{% highlight c# %}
this.gridControl1.CurrentCellChanging += new CancelEventHandler(gridControl1_CurrentCellChanging);
this.gridControl1.CurrentCellChanged += new EventHandler(gridControl1_CurrentCellChanged);

void gridControl1_CurrentCellChanging(object sender, CancelEventArgs e)
{

// Desired Code can be added.
}

void gridControl1_CurrentCellChanged(object sender, EventArgs e)
{

// Desired Code can be added.
}
{% endhighlight %}

{% highlight vb %}
AddHandler gridControl1.CurrentCellChanged , AddressOf gridControl1_CurrentCellChanged
AddHandler gridControl1.CurrentCellChanging, AddressOf gridControl1_CurrentCellChanging

Private Sub gridControl1_CurrentCellChanging(ByVal sender As Object, ByVal e As CancelEventArgs)

'Desired Code can be added.
End Sub

Private Sub gridControl1_CurrentCellChanged(ByVal sender As Object, ByVal e As EventArgs)

'Desired Code can be added.

End Sub
{% endhighlight %}
{% endtabs %}

### CurrentCellEditingComplete

After all the changes done in the current cell and editing mode is completed for that cell, the [CurrentCellEditingComplete](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html#Syncfusion_Windows_Forms_Grid_GridControlBase_CurrentCellEditingComplete) event will be fired finally.

{% tabs %}
{% highlight c# %}
this.gridControl1.CurrentCellEditingComplete += new EventHandler(gridControl1_CurrentCellEditingComplete);

void gridControl1_CurrentCellEditingComplete(object sender, EventArgs e)
{

// Desired Code can be added.
}
{% endhighlight %}

{% highlight vb %}
AddHandler gridControl1.CurrentCellEditingComplete, AddressOf gridControl1_CurrentCellEditingComplete
Private Sub gridControl1_CurrentCellEditingComplete(ByVal sender As Object, ByVal e As EventArgs)

'Desired Code can be added.
End Sub
{% endhighlight %}
{% endtabs %}

## Customizations through Editing

The section explains on how to customize the key events while editing and also on how to customize the appearance while editing.

### Capturing Mouse/Key Events from the Cell Renderers

While the current cell is in edit mode, the mouse and key events of the current cell can be captured by accessing the renderer of the cell. 

{% tabs %}
{% highlight c# %}
//Creates TextBoxCellRenderer object.
GridTextBoxCellRenderer textBoxCellRenderer = (GridTextBoxCellRenderer)this.gridControl1.CellRenderers["TextBox"];

//Invokes the Events of the TextBox renderer.
textBoxCellRenderer.TextBox.KeyUp += TextBox_KeyUp;
textBoxCellRenderer.TextBox.MouseDown += TextBox_MouseDown;

void TextBox_MouseDown(object sender, MouseEventArgs e)
{
    Console.WriteLine("textBox_MouseDown");
}

void TextBox_KeyUp(object sender, KeyEventArgs e)
{
    Console.WriteLine("textBox_KeyUp");
}
{% endhighlight %}

{% highlight vb %}

'Creates TextBoxCellRenderer object.
Dim textBoxCellRenderer As GridTextBoxCellRenderer = CType(Me.gridControl1.CellRenderers("TextBox"), GridTextBoxCellRenderer)

'Invokes the Events of the TextBox renderer.
AddHandler textBoxCellRenderer.TextBox.KeyUp, AddressOf TextBox_KeyUp
AddHandler textBoxCellRenderer.TextBox.MouseDown, AddressOf TextBox_MouseDown

Private Sub TextBox_MouseDown(ByVal sender As Object, ByVal e As MouseEventArgs)
Console.WriteLine("textBox_MouseDown")
End Sub

Private Sub TextBox_KeyUp(ByVal sender As Object, ByVal e As KeyEventArgs)
Console.WriteLine("textBox_KeyUp")
End Sub
{% endhighlight %}
{% endtabs %}

### Capturing Function keys on current cell Editing

When the current cell is actively being edited, the grid does not automatically catch the Function keys in the current cell. In this case, make use of the [CurrentCellControlKeyMessage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html#Syncfusion_Windows_Forms_Grid_GridControlBase_CurrentCellControlKeyMessage) to catch the function keys. 

{% tabs %}
{% highlight c# %}
//Capture Function keys on current cell.

this.gridControl1.CurrentCellControlKeyMessage += gridControl1_CurrentCellControlKeyMessage;

void gridControl1_CurrentCellControlKeyMessage(object sender, GridCurrentCellControlKeyMessageEventArgs e)
{
Keys keyCode = (Keys)((int)e.Msg.WParam) & Keys.KeyCode;
Console.WriteLine(keyCode);
Console.WriteLine(e.Msg);
}
{% endhighlight %}

{% highlight vb %}
AddHandler gridControl1.CurrentCellControlKeyMessage , AddressOf gridControl1_CurrentCellControlKeyMessage

Private Sub gridControl1_CurrentCellControlKeyMessage(ByVal sender As Object, ByVal e As GridCurrentCellControlKeyMessageEventArgs)
Dim keyCode As Keys = CType(CInt(Fix(e.Msg.WParam)), Keys) And Keys.KeyCode
Console.WriteLine(keyCode)
Console.WriteLine(e.Msg)
End Sub
{% endhighlight %}
{% endtabs %}

N> This event may be hit multiple times for each keystroke i.e., it can be fired for both `KeyDown`, `KeyUp` and other related events.

### Displaying Placeholders for the exceeded cell content

The placeholder is used to display the character instead of the alphabet, numeric or alphanumeric while the text is exceeds the cells width. By default the number sign (#) is used as the placeholder character.

{% tabs %}
{% highlight c# %}
//To convert alphabetic contents to placeholder characters.
this.gridControl1.ColStyles[2].AutoFit = AutoFitOptions.Alphabet;

//To convert the numeric content to the placeholder characters.
this.gridControl1.ColStyles[2].AutoFit = AutoFitOptions.Numeric;

//To convert both Numeric and Alphabet contents to the place hold characters.
this.gridControl1.ColStyles[2].AutoFit = AutoFitOptions.Both;

//To display original cell content without converting anything to placeholder characters.
this.gridControl1.ColStyles[2].AutoFit = AutoFitOptions.None;

{% endhighlight %}

{% highlight vb %}
'To convert alphabetic contents to placeholder characters.
Me.gridControl1.ColStyles[2].AutoFit = AutoFitOptions.Alphabet

'To convert the numeric content to the placeholder characters.
Me.gridControl1.ColStyles[2].AutoFit = AutoFitOptions.Numeric

'To convert both Numeric and Alphabet contents to the place hold characters.
Me.gridControl1.ColStyles[2].AutoFit = AutoFitOptions.Both

'To display original cell content without converting anything to placeholder characters.
Me.gridControl1.ColStyles[2].AutoFit = AutoFitOptions.None
{% endhighlight %}
{% endtabs %}

The desired character can be changed by using the [AutoFitChar](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridStyleInfo.html#Syncfusion_Windows_Forms_Grid_GridStyleInfo_AutoFitChar) property.

{% tabs %}
{% highlight c# %}
//Set the placeholder character.
this.gridControl1.ColStyles[2].AutoFitChar = '#’;
{% endhighlight %}

{% highlight vb %}
'Set the placeholder character. 
Me.gridControl1.ColStyles[2].AutoFitChar = '#’
{% endhighlight %}
{% endtabs %}

![Editing_img1](Editing_images/Editing_img1.jpeg)


### Applying trimming when cell content exceed its size	

While the content of the cell exceeds to the cells size then the text is automatically wrapped in to the next line. To show the Ellipsis word like the '…’ at the end of the text, set the [Trimming](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridStyleInfo.html#Syncfusion_Windows_Forms_Grid_GridStyleInfo_Trimming) option for the cell as EllipsisWord.

{% tabs %}
{% highlight c# %}
//Apply Ellipsis word for second column alone.
this.gridControl1.ColStyles[2].Trimming = StringTrimming.EllipsisWord;
{% endhighlight %}

{% highlight vb %}
'Apply Ellipsis word for second column alone.
Me.gridControl1.ColStyles[2].Trimming = StringTrimming.EllipsisWord
{% endhighlight %}
{% endtabs %}

![Editing_img2](Editing_images/Editing_img2.jpeg)


N> For applying the trimming functionality, make sure that the `WrapText` property is set to `false`.

### Enabling Insert mode on Editing

To edit the contents of the cell in insert mode (Replace the existing character with the new one) while inserting the text on a cell, set the selection length of the current cell renderer as one in the [CurrentCellKeyPress](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.GridControlBase.html#Syncfusion_Windows_Forms_Grid_GridControlBase_CurrentCellKeyPress) event. 

{% tabs %}
{% highlight c# %}
//Invoke this event to enable Over strike edit mode.
this.gridControl1.CurrentCellKeyPress += gridControl1_CurrentCellKeyPress;
this.gridControl1.CurrentCellKeyDown += gridControl1_CurrentCellKeyDown;

void gridControl1_CurrentCellKeyPress(object sender, KeyPressEventArgs e)
{
    //Create object for current cell renderer
    GridTextBoxCellRenderer cellRenderer = this.gridControl1.CurrentCell.Renderer as GridTextBoxCellRenderer;

    if (e.KeyChar != Convert.ToChar(Keys.Back) && cellRenderer.TextBox.SelectionLength == 0)
    {

        //Programmatically selects One char.
        cellRenderer.TextBox.SelectionLength = 1;
    }
}

void gridControl1_CurrentCellKeyDown(object sender, KeyEventArgs e)
{
    //Translates the Backspace key to a left arrow key.
    if (e.KeyCode == Keys.Back)
    {
        SendKeys.Send("{LEFT}");
        e.Handled = true;
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridControl1.CurrentCellKeyPress , AddressOf gridControl1_CurrentCellKeyPress
AddHandler gridControl1.CurrentCellKeyDown , AddressOf gridControl1_CurrentCellKeyDown 

Private Sub gridControl1_CurrentCellKeyPress(ByVal sender As Object, ByVal e As KeyPressEventArgs)

'Create object for current cell renderer.
Dim cellRenderer As GridTextBoxCellRenderer = TryCast(Me.gridControl1.CurrentCell.Renderer, GridTextBoxCellRenderer)

If e.KeyChar <> Convert.ToChar(Keys.Back) AndAlso cellRenderer.TextBox.SelectionLength = 0 Then

'Programmatically selects One char.
cellRenderer.TextBox.SelectionLength = 1
End If
End Sub

Private Sub gridControl1_CurrentCellKeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)

'Translates the Backspace key to a left arrow key.

If e.KeyCode = Keys.Back Then
SendKeys.Send("{LEFT}")
e.Handled = True
End If
End Sub
{% endhighlight %}
{% endtabs %}
