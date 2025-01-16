---
layout: post
title: Comment Tip in Windows Forms GridGrouping control | Syncfusion
description: Learn about Comment Tip support in Syncfusion® Windows Forms GridGrouping control, its elements and more details.
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# Comment Tip in Windows Forms GridGrouping Control
The Excel-like comment tip can be added to the individual cells. This allows a user to show more information about the particular cell on mouse hover. 
A user can customize an appearance of the comment tip window and comment indicator of the individual cells. The user can also add the images to the comment tip window.

![CommentTip_img1](CommentTip_images/CommentTip_img1.png)

## Adding comment tip
The `CommentTip` property provides the various options to customize the comment tip of the cells. The comment tip can be added to the particular cell by setting the `CommentText` property in the `QueryCellStyleInfo` event. The comment text will be displayed in the comment tip window.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.QueryCellStyleInfo +=new GridTableCellStyleInfoEventHandler(gridGroupingControl1_QueryCellStyleInfo);
void gridGroupingControl1_QueryCellStyleInfo(object sender, GridTableCellStyleInfoEventArgs e)
{

    if (e.Style.TableCellIdentity.Column != null && e.Style.TableCellIdentity.Column.Name == "FirstName")
    {

        //Setting the comment tip text

        if (e.TableCellIdentity.DisplayElement != null && e.TableCellIdentity.DisplayElement.Kind == DisplayElementKind.Record)
        {
            e.Style.CommentTip.CommentText = "Hello";
        }
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.QueryCellStyleInfo, AddressOf gridGroupingControl1_QueryCellStyleInfo

Private Sub gridGroupingControl1_QueryCellStyleInfo(ByVal sender As Object, ByVal e As GridTableCellStyleInfoEventArgs)

	If e.Style.TableCellIdentity.Column IsNot Nothing AndAlso e.Style.TableCellIdentity.Column.Name = "FirstName" Then

		'Setting the comment tip text

		If e.TableCellIdentity.DisplayElement IsNot Nothing AndAlso e.TableCellIdentity.DisplayElement.Kind Is DisplayElementKind.Record Then
			e.Style.CommentTip.CommentText = "Hello"
		End If
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![CommentTip_img2](CommentTip_images/CommentTip_img2.png)

### Adding image to comment tip
The comment tip for the cells can also be added by setting the `CommentImage` property. The given image will be displayed as the comment tip for the cells.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.QueryCellStyleInfo +=new GridTableCellStyleInfoEventHandler(gridGroupingControl1_QueryCellStyleInfo);
void gridGroupingControl1_QueryCellStyleInfo(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventArgs e)
{

    if (e.Style.TableCellIdentity.Column != null && e.Style.TableCellIdentity.Column.Name == "FirstName"
        && e.TableCellIdentity.DisplayElement != null && e.TableCellIdentity.DisplayElement.Kind == Syncfusion.Grouping.DisplayElementKind.Record)
    {

        //Set the comment image for the cell.
        e.Style.CommentTip.CommentImage = Image.FromFile(@"../../Images/" + e.Style.Text + ".png");
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.QueryCellStyleInfo, AddressOf gridGroupingControl1_QueryCellStyleInfo

Private Sub gridGroupingControl1_QueryCellStyleInfo(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventArgs)

	If e.Style.TableCellIdentity.Column IsNot Nothing AndAlso e.Style.TableCellIdentity.Column.Name = "FirstName" AndAlso e.TableCellIdentity.DisplayElement IsNot Nothing AndAlso e.TableCellIdentity.DisplayElement.Kind Is Syncfusion.Grouping.DisplayElementKind.Record Then

		'Set the comment image for the cell.
		e.Style.CommentTip.CommentImage = Image.FromFile("../../Images/" & e.Style.Text & ".png")
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![CommentTip_img3](CommentTip_images/CommentTip_img3.png)

N> The comment tip can be added to the particular cell by either setting the `CommentText` property or `CommentImage` property.

### Adding comment tip for column 
The comment tip can be added to the specific column by setting the `Appearance.AnyRecordFieldCell.CommentTip.CommentText` property of the particular column descriptor. It will enable the comment tip for all the cells in the column with the same comment text.
{% tabs %}
{% highlight c# %}
// Setting comment tip text for particular column.
this.gridGroupingControl1.TableDescriptor.Columns["ColumnName"].Appearance.AnyRecordFieldCell.CommentTip.CommentText = "Hello";
{% endhighlight %}

{% highlight vb %}
' Setting comment tip text for particular column.
Me.gridGroupingControl1.TableDescriptor.Columns("ColumnName").Appearance.AnyRecordFieldCell.CommentTip.CommentText = "Hello"
{% endhighlight %}
{% endtabs %}

![CommentTip_img4](CommentTip_images/CommentTip_img4.png)

### Adding comment tip to nested table
The comment tip can be added for the nested tables by getting the table descriptor using the [GetTableDescriptor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_GetTableDescriptor_System_String_) method and setting the `CommentTip.CommentText` to the column that you want. 
{% tabs %}
{% highlight c# %}
// Adding Comment text for nested table cells
this.gridGroupingControl1.GetTableDescriptor("Orders").Columns["Freight"].Appearance.AnyRecordFieldCell.CommentTip.CommentText = "Hello";
{% endhighlight %}

{% highlight vb %}
' Adding Comment text for nested table cells
Me.gridGroupingControl1.GetTableDescriptor("Orders").Columns("Freight").Appearance.AnyRecordFieldCell.CommentTip.CommentText = "Hello"
{% endhighlight %}
{% endtabs %}

![CommentTip_img15](CommentTip_images/CommentTip_img15.png)

N> The comment tip events for the nested table can be accessed by getting the specific nested table's table control using the [GetTableControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Grid.Grouping.GridGroupingControl.html#Syncfusion_Windows_Forms_Grid_Grouping_GridGroupingControl_GetTableControl_System_String_) method.

## Removing comment tip 
The comment tip for the cell can be removed by using the `ResetCommentTip` method.  It will reset the comment tip properties to the default values.
{% tabs %}
{% highlight c# %}
// Remove the comment tip for particular column
this.gridGroupingControl1.TableDescriptor.Columns["ColumnName"].Appearance.AnyRecordFieldCell.ResetCommentTip();
{% endhighlight %}
{% highlight vb %}
' Remove the comment tip for particular column
Me.gridGroupingControl1.TableDescriptor.Columns("ColumnName").Appearance.AnyRecordFieldCell.ResetCommentTip()
{% endhighlight %}
{% endtabs %}

## Customizing an appearance of comment tip
The `CommentTip` property provides the list of properties that are used to customize an appearance of the comment tip window.
 
### Comment indicator
The size and color of the comment indicator can be customized by using the `CommentIndicatorSize` and `CommentIndicatorColor` properties of the `CommentTip`. By default, it will be displayed as the red color triangle at the top-right corner of the cell.
{% tabs %}
{% highlight c# %}
// Setting the Color and Size for the comment indicator
this.gridGroupingControl1.TableDescriptor.Columns["ColumnName"].Appearance.AnyRecordFieldCell.CommentTip.CommentIndicatorColor = Color.Green;
this.gridGroupingControl1.TableDescriptor.Columns["ColumnName"].Appearance.AnyRecordFieldCell.CommentTip.CommentIndicatorSize = new Size(20, 20);
{% endhighlight %}
{% highlight vb %}
' Setting the Color and Size for the comment indicator
Me.gridGroupingControl1.TableDescriptor.Columns("ColumnName").Appearance.AnyRecordFieldCell.CommentTip.CommentIndicatorColor = Color.Green
Me.gridGroupingControl1.TableDescriptor.Columns("ColumnName").Appearance.AnyRecordFieldCell.CommentTip.CommentIndicatorSize = New Size(20, 20)
{% endhighlight %}
{% endtabs %}

![CommentTip_img5](CommentTip_images/CommentTip_img5.png)

### Comment arrow
The size and color of the comment arrow can be customized by using the `CommentArrowSize` and `CommentArrowColor` property. 
{% tabs %}
{% highlight c# %}
// Setting Color and Size for the Comment Arrow
this.gridGroupingControl1.TableDescriptor.Columns["ColumnName"].Appearance.AnyRecordFieldCell.CommentTip.CommentArrowSize = new Size(5, 40);
this.gridGroupingControl1.TableDescriptor.Columns["ColumnName"].Appearance.AnyRecordFieldCell.CommentTip.CommentArrowColor = Color.Green;
{% endhighlight %}
{% highlight vb %}
' Setting Color and Size for the Comment Arrow
Me.gridGroupingControl1.TableDescriptor.Columns("ColumnName").Appearance.AnyRecordFieldCell.CommentTip.CommentArrowSize = New Size(5, 40)
Me.gridGroupingControl1.TableDescriptor.Columns("ColumnName").Appearance.AnyRecordFieldCell.CommentTip.CommentArrowColor = Color.Green
{% endhighlight %}
{% endtabs %}

![CommentTip_img6](CommentTip_images/CommentTip_img6.png)

### Hiding the comment arrow
The comment arrow can be hidden by setting the width of the `CommentArrowSize` property to zero. 
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableDescriptor.Columns["FirstName"].Appearance.AnyRecordFieldCell.CommentTip.CommentText = "Hello";
// Setting Color and Size for the Comment Arrow
this.gridGroupingControl1.TableDescriptor.Columns["FirstName"].Appearance.AnyRecordFieldCell.CommentTip.CommentArrowSize = new Size(0, 10);
{% endhighlight %}
{% highlight vb %}
Me.gridGroupingControl1.TableDescriptor.Columns("FirstName").Appearance.AnyRecordFieldCell.CommentTip.CommentText = "Hello"
' Setting Color and Size for the Comment Arrow
Me.gridGroupingControl1.TableDescriptor.Columns("FirstName").Appearance.AnyRecordFieldCell.CommentTip.CommentArrowSize = New Size(0, 10)
{% endhighlight %}
{% endtabs %}

![CommentTip_img7](CommentTip_images/CommentTip_img7.png)

N> If the height of the `CommentArrowSize` is set to zero, the comment arrow will be hidden and the comment tip window will be shown near to the top-right corner of a cell.

### Comment tip window
The size and font of the comment tip window can be customized by using the `CommentWindowSize` and `CommentFont` properties respectively. 
The foreground and background colors of the comment tip window can be changed by using the `ForeColor` and `BackColor` properties of the `CommentTip`.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.QueryCellStyleInfo +=new GridTableCellStyleInfoEventHandler(gridGroupingControl1_QueryCellStyleInfo);
void gridGroupingControl1_QueryCellStyleInfo(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventArgs e)
{

    if (e.Style.TableCellIdentity.Column != null && e.Style.TableCellIdentity.Column.Name == "ColumnName"
        && e.TableCellIdentity.DisplayElement != null && e.TableCellIdentity.DisplayElement.Kind == Syncfusion.Grouping.DisplayElementKind.Record)
    {

        //Set the comment text, comment font and fore color.
        {
            e.Style.CommentTip.CommentWindowSize = new Size(100, 30);
            e.Style.CommentTip.CommentFont = new Font("sans serif", 12, FontStyle.Italic);
            e.Style.CommentTip.ForeColor = Color.White;
            e.Style.CommentTip.BackColor = Color.Purple;
        }
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.QueryCellStyleInfo, AddressOf gridGroupingControl1_QueryCellStyleInfo

Private Sub gridGroupingControl1_QueryCellStyleInfo(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableCellStyleInfoEventArgs)

	If e.Style.TableCellIdentity.Column IsNot Nothing AndAlso e.Style.TableCellIdentity.Column.Name = "ColumnName" AndAlso e.TableCellIdentity.DisplayElement IsNot Nothing AndAlso e.TableCellIdentity.DisplayElement.Kind Is Syncfusion.Grouping.DisplayElementKind.Record Then

		'Set the comment text, comment font and fore color.
			e.Style.CommentTip.CommentWindowSize = New Size(100, 30)
			e.Style.CommentTip.CommentFont = New Font("sans serif", 12, FontStyle.Italic)
			e.Style.CommentTip.ForeColor = Color.White
			e.Style.CommentTip.BackColor = Color.Purple
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![CommentTip_img8](CommentTip_images/CommentTip_img8.png)

## Events
The following events are used to customize an appearance of the comment tip,
 
* DrawCommentIndicator
* CommentTipShowing
* CommentTipShown

### DrawCommentIndicator event
This event is used to customize an appearance of the comment indicator by changing its shape, color and location through the event arguments.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.DrawCommentIndicator += new DrawCommentIndicatorEventHandler(TableControl_DrawCommentIndicator);
void TableControl_DrawCommentIndicator(object sender, DrawCommentIndicatorEventArgs e)
{
     Console.WriteLine("CommentRow {0} CommentColumn {1}", e.RowIndex, e.ColIndex);
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.DrawCommentIndicator, AddressOf TableControl_DrawCommentIndicator

Private Sub TableControl_DrawCommentIndicator(ByVal sender As Object, ByVal e As DrawCommentIndicatorEventArgs)
     Console.WriteLine("CommentRow {0} CommentColumn {1}", e.RowIndex, e.ColIndex)
End Sub
{% endhighlight %}
{% endtabs %}

### CommentTipShowing event
An appearance of the comment tip window can be customized by using the `CommentTipShowing` event. This can be also used to change the text, size, color and location of the comment tip window. This event will be raised before comment tip window is displayed.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.CommentTipShowing += new CommentTipShowingEventHandler(TableControl_CommentTipShowing);
void TableControl_CommentTipShowing(object sender, CommentTipShowingEventArgs e)
{
     Console.WriteLine("CommentRow {0} CommentColumn {1}", e.RowIndex, e.ColIndex);
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.CommentTipShowing, AddressOf TableControl_CommentTipShowing

Private Sub TableControl_CommentTipShowing(ByVal sender As Object, ByVal e As CommentTipShowingEventArgs)
     Console.WriteLine("CommentRow {0} CommentColumn {1}", e.RowIndex, e.ColIndex)
End Sub
{% endhighlight %}
{% endtabs %}

### CommentTipShown event
This event will be raised after comment tip window is shown. This is used to get the notification of the showing of comment tip window on specific cell. 
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.CommentTipShown += new CommentTipShownEventHandler(TableControl_CommentTipShown);
void TableControl_CommentTipShown(object sender, CommentTipShownEventArgs e)
{
    Console.WriteLine("Comment tip is shown for the cell [" + e.RowIndex + "," + e.ColIndex + "].");
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.CommentTipShown, AddressOf TableControl_CommentTipShown

Private Sub TableControl_CommentTipShown(ByVal sender As Object, ByVal e As CommentTipShownEventArgs)
	Console.WriteLine("Comment tip is shown for the cell [" & e.RowIndex & "," & e.ColIndex & "].")
End Sub
{% endhighlight %}
{% endtabs %}

## Customization using events
The `CommentTipShowing` and `DrawCommentIndicator` events are used to customize an appearance of the comment tip window. This section explains about the customization of comment tip using these events.

### Changing the color and location of the comment indicator 
The color and location of the comment indicator can be customized by using the `DrawCommentIndicator` event. 
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.DrawCommentIndicator += new DrawCommentIndicatorEventHandler(TableControl_DrawCommentIndicator);
void TableControl_DrawCommentIndicator(object sender, DrawCommentIndicatorEventArgs e)
{

    //Set the color for the comment indicator.
    e.Style.CommentTip.CommentIndicatorColor = Color.Green;

    // Modify the indicator location
    e.IndicatorBounds = new Rectangle(e.IndicatorBounds.Left, e.IndicatorBounds.Top + e.CellBounds.Height - 8, 8, 8);
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.DrawCommentIndicator, AddressOf TableControl_DrawCommentIndicator

Private Sub TableControl_DrawCommentIndicator(ByVal sender As Object, ByVal e As DrawCommentIndicatorEventArgs)

	'Set the color for the comment indicator.
	e.Style.CommentTip.CommentIndicatorColor = Color.Green

	' Modify the indicator location
	e.IndicatorBounds = New Rectangle(e.IndicatorBounds.Left, e.IndicatorBounds.Top + e.CellBounds.Height - 8, 8, 8)
End Sub
{% endhighlight %}
{% endtabs %}

![CommentTip_img9](CommentTip_images/CommentTip_img9.png)

### Changing the shape of the comment indicator
By default, the comment indicator will be drawn in a triangle shape at the top right corner of the cell. The default shape of the comment indicator can be changed by using the `DrawCommentIndicator` event. 
Using the event argument `e.Graphics`, the shape can be filled that you want to display as the comment indicator. The default location of the comment indicator can be get by using the `e.IndicatorBounds` property. 
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.DrawCommentIndicator += new DrawCommentIndicatorEventHandler(TableControl_DrawCommentIndicator);
void TableControl_DrawCommentIndicator(object sender, DrawCommentIndicatorEventArgs e)
{

    if (e.ColIndex == 2)
    {
        e.Cancel = true;

        //Set the comment indicator color and shape.
        e.Graphics.FillRectangle(new SolidBrush(Color.Orange), e.IndicatorBounds);
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.DrawCommentIndicator, AddressOf TableControl_DrawCommentIndicator

Private Sub TableControl_DrawCommentIndicator(ByVal sender As Object, ByVal e As DrawCommentIndicatorEventArgs)

	If e.ColIndex = 2 Then
		e.Cancel = True

		'Set the comment indicator color and shape.
		e.Graphics.FillRectangle(New SolidBrush(Color.Orange), e.IndicatorBounds)
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![CommentTip_img10](CommentTip_images/CommentTip_img10.png)

### Disabling the comment indicator 
The `DrawCommentIndicator` event is used to avoid displaying the comment indicator by setting the `e.Cancel` to true.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.DrawCommentIndicator += new DrawCommentIndicatorEventHandler(TableControl_DrawCommentIndicator);
void TableControl_DrawCommentIndicator(object sender, DrawCommentIndicatorEventArgs e)
{

     //Cancel the displaying of the comment tip indicator.
     e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.DrawCommentIndicator, AddressOf TableControl_DrawCommentIndicator

Private Sub TableControl_DrawCommentIndicator(ByVal sender As Object, ByVal e As DrawCommentIndicatorEventArgs)

	'Cancel the displaying of the comment tip indicator.
	e.Cancel = True
End Sub
{% endhighlight %}
{% endtabs %}

![CommentTip_img11](CommentTip_images/CommentTip_img11.png)

### Disabling the comment tip window 
The displaying of comment tip window on mouse hover at the comment tip cell can be restricted by canceling the `CommentTipShowing` event.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.CommentTipShowing += new CommentTipShowingEventHandler(TableControl_CommentTipShowing);
void TableControl_CommentTipShowing(object sender, CommentTipShowingEventArgs e)
{

    //Cancel the displaying of the comment tip window.
    e.Cancel = true;
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.CommentTipShowing, AddressOf TableControl_CommentTipShowing

Private Sub TableControl_CommentTipShowing(ByVal sender As Object, ByVal e As CommentTipShowingEventArgs)

	'Cancel the displaying of the comment tip window.
	e.Cancel = True
End Sub
{% endhighlight %}
{% endtabs %}

### Changing the location of comment tip window
The location of the comment tip window can be modified dynamically by handling the `CommentTipShowing` event. In this event, the location of the comment tip window can be set through the `CommentTipWindow.Location` property.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.CommentTipShowing += new CommentTipShowingEventHandler(TableControl_CommentTipShowing);
void TableControl_CommentTipShowing(object sender, CommentTipShowingEventArgs e)
{
    Point pt = e.CommentTipWindow.Location;

    //Display the comment tip window at the given point.
    e.CommentTipWindow.Location = new Point(pt.X + 40, pt.Y + 10);
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.CommentTipShowing, AddressOf TableControl_CommentTipShowing

Private Sub TableControl_CommentTipShowing(ByVal sender As Object, ByVal e As CommentTipShowingEventArgs)
	Dim pt As Point = e.CommentTipWindow.Location

	'Display the comment tip window at the given point.
	e.CommentTipWindow.Location = New Point(pt.X + 40, pt.Y + 10)
End Sub
{% endhighlight %}
{% endtabs %}

![CommentTip_img12](CommentTip_images/CommentTip_img12.png)

### Setting custom comment text 
The text displayed on the comment tip window can be customized by using the `CommentTipShowing` event.
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.TableControl.CommentTipShowing += new CommentTipShowingEventHandler(TableControl_CommentTipShowing);
void TableControl_CommentTipShowing(object sender, CommentTipShowingEventArgs e)
{
    string comment = "Employee Name is " + e.Style.CellValue.ToString();
    e.Style.CommentTip.CommentText = comment;       
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.TableControl.CommentTipShowing, AddressOf TableControl_CommentTipShowing

Private Sub TableControl_CommentTipShowing(ByVal sender As Object, ByVal e As CommentTipShowingEventArgs)
	Dim comment As String = "Employee Name is " & e.Style.CellValue.ToString()
	e.Style.CommentTip.CommentText = comment
End Sub
{% endhighlight %}
{% endtabs %}

![CommentTip_img13](CommentTip_images/CommentTip_img13.png)

## Highlighting the comment tip cell
To highlight the cells or customize the cells if that cell has comment tip, check whether the `CommentText` and `CommentImage` properties are changed in the `PrepareViewStyleInfo` event. 
{% tabs %}
{% highlight c# %}
this.gridGroupingControl1.QueryCellStyleInfo +=new GridTableCellStyleInfoEventHandler(gridGroupingControl1_QueryCellStyleInfo);
void gridGroupingControl1_QueryCellStyleInfo(object sender, GridTableCellStyleInfoEventArgs e)
{

    //Check whether the cell has comment tip or not.

    if (e.Style.CommentTip.CommentText != "" || e.Style.CommentTip.CommentImage != null)
    {
        e.Style.BackColor = Color.Green;
        e.Style.TextColor = Color.White;
    }
}
{% endhighlight %}
{% highlight vb %}
AddHandler gridGroupingControl1.QueryCellStyleInfo, AddressOf gridGroupingControl1_QueryCellStyleInfo

Private Sub gridGroupingControl1_QueryCellStyleInfo(ByVal sender As Object, ByVal e As GridTableCellStyleInfoEventArgs)

	'Check whether the cell has comment tip or not.

	If e.Style.CommentTip.CommentText <> "" OrElse e.Style.CommentTip.CommentImage IsNot Nothing Then
		e.Style.BackColor = Color.Green
		e.Style.TextColor = Color.White
	End If
End Sub
{% endhighlight %}
{% endtabs %}

![CommentTip_img14](CommentTip_images/CommentTip_img14.png)

