---
layout: post
title: CommandBar-Events | WindowsForms | Syncfusion
description: commandbar events
platform: WindowsForms
control: CommandBars
documentation: ug
---

# CommandBar Events

The list of events and a detailed explanation about each of them is given in the following sections.


<table>
<tr>
<th>
CommandBar Event</th><th>
Description</th></tr>
<tr>
<td>
CommandBarDropDownClicked</td><td>
This event occurs when the dropdown button on a CommandBar is clicked.</td></tr>
<tr>
<td>
CommandBarStateChanging</td><td>
This event occurs when a CommandBar's dock / float state is about to change.</td></tr>
<tr>
<td>
CommandBarStateChanged</td><td>
This event occurs after a CommandBar's dock / float state changes.</td></tr>
<tr>
<td>
CommandBarUserClosed</td><td>
This event occurs when a floating CommandBar is hidden by the user.</td></tr>
<tr>
<td>
CommandBarWrapping</td><td>
This event occurs when the CommandBar is being wrapped.</td></tr>
</table>

## CommandBarDropDownClicked Event

This event is raised when the dropdown button of a CommandBar is clicked.

The event handler receives an argument of type EventArgs containing data related to this event.
{% highlight C# %}






// Add a PopupMenu control and assign it to the PopupMenu property of the CommandBar.

this.commandBar1.PopupMenu = this.popupMenu1;

// Add a ParentBarItem to the PopupMenu.

this.popupMenu1.ParentBarItem = this.parentBarItem1;

// Add items to the ParentBarItem.

this.parentBarItem1.Items.AddRange(new Syncfusion.Windows.Forms.Tools.XPMenus.BarItem[] {

this.barItem1,

this.barItem2,

this.barItem3});

this.barItem1.Text = "Windows Forms Samples";

this.barItem2.Text = "ASP.NET Samples";

this.barItem3.Text = "WPF Samples";



// Handle the CommandBarDropDownClicked event.

this.commandBar1.CommandBarDropDownClicked+=new  EventHandler(commandBar1_CommandBarDropDownClicked);



private void commandBar1_CommandBarDropDownClicked(object sender, EventArgs e)

{

// The below line will be displayed in the output window at runtime.

Console.WriteLine(" CommandBarDropDownClicked event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}





' Add a PopupMenu control and assign it to the PopupMenu property of the CommandBar. 

Me.commandBar1.PopupMenu = Me.popupMenu1 

' Add a ParentBarItem to the PopupMenu. 

Me.popupMenu1.ParentBarItem = Me.parentBarItem1 

' Add items to the ParentBarItem. 

Me.parentBarItem1.Items.AddRange(New Syncfusion.Windows.Forms.Tools.XPMenus.BarItem() {Me.barItem1, Me.barItem2, Me.barItem3}) 

Me.barItem1.Text = "Windows Forms Samples" 

Me.barItem2.Text = "ASP.NET Samples" 

Me.barItem3.Text = "WPF Samples" 

' Handle the CommandBarDropDownClicked event. 

AddHandler Me.commandBar1.CommandBarDropDownClicked, AddressOf commandBar1_CommandBarDropDownClicked 

Private Sub commandBar1_CommandBarDropDownClicked(ByVal sender As Object, ByVal e As EventArgs)

    ' The below line will be displayed in the output window at runtime. 

    Console.WriteLine(" CommandBarDropDownClicked event is raised ")

End Sub
{% endhighlight %}

## CommandBarStateChanging Event

This event is raised when a CommandBar's dock / float state is about to change.

The event handler receives an argument of type CommandBarStateChangingEventArgs containing data related to this event. The following CommandBarStateChangingEventArgs members provide information specific to this event.


<table>
<tr>
<th>
 Members</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets / sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
NewDockState</td><td>
Gets / sets the CommandBar's new position.</td></tr>
</table>

{% highlight C# %}






// Handler for the CommandBar.CommandBarStateChanging event.

private void comFonts_CommandBarStateChanging(object obj, Syncfusion.Windows.Forms.Tools.CommandBarStateChangingEventArgs arg)

{

// If the fonts CommandBar is being docked to a vertical dock position, that is left or right, 

// then hide the two combo boxes and set the commandbar max length to be equal to 

// the length of the fonts toolbar.

// NOTE - The CommandBar's dockstate will be set to CommandBarDockState.None when the CommandBar 

// is in an indeterminate state. This happens only during loading and deserialization.

Syncfusion.Windows.Forms.Tools.CommandBarDockState border = this.commandBarFonts.DockState;

Syncfusion.Windows.Forms.Tools.CommandBarDockState newborn = arg.NewDockState;

if (((border == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Top) ||

(border == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Bottom) ||

(border == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Float) ||

(border == Syncfusion.Windows.Forms.Tools.CommandBarDockState.None)) &&

((newborn == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Left) ||

(newborn == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Right)))

{

this.fontComboBox.Visible = false;

this.fontSizeComboBox.Visible = false;

this.commandBarFonts.MaxLength = this.commandBarFonts.CalcCommandBarMaxLength(this.FontToolBarPanel.Width);

// Move the panel containing the fonts toolbar to the (0,0) position of the commandbar panel.

this.polFontsTB.Location = new Point(0, 0);

}

// If the Fonts CommandBar is being redocked / floated from the left or right borders, then 

// increase the max length and restore combo box visibility.

if (((border == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Left) ||

(border == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Right)) &&

((newborn == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Top) ||

(newborn == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Bottom) ||

(newborn == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Float) ||

(newborn == Syncfusion.Windows.Forms.Tools.CommandBarDockState.None)))

{

this.commandBarFonts.MaxLength = this.commandBarFonts.CalcCommandBarMaxLength(this.FontCommandBarPanelSize.Width);

// Move the fonts toolbar panel to its original position that is after the two combo boxes.

this.polFontsTB.Location = new Point(this.fontSizeComboBox.Right + 6, 0);

this.fontComboBox.Visible = true;

this.fontSizeComboBox.Visible = true;

}

}
{% endhighlight %}

{% highlight vbnet %}





' Handler for the CommandBar.CommandBarStateChanging event. 

Private Sub comFonts_CommandBarStateChanging(ByVal obj As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.CommandBarStateChangingEventArgs)

' If the fonts CommandBar is being docked to a vertical dock position, that is left or right, 

' then hide the two combo boxes and set the commandbar max length to be equal to 

' the length of the fonts toolbar. 

' NOTE - The CommandBar's dockstate will be set to CommandBarDockState.None when the CommandBar 

' is in an indeterminate state. This happens only during loading and deserialization. 

Dim border As Syncfusion.Windows.Forms.Tools.CommandBarDockState = Me.commandBarFonts.DockState

Dim newborn As Syncfusion.Windows.Forms.Tools.CommandBarDockState = arg.NewDockState

If ((border = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Top) OrElse (border = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Bottom) OrElse (border = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Float) OrElse (border = Syncfusion.Windows.Forms.Tools.CommandBarDockState.None)) AndAlso ((newborn = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Left) OrElse (newborn = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Right)) Then

Me.fontComboBox.Visible = False

Me.fontSizeComboBox.Visible = False

Me.commandBarFonts.MaxLength = Me.commandBarFonts.CalcCommandBarMaxLength(Me.FontToolBarPanel.Width)

' Move the panel containing the fonts toolbar to the (0,0) position of the commandbar panel. 

Me.polFontsTB.Location = New Point(0, 0)

End If

' If the Fonts CommandBar is being redocked / floated from the left or right borders, then 

' increase the max length and restore combo box visibility. 

If ((border = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Left) OrElse (border = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Right)) AndAlso ((newborn = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Top) OrElse (newborn = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Bottom) OrElse (newborn = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Float) OrElse (newborn = Syncfusion.Windows.Forms.Tools.CommandBarDockState.None)) Then

Me.commandBarFonts.MaxLength = Me.commandBarFonts.CalcCommandBarMaxLength(Me.FontCommandBarPanelSize.Width)

' Move the fonts toolbar panel to its original position that is after the two combo boxes. 

Me.polFontsTB.Location = New Point(Me.fontSizeComboBox.Right + 6, 0)

Me.fontComboBox.Visible = True

Me.fontSizeComboBox.Visible = True

End If

End Sub
{% endhighlight %}

## CommandBarStateChanged Event

This event is raised after a CommandBar's dock / float state changes.

The event handler receives an argument of type EventArgs containing data related to this event.
{% highlight C# %}





// Handler for the CommandBar.CommandBarStateChanged event.

private void comFonts_CommandBarStateChanged(object sender, System.EventArgs e)

{

// The Fonts CommandBar client dimensions may have been changed by the redoubling. 

// Size the panel containing the Fonts toolbar to fit the new CommandBar panel dimensions.

if (((this.commandBarFonts.DockState == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Left) ||

(this.commandBarFonts.DockState == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Right))

&& (this.plFontsTB.Width > this.commandBarFonts.Width))

{

this.polFontsTB.Size = this.polFonts.Size;

}

else

{

// The CommandBar has been moved out of a left / right dock position.

if (this.polFontsTB.Height > this.commandBarFonts.Height)

{

this.polFontsTB.Size = this.FontToolBarPanel;

}

}

}
{% endhighlight %}


{% highlight vbnet %}





' Handler for the CommandBar.CommandBarStateChanged event. 

Private Sub comFonts_CommandBarStateChanged(ByVal sender As Object, ByVal e As System.EventArgs)

' The Fonts CommandBar client dimensions may have been changed by the redoubling. 

' Size the panel containing the Fonts toolbar to fit the new CommandBar panel dimensions. 

If ((Me.commandBarFonts.DockState = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Left) OrElse (Me.commandBarFonts.DockState = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Right)) AndAlso (Me.polFontsTB.Width > Me.commandBarFonts.Width) Then

Me.polFontsTB.Size = Me.polFonts.Size

Else

' The CommandBar has been moved out of a left / right dock position. 

If Me.polFontsTB.Height > Me.commandBarFonts.Height Then

Me.polFontsTB.Size = Me.FontToolBarPanel

End If

End If

End Sub
{% endhighlight %}

## CommandBarUserClosed Event

This event is raised when a floating CommandBar is hidden by the user, i.e., when the user presses the close button of the CommandBar that exists in the float state.

The event handler receives an argument of type EventArgs containing data related to this event.
{% highlight C# %}





// Set the CommandBar control to its Floating state.

this.commandBar1.DisableDocking = true;



// Handle the CommandBarUserClosed event.

this.commandBar1.CommandBarUserClosed+=new EventHandler(commandBar1_CommandBarUserClosed);



private void commandBar1_CommandBarUserClosed(object sender, EventArgs e)

{   

   // This event is fired when the Floating CommandBar is closed. The below line will be displayed in the output window at runtime.

   MessageBox.Show(" CommandBarUserClosed Event is raised ");

}
{% endhighlight %}

{% highlight vbnet %}





' Set the CommandBar control to its Floating state. 

Me.commandBar1.DisableDocking = True 



' Handle the CommandBarUserClosed event. 

AddHandler Me.commandBar1.CommandBarUserClosed, AddressOf commandBar1_CommandBarUserClosed



Private Sub commandBar1_CommandBarUserClosed(ByVal sender As Object, ByVal e As EventArgs)

    ' This event is fired when the Floating CommandBar is closed. The below line will be displayed in the output window at runtime. 

    MessageBox.Show(" CommandBarUserClosed Event is raised ")

End Sub
{% endhighlight %}

## CommandBarWrapping Event

This event is raised when the CommandBar is resized with either the DockModeWrapping or the FloatModeWrapping properties set to 'True'. This event can be handled to suggest suitable wrap size hints for the CommandBar.

The event handler receives an argument of type CommandBarWrappingEventArgs containing data related to this event. The following CommandBarWrappingEventArgs members provide information specific to this event.


<table>
<tr>
<th>
 Members</th><th>
Description</th></tr>
<tr>
<td>
ClientSize</td><td>
Gets/Sets the current/proposed size of CommandBar's client control.</td></tr>
<tr>
<td>
CommandBarResizeType</td><td>
Returns the type of resizing taking place.</td></tr>
</table>

{% highlight C# %}





private void commandBarAlign_CommandBarWrapping(object obj, Syncfusion.Windows.Forms.Tools.CommandBarWrappingEventArgs arg)

{

// Apply the wrapping algorithm only when the CommandBar is floating.

if (this.commandBarAlign.DockState == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Float)

{

Size max = new Size(40, 67);

Size min = new Size(72, 23);

this.DoToolBarWrapping(this.tbsAlign, max, min, arg);

}

else if ((this.commandBarAlign.DockState == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Left) ||

(this.commandBarAlign.DockState == Syncfusion.Windows.Forms.Tools.CommandBarDockState.Right))

{

Size max = new Size(24, 67);

arg.ClientSize = max;

}

}



private void DoToolBarWrapping(ToolBar toolbar, Size max, Size min, Syncfusion.Windows.Forms.Tools.CommandBarWrappingEventArgs arg)

{

Size current = arg.ClientSize;

Size temp = toolbar.Size;



int count = toolbar.Buttons.Count;

Size button = toolbar.ButtonSize;



if ((arg.CommandBarResizeType == Syncfusion.Windows.Forms.Tools.CommandBarResizeType.Right) || (arg.CommandBarResizeType == Syncfusion.Windows.Forms.Tools.CommandBarResizeType.Left))

{

int factor = (int)Math.Ceiling((float)min.Width / (float)current.Width);

float ffactor = (float)min.Width / (float)current.Width;



if (current.Width < max.Width)

{

arg.ClientSize = max;

}

else if ((factor > 1) && (factor == factors))

{

int width = (int)Math.Ceiling((float)count / (float)factor) * button.Width;



Size new = Size.Empty;

if (width > max.Width)

{

// Set this width to be the toolbar's parent panel width and allow the toolbar to 

// layout itself for this width. We then get the toolbar's height and assign this as 

// the CommandBar client size.

new.Width = width;

toolbar.Parent.Width = new.Width;

new.Height = toolbar.Height;

toolbar.Parent.Width = temp.Width;

}

else

new = max;



// Set the CommandBar's client size to be equal to this new size.

arg.ClientSize = new;

}

else if (ffactor <= 1)

{

// The CommandBar is extended to the maximum width.

arg.ClientSize = min;

}

else

{

arg.ClientSize = toolbar.Size;

}

}

else if ((arg.CommandBarResizeType == Syncfusion.Windows.Forms.Tools.CommandBarResizeType.Bottom) || (arg.CommandBarResizeType == Syncfusion.Windows.Forms.Tools.CommandBarResizeType.Top))

{

int factor = (int)Math.Floor((float)current.Height / (float)button.Height);

float factors = (float)current.Height / (float)button.Height;



if (current.Height > max.Height)

{

arg.ClientSize = max;

}

else if ((factor > 1) && (factor == factors))

{

// The toolbar width is estimated to be equal to the button width + the number of button columns required.

int width = (int)Math.Ceiling((float)count / (float)factor) * button.Width;



Size new = Size.Empty;

if (width > max.Width)

{

// Assign the new width to the toolbar parent panel and get the corresponding 

// toolbar height.

new.Width = width;

toolbar.Parent.Width = new.Width;

new.Height = toolbar.Height;

toolbar.Parent.Width = temp.Width;

}

else

new = max;



// Set the CommandBar's client size to be equal to this new size.

arg.ClientSize = new;

}

else if (ffactor <= 1)

{

arg.ClientSize = min;

}

else

{

arg.ClientSize = toolbar.Size;

}

}

}
{% endhighlight %}

{% highlight vbnet %}





Private Sub commandBarAlign_CommandBarWrapping(ByVal obj As Object, ByVal arg As Syncfusion.Windows.Forms.Tools.CommandBarWrappingEventArgs)

' Apply the wrapping algorithm only when the CommandBar is floating.

If Me.commandBarAlign.DockState = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Float Then

Dim max As New Size(40, 67)

Dim min As New Size(72, 23)

Me.DoToolBarWrapping(Me.tbsAlign, max, min, arg)

ElseIf (Me.commandBarAlign.DockState = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Left) OrElse (Me.commandBarAlign.DockState = Syncfusion.Windows.Forms.Tools.CommandBarDockState.Right) Then

Dim max As New Size(24, 67)

arg.ClientSize = max

End If

End Sub



Private Sub DoToolBarWrapping(ByVal toolbar As ToolBar, ByVal max As Size, ByVal min As Size, ByVal arg As Syncfusion.Windows.Forms.Tools.CommandBarWrappingEventArgs)

Dim current As Size = arg.ClientSize

Dim temp As Size = ToolBar.Size



Dim count As Integer = ToolBar.Buttons.Count

Dim button As Size = ToolBar.ButtonSize



If (arg.CommandBarResizeType = Syncfusion.Windows.Forms.Tools.CommandBarResizeType.Right) OrElse (arg.CommandBarResizeType = Syncfusion.Windows.Forms.Tools.CommandBarResizeType.Left) Then

Dim factor As Integer = CInt(Math.Ceiling(CSn(min.Width) / CSn(current.Width)))

Dim ffactor As Single = CSn(min.Width) / CSn(current.Width)



If current.Width < max.Width Then

arg.ClientSize = max

ElseIf (factor > 1) AndAlso (factor = factors) Then

Dim width As Integer = CInt(Math.Ceiling(CSn(count) / CSn(factor))) * button.Width



Dim new As Size = Size.Empty

If width > max.Width Then

' Set this width to be the toolbar's parent panel width and allow the toolbar to

' layout itself for this width. We then get the toolbar's height and assign this as

' the CommandBar client size.

new.Width = width

ToolBar.Parent.Width = new.Width

new.Height = ToolBar.Height

ToolBar.Parent.Width = temp.Width

Else

new = max

End If



' Set the CommandBar's client size to be equal to this new size.

arg.ClientSize = new

ElseIf ffactor <= 1 Then

' The CommandBar is extended to the maximum width.

arg.ClientSize = min

Else

arg.ClientSize = ToolBar.Size

End If

ElseIf (arg.CommandBarResizeType = Syncfusion.Windows.Forms.Tools.CommandBarResizeType.Bottom) OrElse (arg.CommandBarResizeType = Syncfusion.Windows.Forms.Tools.CommandBarResizeType.Top) Then

Dim factor As Integer = CInt(Math.Floor(CSn(current.Height) / CSn(button.Height)))

Dim factors As Single = CSn(current.Height) / CSn(button.Height)



If current.Height > max.Height Then

arg.ClientSize = max

ElseIf (factor > 1) AndAlso (factor = factors) Then

' The toolbar width is estimated to be equal to the button width + the number of button columns required. 

Dim width As Integer = CInt(Math.Ceiling(CSn(count) / CSn(factor))) * button.Width



Dim new As Size = Size.Empty

If width > max.Width Then

' Assign the new width to the toolbar parent panel and get the corresponding 

' toolbar height. 

new.Width = width

ToolBar.Parent.Width = new.Width

new.Height = ToolBar.Height

ToolBar.Parent.Width = temp.Width

Else

new = max

End If



' Set the CommandBar's client size to be equal to this new size. 

arg.ClientSize = new

ElseIf ffactor <= 1 Then

arg.ClientSize = min

Else

arg.ClientSize = ToolBar.Size

End If

End If

End Sub
{% endhighlight %}


