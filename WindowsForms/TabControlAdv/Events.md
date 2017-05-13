---
layout: post
title: TabControlAdv-Events | WindowsForms | Syncfusion
description: tabcontroladv events
platform: WindowsForms
control: TabControlAdv 
documentation: ug
---

# Events

The list of events and a detailed explanation about each of them is given in the following sections.

<table>
<tr>
<th>
TabControlAdv Events</th><th>
Description</th></tr>
<tr>
<td>
AfterEdit Event</td><td>
This event occurs after text editing is complete. It is fired even if no changes are made.</td></tr>
<tr>
<td>
BeforeEdit Event</td><td>
This event occurs when the text enters into Edit mode.</td></tr>
<tr>
<td>
BackgroundImageChanged Event</td><td>
This event is fired when the value of the BackgroundImage property is changed.</td></tr>
<tr>
<td>
BackgroundImageLayoutChanged Event</td><td>
This event is fired when the value of the BackgroundImageLayout property is changed.</td></tr>
<tr>
<td>
BackColorChanged Event</td><td>
This event is fired when the value of the BackColor property is changed.</td></tr>
<tr>
<td>
ControlAdded Event</td><td>
This event occurs when a new control is added to the TabControlAdv.</td></tr>
<tr>
<td>
ControlRemoved Event</td><td>
This event occurs when a new control is removed from TabControlAdv.</td></tr>
<tr>
<td>
DrawItem Event</td><td>
This event is triggered whenever a particular item or area needs to be painted. Below is an example which draws the background and the interior by handling this event.</td></tr>
<tr>
<td>
ForeColorChanged Event</td><td>
This event is raised when the value of the ForeColor property is changed.</td></tr>
<tr>
<td>
LabelEditChanged Event</td><td>
This event is triggered when the LabelEdit property is changed.</td></tr>
<tr>
<td>
LabelEditTextChanged Event</td><td>
This event is triggered when the original text of the tab is changed.</td></tr>
<tr>
<td>
PaddingChanged Event</td><td>
This event occurs when the Padding property is changed.</td></tr>
<tr>
<td>
Paint Event</td><td>
This event occurs when a TabControlAdv needs re-painting.</td></tr>
<tr>
<td>
PreviewKeyDown Event</td><td>
This event occurs before the KeyDown event when a key is pressed, while focus is on the TabControlAdv.</td></tr>
<tr>
<td>
RegionChanged Event</td><td>
This event is raised when the value of the Region property is changed.</td></tr>
<tr>
<td>
TabPrimitiveClick Event</td><td>
This event occurs before the NavigationButton click.</td></tr>
<tr>
<td>
TabsOrderChanged Event</td><td>
This event occurs when the order of the tabs is changed.</td></tr>
<tr>
<td>
TextChanged Event</td><td>
This event occurs when value of the Text property is changed.</td></tr>
<tr>
<td>
TabPageAdv.Closed</td><td>
Handled when the TabPage is closed.</td></tr>
<tr>
<td>
TabPageAdv.Closing</td><td>
Handled when the TabPage is closing.</td></tr>
</table>


## AfterEdit Event

This event occurs after text editing is complete. It is fired even if no changes are made.

### Event Data

The Edit Event Handler receives an argument of type `EditEventArgs` containing data related to this event. The following `EditEventArgs` property provides information specific to this event.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
EditText</td><td>
Gets the edited text.</td></tr>
</table>

{% tabs %}

{% highlight c# %}


private void tabControlAdv1_AfterEdit(object sender, Syncfusion.Windows.Forms.Tools.EditEventArgs e)

{

//Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write(" AfterEdit event is triggered");

//Gets the edited text in the output window.

Console.Write("Edit text :" + e.EditText.ToString());

}

{% endhighlight %}

{% highlight vb %}


Private Sub tabControlAdv1_AfterEditEvent(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.EditEventArgs)

'Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write(" AfterEdit event is triggered")

'Gets the edited text in the output window.

Console.Write("Edit text :" + e.EditText.ToString())

End Sub

{% endhighlight %}

{% endtabs %}

## BeforeEdit Event

This event occurs when the text enters into Edit mode.

### Event Data

This Event Handler receives an argument of type `EditEventArgs` containing data related to this event. The following `EditEventArgs` property provides information specific to this event.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
EditText</td><td>
Gets the edited text.</td></tr>
</table>

{% tabs %}

{% highlight c# %}


private void tabControlAdv1_BeforeEditEvent(object sender, Syncfusion.Windows.Forms.Tools.EditEventArgs e)

{

//Below line will be displayed in the output window, when this event is fired.

Console.Write("BeforeEdit event is triggered");

//Gets the edited text in the output window.

Console.Write("Edit text :" + e.EditText.ToString());

}

{% endhighlight %}

{% highlight vb %}


Private Sub tabControlAdv1_BeforeEditEvent(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.EditEventArgs)

'Below line will be displayed in the output window, when this event is fired.

Console.Write("BeforeEdit event is triggered")

'Gets the edited text in the output window.

Console.Write("Edit text :" + e.EditText.ToString())

End Sub

{% endhighlight %}

{% endtabs %}

## BackgroundImageChanged Event

This event is fired when the value of the `BackgroundImage` property is changed in the TabControlAdv.

{% tabs %}

{% highlight c# %}


private void tabControlAdv1_BackgroundImageChanged(object sender, System.Windows.Forms.EventArgs e)

{

//Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("Background Image event is raised");

}

{% endhighlight %}

{% highlight vb %}


Private Sub tabControlAdv1_BackgroundImageChanged(ByVal sender As Object, ByVal e As System.Windows.Forms.EventArgs)

'Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("Background Image event is raised")

End Sub

{% endhighlight %}

{% endtabs %}

## BackgroundImageLayoutChanged Event

This event is fired when the value of the `BackgroundImageLayout` property is changed in the TabControlAdv.

{% tabs %}

{% highlight c# %}

private void tabControlAdv1_BackgroundImageLayoutChanged(object sender, System.Windows.Forms.EventArgs e)

{

//Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("BackgroundImageLayoutChanged event is raised");

}

{% endhighlight %}

{% highlight vb %}

Private Sub tabControlAdv1_BackgroundImageLayout(ByVal sender As Object, ByVal e As System.Windows.Forms.EventArgs)

'Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("BackgroundImageLayoutChanged event is raised")

End Sub

{% endhighlight %}

{% endtabs %}

## BackColorChanged Event

This event is fired when the value of the `BackColor` property is changed in the TabControlAdv.

{% tabs %}

{% highlight c# %}

// Set the new back color.

this.tabControlAdv1.BackColor = System.Drawing.Color.Aqua;

// Set the active tab color for the TabControlAdv to highlight the activated tab in the control.

this.tabControlAdv1.ActiveTabColor = System.Drawing.Color.Bisque;



// Handle the BackColorChanged event.

this.tabControlAdv1.BackColorChanged+=new EventHandler(tabControlAdv1_BackColorChanged);

private void tabControlAdv1_BackColorChanged(object sender, EventArgs e)

{

Console.Write("BackColorChanged event is raised");

}

{% endhighlight %}

{% highlight vb %}


' Set the new back color. 

Me.tabControlAdv1.BackColor = System.Drawing.Color.Aqua 

' Set the active tab color for the TabControlAdv to highlight the activated tab in the control. 

Me.tabControlAdv1.ActiveTabColor = System.Drawing.Color.Bisque 



' Handle the BackColorChanged event. 

AddHandler Me.tabControlAdv1.BackColorChanged, AddressOf tabControlAdv1_BackColorChanged 

Private Sub tabControlAdv1_BackColorChanged(ByVal sender As Object, ByVal e As EventArgs)

   Console.Write("BackColorChanged event is raised")

End Sub

{% endhighlight %}

{% endtabs %}

## ControlAdded Event

This event occurs when a new control is added to the TabControlAdv.

Event Data

This Event Handler receives an argument of type `ControlEventArgs` containing data related to this event. The following `ControlEventArgs` property provides information specific to this event.


<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the control object used by this event.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

private void tabControlAdv1_ControlAdded(object sender, System.Windows.Forms.ControlEventArgs e)

{

//Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("Control Added event is raised");

//Gets the control object used by this event.

Console.Write("Control Name :" + e.Control.ToString());

}

{% endhighlight %}

{% highlight vb %}


Private Sub tabControlAdv1_ControlAdded(ByVal sender As Object, ByVal e As System.Windows.Forms.ControlEventArgs)

'Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("Control Added event is raised")

'Gets the control object used by this event.

Console.Write("Control Name :" + e.Control.ToString())

End Sub

{% endhighlight %}

{% endtabs %}

## ControlRemoved Event

This event occurs when a new control is removed from this TabControlAdv.

### Event Data

This Event Handler receives an argument of type `ControlEventArgs` containing data related to this event. The following `ControlEventArgs` property provides information specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Control</td><td>
Gets the control object used by this event.</td></tr>
</table>

N> The TabControlAdv.RemoveAll() method removes all the TabPages and additional controls from the TabControlAdv.

{% tabs %}

{% highlight c# %}

private void tabControlAdv1_ControlRemoved(object sender, System.Windows.Forms.ControlEventArgs e)

{

//Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("Control Removed event is raised");

//Gets the control object used by this event.

Console.Write("Control Name :" + e.Control.ToString());

}

{% endhighlight %}

{% highlight vb %}


Private Sub tabControlAdv1_ControlRemoved(ByVal sender As Object, ByVal e As System.Windows.Forms.ControlEventArgs)

'Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("Control Removed event is raised")

'Gets the control object used by this event.

Console.Write("Control Name :" + e.Control.ToString())

End Sub

{% endhighlight %}

{% endtabs %}

## DrawItem Event

This event is triggered whenever a particular item or area needs to be painted. Below is an example which draws the background and the interior by handling this event.

### Event Data

This Event Handler receives an argument of type `DrawTabEventArgs` containing data related to this event. The following `DrawTabEventArgs` properties provide information specific to this event.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Gets or sets the background color.</td></tr>
<tr>
<td>
Bounds</td><td>
Returns the rectangle that represents the bounds of the item that is being drawn.</td></tr>
<tr>
<td>
BoundsInterior</td><td>
Represents the interior of the tab minus the borders.</td></tr>
<tr>
<td>
Font</td><td>
Gets / sets the font assigned to the tab that is being drawn.</td></tr>
<tr>
<td>
ForeColor</td><td>
Gets / Sets the color of the text.</td></tr>
<tr>
<td>
Graphics</td><td>
Returns the graphics surface on which the item has to be drawn.</td></tr>
<tr>
<td>
Index</td><td>
Returns the index value of the item that is being drawn.</td></tr>
<tr>
<td>
State</td><td>
Gets / sets the state of the item that is being drawn.</td></tr>
<tr>
<td>
TextBrush</td><td>
Gets / sets the text brush to draw text in the tabs.</td></tr>
</table>

N> The TabControlAdv.OnDrawItem() method raises the DrawItem event.

{% tabs %}

{% highlight c# %}



private void tabControlAdv1_DrawItem(object sender, Syncfusion.Windows.Forms.Tools.DrawTabEventArgs drawItemInfo)

{

drawItemInfo.DrawBackground();

drawItemInfo.DrawInterior();

switch(this.comboBox1.SelectedIndex)

{

case 0:this.Tab_DrawItemYahooMessengerLike(sender, drawItemInfo);

break;

case 1: this.Tab_DrawItemMSNMessengerLike(sender, drawItemInfo);

break;

}

}

{% endhighlight %}

{% highlight vb %}



Private Sub tabControlExt1_DrawItem(ByVal sender As System.Object, ByVal drawItemInfo As Syncfusion.Windows.Forms.Tools.DrawTabEventArgs) Handles tabControlExt1.DrawItem

drawItemInfo.DrawBackground()

drawItemInfo.DrawInterior()

Select Case Me.comboBox1.SelectedIndex

Case 0

Me.Tab_DrawItemYahooMessengerLike(sender, drawItemInfo)

'End Section

Case 1

Me.Tab_DrawItemMSNMessengerLike(sender, drawItemInfo)

'End Section

End Select

End Sub

{% endhighlight %}

{% endtabs %}

## ForeColorChanged Event

This event is raised when the value of the `ForeColor` property is changed on the TabControlAdv.

{% tabs %}

{% highlight c# %}

private void tabControlAdv1_ForeColorChanged(object sender, System.Windows.Forms.EventArgs e)

{

//Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("ForeColor Changed event is raised");

}

{% endhighlight %}

{% highlight vb %}



Private Sub tabControlAdv1_ForeColorChanged(ByVal sender As Object, ByVal e As System.Windows.Forms.EventArgs)

'Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("ForeColor Changed event is raised")

End Sub

{% endhighlight %}

{% endtabs %}

## LabelEditChanged Event

This event is triggered when the `LabelEdit` property is changed in the TabControlAdv.

{% tabs %}

{% highlight c# %}

// Set the LabelEdit property.

this.tabControlAdv1.LabelEdit = true;

// Handle the LabelEditChanged event.

this.tabControlAdv1.LabelEditChanged+=new EventHandler(tabControlAdv1_LabelEditChanged);

private void tabControlAdv1_LabelEditChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at runtime, when this event is fired.

Console.Write("LabelEditChanged event is raised");

}

{% endhighlight %}

{% highlight vb %}



' Set the LabelEdit property. 

Me.tabControlAdv1.LabelEdit = True 

' Handle the LabelEditChanged event. 

AddHandler Me.tabControlAdv1.LabelEditChanged, AddressOf tabControlAdv1_LabelEditChanged 



Private Sub tabControlAdv1_LabelEditChanged(ByVal sender As Object, ByVal e As EventArgs)

   ' Below line will be displayed in the output window at runtime, when this event is fired. 

   Console.Write("LabelEditChanged event is raised")

End Sub

{% endhighlight %}

{% endtabs %}

## LabelEditTextChanged Event

This event is triggered when the original text of the Tab is changed.

{% tabs %}

{% highlight c# %}


// Set the LabelEdit property to True, to enable editing of the TabPage's captions.

this.tabControlAdv1.LabelEdit = true;

// Set the text for the TabPage.

this.tabPageAdv1.Text = "Tab1";

// Set the font of the text for the TabPage.

this.tabControlAdv1.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));



// Handle the LabelEditTextChanged event.

this.tabControlAdv1.LabelEditTextChanged+=new EventHandler(tabControlAdv1_LabelEditTextChanged);



private void tabControlAdv1_LabelEditTextChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at runtime, when text is edited.

Console.Write("LabelEditTextChanged event is raised");

}

{% endhighlight %}

{% highlight vb %}



' Set the LabelEdit property to True, to enable editing of the TabPages' captions. 

Me.tabControlAdv1.LabelEdit = True 

' Set the text for the TabPage. 

Me.tabPageAdv1.Text = "Tab1" 

' Set the font of the text for the TabPage. 

Me.tabControlAdv1.Font = New System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CByte((0))) 



' Handle the LabelEditTextChanged event. 

AddHandler Me.tabControlAdv1.LabelEditTextChanged, AddressOf tabControlAdv1_LabelEditTextChanged 



Private Sub tabControlAdv1_LabelEditTextChanged(ByVal sender As Object, ByVal e As EventArgs)

   'Below line will be displayed in the output window at runtime, when text is edited. 

   Console.Write("LabelEditTextChanged event is raised")

End Sub

{% endhighlight %}

{% endtabs %}

## PaddingChanged Event

This event occurs when the `Padding` property is changed in the TabControlAdv.

{% tabs %}

{% highlight c# %}


private void tabControlAdv1_PaddingChanged(object sender, System.Windows.Forms.EventArgs e)

{

//Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("Padding Changed event is raised");

}

{% endhighlight %}

{% highlight vb %}



Private Sub tabControlAdv1_PaddingChanged(ByVal sender As Object, ByVal e As System.Windows.Forms.EventArgs)

'Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("Padding Changed event is raised")

End Sub

{% endhighlight %}

{% endtabs %}

## Paint Event

This event occurs when a TabControlAdv needs re-painting.

### Event Data

This Event Handler receives an argument of type `EditEventArgs` containing data related to this event. The following `EditEventArgs` property provides information specific to this event.


<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
ClipRectangle</td><td>
Gets the rectangle in which to paint.</td></tr>
<tr>
<td>
Graphics</td><td>
Gets the graphics used to paint.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

private void tabControlAdv1_Paint(object sender, System.Windows.Forms.PaintEventArgs e)

{

if(this.ClientRectangle.Width > 0 && this.ClientRectangle.Height > 0)

{

LinearGradientBrush lgb = new LinearGradientBrush(this.ClientRectangle, SystemColors.Control, SystemColors.ControlDark, LinearGradientMode.Horizontal);

e.Graphics.FillRectangle(lgb, this.ClientRectangle);

}

}

{% endhighlight %}

{% highlight vb %}

Private Sub tabControlAdv1_Paint(ByVal sender As Object, ByVal e As System.Windows.Forms.PaintEventArgs)

If Me.ClientRectangle.Width > 0 AndAlso Me.ClientRectangle.Height > 0 Then

Dim lgb As LinearGradientBrush = New LinearGradientBrush(Me.ClientRectangle, SystemColors.Control, SystemColors.ControlDark, LinearGradientMode.Horizontal)

e.Graphics.FillRectangle(lgb, Me.ClientRectangle)

End If

End Sub

{% endhighlight %}

{% endtabs %}

## PreviewKeyDown Event

This event occurs before the `KeyDown` event when a key is pressed, while focus is on the TabControlAdv.

### Event Data

This Event Handler receives an argument of type `EditEventArgs` containing data related to this event. The following `EditEventArgs` properties provide information specific to this event.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Alt</td><td>
Gets a value indicating whether ALT key was pressed.</td></tr>
<tr>
<td>
Control</td><td>
Gets a value indicating whether CTRL key was pressed.</td></tr>
<tr>
<td>
IsInputKey</td><td>
Gets / sets a value indicating whether a key is a regular input key.</td></tr>
<tr>
<td>
KeyCode</td><td>
Gets the keyboard code for a System.Windows.Forms.Controls.KeyUp / System.Windows.Forms.Controls.KeyDown event.</td></tr>
<tr>
<td>
KeyData</td><td>
Gets the key data code for a System.Windows.Forms.Controls.KeyUp / System.Windows.Forms.Controls.KeyDown event.</td></tr>
<tr>
<td>
KeyValue</td><td>
Gets the keyboard value for a System.Windows.Forms.Controls.KeyUp / System.Windows.Forms.Controls.KeyDown event.</td></tr>
<tr>
<td>
Modifiers</td><td>
Gets the modifiers flag for a System.Windows.Forms.Controls.KeyUp / System.Windows.Forms.Controls.KeyDown event.</td></tr>
<tr>
<td>
Shift</td><td>
Gets a value indicating whether SHIFT key was pressed.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

private void tabControlAdv1_PreviewKeyDown(object sender, System.Windows.Forms.PreviewKeyDownEventArgs e)

{

//Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("PreviewKeyDown event is raised");

//The below code prints the KeyCode, KeyValue, KeyData and Modifiers in the output window at run-time.

Console.Write("Key code :" + e.KeyCode.ToString() + "\n" + "Key Value :" + e.KeyValue.ToString() + "\n" + "Key Data:" + e.KeyData.ToString() + "\n" + "Modifiers:" + e.Modifiers.ToString());

}

{% endhighlight %}

{% highlight vb %}



Private Sub tabControlAdv1_PreviewKeyDown(ByVal sender As Object, ByVal e As System.Windows.Forms.PreviewKeyDownEventArgs)

//Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("PreviewKeyDown event is raised")

'The below code prints the KeyCode, KeyValue, KeyData and Modifiers in the output window at run-time.

Console.Write("Key code :" + e.KeyCode.ToString() + "\n" + "Key Value :" + e.KeyValue.ToString() + "\n" + "Key Data:" + e.KeyData.ToString() + "\n" + "Modifiers:" + e.Modifiers.ToString())

End Sub

{% endhighlight %}

{% endtabs %}

## RegionChanged Event

This event is raised when the value of the `Region` property is changed in the TabControlAdv.

{% tabs %}

{% highlight c# %}


private void tabControlAdv1_RegionChanged(object sender, System.Windows.Forms.EventArgs e)

{

//Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("Region Changed event is raised");

}

{% endhighlight %}

{% highlight vb %}



Private Sub tabControlAdv1_RegionChanged(ByVal sender As Object, ByVal e As System.Windows.Forms.EventArgs)

'Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("Region Changed event is raised")

End Sub

{% endhighlight %}

{% endtabs %}

## TabPrimitiveClick Event

This event occurs before the `NavigationButton` click.

### Event Data

This Event Handler receives an argument of type `TabPrimitiveClickEventArgs` containing data related to this event. The following `TabPrimitiveClickEventArgs` properties provide information specific to this event.


<table>
<tr>
<td>
Members</td><td>
Description</td></tr>
<tr>
<td>
Cancel</td><td>
Gets / sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
TabPrimitive</td><td>
Gets the primitive that gets clicked.</td></tr>
</table>

{% tabs %}

{% highlight c# %}


private void tabControlAdv4_TabPrimitiveClick(object sender, Syncfusion.Windows.Forms.Tools.TabPrimitiveClickEventArgs e)

{

if(e.TabPrimitive.Name == "CustomAbout")

{

DemoCommon.AboutForm ab=new DemoCommon.AboutForm( AppDomain.CurrentDomain.GetAssemblies());

ab.ShowDialog();

}

//This event can be canceled using the code given below.

e.Cancel = true;

//This code displays the primitive that gets clicked during this event.

Console.Write("TabPrimitiveClick:" + e.TabPrimitive.ToString());

}

{% endhighlight %}

{% highlight vb %}



Private Sub tabControlAdv4_TabPrimitiveClick(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.TabPrimitiveClickEventArgs)

If e.TabPrimitive.Name = "CustomAbout" Then

Dim ab As DemoCommon.AboutForm = New DemoCommon.AboutForm(AppDomain.CurrentDomain.GetAssemblies)

ab.ShowDialog()

End If

'this event can be canceled using the code given below.

e.Cancel = True

'This code displays the primitive that gets clicked during this event.

Console.Write("TabPrimitiveClick:" + e.TabPrimitive.ToString())

End Sub

{% endhighlight %}

{% endtabs %}

## TabsOrderChanged Event

This event occurs when the order of the tabs are changed in the TabControlAdv.

{% tabs %}

{% highlight c# %}



// Set the UserMoveTabs property to True, to drag and drop tabs during runtime.

this.tabControlAdv1.UserMoveTabs = true;



// Handle the TabsOrderChanged event.

this.tabControlAdv1.TabsOrderChanged+=new EventHandler(tabControlAdv1_TabsOrderChanged);

}



private void tabControlAdv1_TabsOrderChanged(object sender, EventArgs e)

{

// Below line will be displayed in the output window at run-time, when a tab is dragged and dropped at another location.

Console.Write("TabsOrderChanged event is raised");

}

{% endhighlight %}

{% highlight vb %}



' Set the UserMoveTabs property to True, to drag and drop tabs during runtime. 

Me.tabControlAdv1.UserMoveTabs = True 



' Handle the TabsOrderChanged event. 

AddHandler Me.tabControlAdv1.TabsOrderChanged, AddressOf tabControlAdv1_TabsOrderChanged 

Private Sub tabControlAdv1_TabsOrderChanged(ByVal sender As Object, ByVal e As EventArgs)

   ' Below line will be displayed in the output window at run-time, when a tab is dragged and dropped at another location. 

   Console.Write("TabsOrderChanged event is raised")

End Sub

{% endhighlight %}

{% endtabs %}

N> The TabControlAdv.OnTabsOrderChanged() method raises the OnTabsOrderChanged event.

## TextChanged Event

This event occurs when the value of the `Text` property is changed.

{% tabs %}

{% highlight c# %}



private void tabControlAdv1_TextChanged(object sender, System.Windows.Forms.EventArgs e)

{

//Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("TextChanged event is raised");

}

{% endhighlight %}

{% highlight vb %}



Private Sub tabControlAdv1_TextChanged(ByVal sender As Object, ByVal e As System.Windows.Forms.EventArgs)

'Below line will be displayed in the output window at run-time, when this event is fired.

Console.Write("TextChanged event is raised")

End Sub

{% endhighlight %}

{% endtabs %}

The TabPageAdv.Closed event is raised when a TapPage is closed using close button.

{% tabs %}

{% highlight c# %}



private void tabPageAdv1_Closed(object sender, EventArgs e)

{

   this.tabPageAdv5 = new Syncfusion.Windows.Forms.Tools.TabPageAdv();

   this.tabPageAdv5.Text = "New Tab";

   this.tabControlAdv1.TabPages.Add(this.tabPageAdv5);

}

{% endhighlight %}

{% highlight vb %}



Private Sub tabPageAdv1_Closed(ByVal sender As Object, ByVal e As EventArgs)

Me.tabPageAdv5 = New Syncfusion.Windows.Forms.Tools.TabPageAdv() 

Me.tabPageAdv5.Text = "New Tab" 

Me.tabControlAdv1.TabPages.Add(Me.tabPageAdv5)

End Sub

{% endhighlight %}

{% endtabs %}





## Closing Event

The TabPageAdv.Closing event is raised when a Tab page is closing.

{% tabs %}

{% highlight c# %}



private void tabPageAdv1_Closing(object sender, TabPageAdvClosingEventArgs args)

{

   tabControlAdv1.BorderStyle = BorderStyle.FixedSingle;

   tabControlAdv1.BorderColor = Color.Red;

   //Cancels the tab page closing

   args.Cancel = true;

}

{% endhighlight %}

{% highlight vb %}

Private Sub tabPageAdv1_Closing(ByVal sender As Object, ByVal args As TabPageAdvClosingEventArgs)

   tabControlAdv1.BorderStyle = BorderStyle.FixedSingle

   tabControlAdv1.BorderColor = Color.Red

   'Cancels the tab page closing 

   args.Cancel = True

End Sub

{% endhighlight %}

{% endtabs %}






