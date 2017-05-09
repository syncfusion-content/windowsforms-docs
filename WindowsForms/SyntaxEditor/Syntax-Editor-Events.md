---
layout: post
title: Syntax-Editor-Events | WindowsForms | Syncfusion
description: Syntax Editor events
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Edit Control Events

This section discusses various events handled for the Edit control. The events are listed below:



## CanUndoRedoChanged Event

This event occurs when the CanUndoRedo state is changed. The CanUndo and CanRedo properties indicate whether it is possible to undo and redo the actions in Edit Control respectively.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



private void editControl1_CanUndoRedoChanged(object sender, EventArgs e)

{

Console.WriteLine(" CanUndoRedoChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_CanUndoRedoChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" CanUndoRedoChanged event is raised ")

End Sub

{% endhighlight %}



## Closing Event

This event is discussed in the Saving and Canceling Changes topic.



## Code Snippet Events

This section discusses the below given code snippet events.



### CodeSnippetActivating Event

This event occurs when the code snippet is to be activated.

The event handler receives an argument of type CancelableCodeSnippetsEventArgs. The following CancelableCodeSnippetsEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Indicates whether action has to be canceled.</td></tr>
<tr>
<td>
CodeSnippet</td><td>
Code snippet that is currently activated.</td></tr>
</table>


{% highlight c# %}



private void editControl1_CodeSnippetActivating(object sender, Syncfusion.Windows.Forms.Edit.CancellableCodeSnippetsEventArgs e)

{

  // The below line will be displayed in the output window at runtime.

Console.WriteLine(" CodeSnippetActivating event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_CodeSnippetActivating(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.CancellableCodeSnippetsEventArgs)

' The below line will be displayed in the output window at runtime.

Console.WriteLine(" CodeSnippetActivating event is raised ")

End Sub

{% endhighlight %}



### CodeSnippetDeactivating Event

This event occurs when the code snippet is to be deactivated.

The event handler receives an argument of type CodeSnippetsEventArgs. The following CodeSnippetsEventArgs member provides information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
CodeSnippet</td><td>
Code snippet that is currently activated.</td></tr>
</table>


{% highlight c# %}



private void editControl1_CodeSnippetDeactivating(object sender, Syncfusion.Windows.Forms.Edit.CodeSnippetsEventArgs e)

{

// The below line will be displayed in the output window at runtime.

Console.WriteLine(" CodeSnippetDeactivating event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_CodeSnippetDeactivating(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.CodeSnippetsEventArgs)

' The below line will be displayed in the output window at runtime.

Console.WriteLine(" CodeSnippetDeactivating event is raised ")

End Sub


{% endhighlight %}


### CodeSnippetTemplateTextChanging Event

This event is raised when the text of the code snippet template member is to be changed.

The event handler receives an argument of type CodeSnippetTemplateTextChangingEventArgs. The following CodeSnippetTemplateTextChangingEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Indicates whether action has to be canceled.</td></tr>
<tr>
<td>
CodeSnippet</td><td>
Code snippet that is currently activated.</td></tr>
<tr>
<td>
NewText</td><td>
New text.</td></tr>
<tr>
<td>
TemplateMemberName</td><td>
Name of template member that is to be changed.</td></tr>
</table>


{% highlight c# %}



// Change the text of all template members with defined name of currently activated code snippet.

this.editControl1.ChangeSnippetTemplateText(" old member name", " new text");



// Handle the CodeSnippetTemplateTextChanging event.

this.editControl1.CodeSnippetTemplateTextChanging+=new Syncfusion.Windows.Forms.Edit.CodeSnippetTemplateTextChangingEventHandler(editControl1_CodeSnippetTemplateTextChanging);



private void editControl1_CodeSnippetTemplateTextChanging(object sender, Syncfusion.Windows.Forms.Edit.CodeSnippetTemplateTextChangingEventArgs e)

{

// The below line will be displayed in the output window at runtime.

Console.WriteLine(" CodeSnippetTemplateTextChanging event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Change the text of all template members with defined name of currently activated code snippet.

Me.editControl1.ChangeSnippetTemplateText(" old member name", " new text")



' Handle the CodeSnippetTemplateTextChanging event.

Me.editControl1.CodeSnippetTemplateTextChanging+=New Syncfusion.Windows.Forms.Edit.CodeSnippetTemplateTextChangingEventHandler(editControl1_CodeSnippetTemplateTextChanging)



Private Sub editControl1_CodeSnippetTemplateTextChanging(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.CodeSnippetTemplateTextChangingEventArgs)

' The below line will be displayed in the output window at runtime.

Console.WriteLine(" CodeSnippetTemplateTextChanging event is raised ")

End Sub

{% endhighlight %}

### NewSnippetMemberHighlighting Event

This event is raised when a new code snippet member is highlighted.

The event handler receives an argument of type NewSnippetMemberHighlightingEventArgs. The following NewSnippetMemberHighlightingEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Indicates whether action has to be canceled.</td></tr>
<tr>
<td>
CodeSnippet</td><td>
Code snippet that is currently activated.</td></tr>
<tr>
<td>
NewSnippetMember</td><td>
Snippet member that has to be highlighted.</td></tr>
<tr>
<td>
OldSnippetMember</td><td>
Previously highlighted snippet member.</td></tr>
</table>


{% highlight c# %}



private void editControl1_NewSnippetMemberHighlighting(object sender, Syncfusion.Windows.Forms.Edit.NewSnippetMemberHighlightingEventArgs e)

{

// The below line will be displayed in the output window at runtime.

Console.WriteLine(" NewSnippetMemberHighlighting event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_NewSnippetMemberHighlighting(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.NewSnippetMemberHighlightingEventArgs)

' The below line will be displayed in the output window at runtime.

Console.WriteLine(" NewSnippetMemberHighlighting event is raised ")

End Sub

{% endhighlight %}

## ConfigurationChanged Event

This event is fired on changing the configuration of the Edit Control. Configuration can be set for the Edit Control using the ApplyConfiguration method.

The event handler receives an argument of type EventArgs.



{% highlight c# %}



this.editControl1.ConfigurationChanged+=new EventHandler(editControl1_ConfigurationChanged);

this.editControl1.ApplyConfiguration("XML");



private void editControl1_ConfigurationChanged(object sender, EventArgs e)

{

this.editControl1.ApplyConfiguration("XML");

}

{% endhighlight %}

{% highlight vbnet %}



AddHandler Me.editControl1.ConfigurationChanged, AddressOf editControl1_ConfigurationChanged 

Me.editControl1.ApplyConfiguration("XML")



Private Sub editControl1_ConfigurationChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" ConfigurationChanged event is raised ")

End Sub

{% endhighlight %}

## Collapse Events

This section discusses the below given collapse events.







### CollapsedAll Event

This event is raised when the CollapseAll method is called.

The event handler receives an argument of type EventArgs.



{% highlight c# %}



// Handle the CollapsedAll event.

this.editControl1.CollapsedAll+=new EventHandler(editControl1_CollapsedAll);

// Call the CollapseAll method.

this.editControl1.CollapseAll();



private void editControl1_CollapsedAll(object sender, EventArgs e)

{ 

  // The below line will be displayed 

Console.WriteLine(" CollapsedAll event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the CollapsedAll event.

Me.editControl1.CollapsedAll+=New EventHandler(editControl1_CollapsedAll)

' Call the CollapseAll method.

Me.editControl1.CollapseAll()



Private Sub editControl1_CollapsedAll(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" CollapsedAll event is raised ")

End Sub

{% endhighlight %}

### CollapsingAll Event

This event is raised when the CollapseAll method is called.

The event handler receives an argument of type CancelEventArgs. The following CancelableEventArgs member provides information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets / sets a value indicating whether the event should be canceled.</td></tr>
</table>


{% highlight c# %}



// Handle the CollapsingAll event.

this.editControl1.CollapsingAll+=new EventHandler(editControl1_CollapsingAll);



// Call the CollapseAll method.

this.editControl1.CollapseAll();



private void editControl1_CollapsingAll(object sender, CancelEventArgs e)

{

// The below given line will be displayed in the output window at runtime.

Console.WriteLine(" CollapsingAll event is raised ");

// Cancels the event.

e.Cancel = true;

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the CollapsingAll event.

Me.editControl1.CollapsingAll+=New EventHandler(editControl1_CollapsingAll)



' Call the CollapseAll method.

Me.editControl1.CollapseAll()



Private Sub editControl1_CollapsingAll(ByVal sender As Object, ByVal e As CancelEventArgs)

' The below given line will be displayed in the output window at runtime.

Console.WriteLine(" CollapsingAll event is raised ")

' Cancels the event.

e.Cancel = True

End Sub

{% endhighlight %}

## ContextChoice Events

This section discusses the below given context choice events.



### ContextChoiceBeforeOpen Event

 This event is discussed in the Context Choice topic.



### ContextChoiceSelectedTextInsert Event

This event is discussed in the Context Choice topic.



### ContextChoiceClose Event

This event is discussed in the Context Choice topic.



### ContextChoiceItemSelected Event

This event is discussed in the Context Choice topic.



### ContextChoiceUpdate Event

This event occurs when the context choice list is updated.



The event handler receives an argument of type IContextChoiceController. The following IContextChoiceController members provide information specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Dropper</td><td>
Gets / sets dropping lexem.</td></tr>
<tr>
<td>
ExtendItemsFilteringString</td><td>
Specifies whether autocomplete string should be extended.</td></tr>
<tr>
<td>
FormSize</td><td>
Gets / sets size of the context choice form.</td></tr>
<tr>
<td>
Images</td><td>
Gets collection of the INamedImage items.</td></tr>
<tr>
<td>
IsVisible</td><td>
Specifies whether context choice window associated with current controller is visible.</td></tr>
<tr>
<td>
Items</td><td>
Gets collection of the context choice items.</td></tr>
<tr>
<td>
LexemBeforeDropper</td><td>
Gets / sets lexem situated before dropper.</td></tr>
<tr>
<td>
SelectedItem</td><td>
Gets / sets currently selected item.</td></tr>
<tr>
<td>
UseAutocomplete</td><td>
Specifies whether autocomplete technique should be used with current context choice.</td></tr>
</table>


{% highlight c# %}



// Create a new instance of the context choice item collection.

private ContextChoiceItemCollection c = new ContextChoiceItemCollection();



// Handle the ContextChoiceUpdate event.

this.editControl1.ContextChoiceUpdate+=new Syncfusion.Windows.Forms.Edit.ContextChoiceEventHandler(editControl1_ContextChoiceUpdate);



// IContextChoiceController.LexemBeforeDropper property returns the lexem before the dropper which displays the context choice. It is possible to control the lexem being searched in the context choice list using the ContextChoiceUpdate event.

private void editControl1_ContextChoiceUpdate(Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController controller)

{

Console.WriteLine("LexemBeforeDropper:" + controller.LexemBeforeDropper.Text);

controller.Items.Clear();

foreach (IContextChoiceItem item in c)

{

  if (item.Text.Equals(controller.LexemBeforeDropper.Text))

  {

  controller.Items.Add(item.Text);

  }

}  

}

{% endhighlight %}

{% highlight vbnet %}



' Create a new instance of the context choice item collection.

Private c As ContextChoiceItemCollection = New ContextChoiceItemCollection()



' Handle the ContextChoiceUpdate event.

Me.editControl1.ContextChoiceUpdate+=New Syncfusion.Windows.Forms.Edit.ContextChoiceEventHandler(editControl1_ContextChoiceUpdate)



' IContextChoiceController.LexemBeforeDropper property returns the lexem before the dropper which displays the context choice. It is possible to control the lexem being searched in the context choice list using the ContextChoiceUpdate event.

Private Sub editControl1_ContextChoiceUpdate(ByVal controller As Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController)

Console.WriteLine("LexemBeforeDropper:" + controller.LexemBeforeDropper.Text)

controller.Items.Clear()

Dim item As IContextChoiceItem

For Each item In c

  If item.Text.Equals(controller.LexemBeforeDropper.Text) Then

  controller.Items.Add(item.Text)

  End If

Next

End Sub

{% endhighlight %}

### ContextChoiceOpen Event

This event is discussed in the Context Choice topic.



### ContextChoiceRightClick Event

This event is raised when the context choice item is right-clicked.

The event handler receives an argument of type ContextChoiceItemEventArgs. The following CancelableCodeSnippetsEventArgs member provides information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Item</td><td>
Underlying ContextChoiceItem.</td></tr>
</table>


{% highlight c# %}



private void editControl1_ContextChoiceRightClick(Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController sender, Syncfusion.Windows.Forms.Edit.ContextChoiceItemEventArgs e)

{

e.Item.ForeColor = System.Drawing.Color.Maroon;

e.Item.BackColor = System.Drawing.Color.MistyRose;

MessageBox.Show(" ContextChoiceRightClick event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_ContextChoiceRightClick(ByVal sender As Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController, ByVal e As Syncfusion.Windows.Forms.Edit.ContextChoiceItemEventArgs)

e.Item.ForeColor = System.Drawing.Color.Maroon

e.Item.BackColor = System.Drawing.Color.MistyRose

MessageBox.Show(" ContextChoiceRightClick event is raised ")

End Sub

{% endhighlight %}

## ContextPrompt Events

This section discusses the below given context prompt events.





### ContextPromptBeforeOpen Event

This event is discussed in the Context Prompt topic.



### ContextPromptClose Event

This event is discussed in the Context Prompt topic.



### ContextPromptOpen Event

This event is discussed in the Context Prompt topic.



### ContextPromptSelectionChanged Event

This event is discussed in the Context Prompt topic.



### ContextPromptUpdate Event

This event is discussed in the Context Prompt topic.



## CursorPositionChanged Event

This event is raised when the current cursor position is changed.

The event handler receives an argument of type EventArgs.



{% highlight c# %}



private void editControl1_CursorPositionChanged(object sender, EventArgs e)

{

MessageBox.Show(" CurrentCursorPosition event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_CursorPositionChanged(ByVal sender As Object, ByVal e As EventArgs)

MessageBox.Show(" CursorPositionChanged event is raised ")

End Sub

{% endhighlight %}

## Expand Events

This section discusses the expand events given below.



### ExpandedAll Event

This event is raised when the ExpandAll method is called.

The event handler receives an argument of type EventArgs.



{% highlight c# %}



// Handle the ExpandedAll event.

this.editControl1.ExpandedAll+=new EventHandler(editControl1_ExpandedAll);



// Call the ExpandAll method.

this.editControl1.ExpandAll();



private void editControl1_ExpandedAll(object sender, EventArgs e)

{ 

  // The below line will be displayed in the output window at runtime.

Console.WriteLine(" ExpandedAll event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the ExpandedAll event.

Me.editControl1.ExpandedAll+=New EventHandler(editControl1_ExpandedAll)



' Call the ExpandAll method.

Me.editControl1.ExpandAll()



Private Sub editControl1_ExpandedAll(ByVal sender As Object, ByVal e As EventArgs)

  ' The below line will be displayed in the output window at runtime

Console.WriteLine(" ExpandedAll event is raised ")

End Sub


{% endhighlight %}


### ExpandingAll Event

This event is raised when the ExpandAll method is called.

The event handler receives an argument of type CancelEventArgs. The following CancelableEventArgs member provides information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets / sets a value indicating whether the event should be canceled.</td></tr>
</table>


{% highlight c# %}



// Handle the ExpandingAll event.

this.editControl1.ExpandingAll+=new EventHandler(editControl1_ExpandingAll);



// Call the ExpandAll method.

this.editControl1.ExpandAll();



private void editControl1_ExpandingAll(object sender, CancelEventArgs e)

{

// The below given line will be displayed in the output window at runtime.

Console.WriteLine(" ExpandingAll event is raised ");



// Cancels the event.

e.Cancel = true;

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the ExpandingAll event.

Me.editControl1.ExpandingAll+=New EventHandler(editControl1_ExpandingAll)



' Call the ExpandAll method.

Me.editControl1.ExpandAll()



Private Sub editControl1_ExpandingAll(ByVal sender As Object, ByVal e As CancelEventArgs)

' The below given line will be displayed in the output window at runtime.

Console.WriteLine(" CollapsingAll event is raised ")



' Cancels the event.

e.Cancel = True

End Sub

{% endhighlight %}

## Indicator Margin Events

This section discusses the below given indicator margin events.





### IndicatorMarginClick Event

This event is raised when the user clicks on the indicator margin area.

The event handler receives an argument of type IndicatorClickEventArgs. The following IndicatorClickEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Bookmark</td><td>
Gets clicked custom bookmark if available.</td></tr>
<tr>
<td>
LineIndex</td><td>
Gets clicked line index.</td></tr>
</table>


{% highlight c# %}



private void editControl1_IndicatorMarginClick(object sender, Syncfusion.Windows.Forms.Edit.IndicatorClickEventArgs e)

{

Console.WriteLine(" IndicatorMarginClick event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_IndicatorMarginClick(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.IndicatorClickEventArgs)

Console.WriteLine(" IndicatorMarginClick event is raised ")

End Sub

{% endhighlight %}

### IndicatorMarginDoubleClick Event

This event is raised when the user double-clicks on the indicator margin area.

The event handler receives an argument of type IndicatorClickEventArgs. The following IndicatorClickEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Bookmark</td><td>
Gets clicked custom bookmark if available.</td></tr>
<tr>
<td>
LineIndex</td><td>
Gets clicked line index.</td></tr>
</table>


{% highlight c# %}



private void editControl1_IndicatorMarginDoubleClick(object sender, Syncfusion.Windows.Forms.Edit.IndicatorClickEventArgs e)

{

Console.WriteLine(" IndicatorMarginDoubleClick event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_IndicatorMarginDoubleClick(ByVal sender As Object, ByVal e Syncfusion.Windows.Forms.Edit.IndicatorClickEventArgs)

Console.WriteLine(" IndicatorMarginDoubleClick event is raised ")

End Sub

{% endhighlight %}

### DrawLineMark Event

This event occurs when a custom line mark should be drawn.

The event handler receives an argument of type DrawLineMarkEventArgs. The following DrawLineMarkEventArgs members provide information specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
CustomDraw</td><td>
If set to True, user handles drawing of the bookmark.</td></tr>
<tr>
<td>
Graphics</td><td>
Graphics object.</td></tr>
<tr>
<td>
MarkRect</td><td>
Rectangle where line mark should be drawn.</td></tr>
<tr>
<td>
PhysicalLine</td><td>
Virtual line number.</td></tr>
<tr>
<td>
VirtualLine</td><td>
Physical line number.</td></tr>
</table>


{% highlight c# %}



private void editControl1_DrawLineMark(object sender, Syncfusion.Windows.Forms.Edit.DrawLineMarkEventArgs e)

{

if( e.VirtualLine % 2 == 0 )

{

Brush brush = new LinearGradientBrush(e.MarkRect, Color.Red, Color.Yellow, LinearGradientMode.Vertical);

e.Graphics.FillRectangle(brush, e.MarkRect);

e.Graphics.DrawRectangle(Pens.IndianRed, e.MarkRect);

} 

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_DrawLineMark(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.DrawLineMarkEventArgs)

If e.VirtualLine Mod 2 = 0 Then

Dim brush As Brush = New Drawing2D.LinearGradientBrush(e.MarkRect, Color.Red, Color.Yellow, LinearGradientMode.Vertical)

e.Graphics.FillRectangle(brush, e.MarkRect)

e.Graphics.DrawRectangle(Pens.IndianRed, e.MarkRect)

End If

End Sub

{% endhighlight %}

![](Edit-Control-Events_images/Edit-Control-Events_img1.jpeg)




## InsertModeChanged Event

This event is fired when the value of the InsertMode property changes. The InsertMode property specifies the insert mode state.

The event handler receives an argument of type EventArgs.



{% highlight c# %}



// Handle the InsertModeChanged event.

this.editControl1.InsertModeChanged+=new EventHandler(editControl1_InsertModeChanged);



// Set the value of the InsertMode property.

this.editControl1.InsertMode = false;



private void editControl1_InsertModeChanged(object sender, EventArgs e)

{

// The below statement can be seen in the output window at runtime.

Console.WriteLine(" InsertModeChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the InsertModeChanged event.

AddHandler Me.editControl1.InsertModeChanged, AddressOf editControl1_InsertModeChanged 



' Set the value of the InsertMode property.

Me.editControl1.InsertMode = False



Private Sub editControl1_InsertModeChanged(ByVal sender As Object, ByVal e As EventArgs)

The below statement can be seen in the output window at runtime.

Console.WriteLine(" InsertModeChanged event is raised ")

End Sub

{% endhighlight %}

## LanguageChanged Event

This event occurs when the current parser language is changed.

The event handler receives an argument of type EventArgs.



{% highlight c# %}



private void editControl1_LanguageChanged(object sender, EventArgs e)

{

Console.WriteLine(" LanguageChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_LanguageChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" LanguageChanged event is raised ")

End Sub

{% endhighlight %}

## MenuFill Event

This event is discussed in the Customizable Context Menu topic.



## Operation Events

This section discusses the below given operation events.



### OperationStarted Event

This event occurs when an operation starts.

The event handler receives an argument of type ILongOperation. The following ILongOperation members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
ID</td><td>
Gets ID of the operation.</td></tr>
<tr>
<td>
IsRunning</td><td>
Gets value indicating whether operation is running now.</td></tr>
<tr>
<td>
Name</td><td>
Gets name of the operation.</td></tr>
<tr>
<td>
RunningTime</td><td>
Gets time of the operation activity.</td></tr>
</table>


{% highlight c# %}



private void editControl1_OperationStarted(Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation operation)

{

Console.WriteLine(" OperationStarted event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_OperationStarted(ByVal operation As Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation)

Console.WriteLine(" OperationStarted event is raised ")

End Sub

{% endhighlight %}


### OperationStopped Event

This event occurs when an operation ends.

The event handler receives an argument of type ILongOperation. The following ILongOperation members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
ID</td><td>
Gets ID of the operation.</td></tr>
<tr>
<td>
IsRunning</td><td>
Gets value indicating whether operation is running now.</td></tr>
<tr>
<td>
Name</td><td>
Gets name of the operation.</td></tr>
<tr>
<td>
RunningTime</td><td>
Gets time of the operation activity.</td></tr>
</table>


{% highlight c# %}



private void editControl1_OperationStopped(Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation operation)

{

Console.WriteLine(" OperationStopped event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_OperationStopped(ByVal operation As Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation)

Console.WriteLine(" OperationStopped event is raised ")

End Sub


{% endhighlight %}


## Outlining Events

This section discusses the below given outlining events.

### OutliningBeforeCollapse Event

This event is raised before a region is about to collapse.

The event handler receives an argument of type OutliningEventArgs. The following OutliningEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets / Sets value indicating whether the user cancels the underlying event.</td></tr>
<tr>
<td>
CollapsedText</td><td>
Gets / Sets the CollapsedText.</td></tr>
<tr>
<td>
CollapseName</td><td>
Gets / Sets the CollapseName.</td></tr>
<tr>
<td>
Collapser</td><td>
Gets / Sets the Collapser.</td></tr>
</table>


{% highlight c# %}



private void editControl1_OutliningBeforeCollapse(object sender, Syncfusion.Windows.Forms.Edit.OutliningEventArgs e)

{

Console.WriteLine(" OutliningBeforeCollapse event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_OutliningBeforeCollapse(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.OutliningEventArgs)

Console.WriteLine(" OutliningBeforeCollapse event is raised ")

End Sub

{% endhighlight %}

### OutliningBeforeExpand Event

This event is raised before a region is about to expand.

The event handler receives an argument of type OutliningEventArgs. The following OutliningEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets / Sets value indicating whether the user cancels the underlying event.</td></tr>
<tr>
<td>
CollapsedText</td><td>
Gets / Sets the CollapsedText.</td></tr>
<tr>
<td>
CollapseName</td><td>
Gets / Sets the CollapseName.</td></tr>
<tr>
<td>
Collapser</td><td>
Gets / Sets  the Collapser.</td></tr>
</table>


{% highlight c# %}



private void editControl1_OutliningBeforeExpand(object sender, Syncfusion.Windows.Forms.Edit.OutliningEventArgs e)

{

Console.WriteLine(" OutliningBeforeExpand event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_OutliningBeforeExpand(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.OutliningEventArgs)

Console.WriteLine(" OutliningBeforeExpand event is raised ")

End Sub

{% endhighlight %}

### OutliningCollapse Event

This event is raised when a region collapses.

The event handler receives an argument of type CollapseEventArgs. The following CollapseEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
CollapsedText</td><td>
Gets / Sets the CollapsedText.</td></tr>
<tr>
<td>
CollapseName</td><td>
Gets / Sets the CollapseName.</td></tr>
<tr>
<td>
Collapser</td><td>
Gets / Sets the Collapser.</td></tr>
</table>


{% highlight c# %}



private void editControl1_OutliningCollapse(object sender, Syncfusion.Windows.Forms.Edit.CollapseEventArgs e)

{

Console.WriteLine(" OutliningCollapse event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_OutliningCollapse(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.CollapseEventArgs)

Console.WriteLine(" OutliningBeforeCollapse event is raised ")

End Sub

{% endhighlight %}

### OutliningExpand Event

This event is raised when a region expands.

The event handler receives an argument of type CollapseEventArgs. The following CollapseEventArgs members provide information, specific to this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
CollapsedText</td><td>
Gets / Sets the CollapsedText.</td></tr>
<tr>
<td>
CollapseName</td><td>
Gets / Sets the CollapseName.</td></tr>
<tr>
<td>
Collapser</td><td>
Gets / Sets the Collapser.</td></tr>
</table>


{% highlight c# %}



private void editControl1_OutliningExpand(object sender, Syncfusion.Windows.Forms.Edit.CollapseEventArgs e)

{

Console.WriteLine(" OutliningExpand event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_OutliningExpand(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.CollapseEventArgs)

Console.WriteLine(" OutliningExpand event is raised ")

End Sub

{% endhighlight %}

### OutliningTooltipBeforePopup Event

This event is discussed in the Outlining ToolTip topic.



### OutliningTooltipClose Event

This event is raised when the outlining tooltip is closed.

The event handler receives an argument of type CollapseEventArgs. The following CollapseEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
CollapsedText</td><td>
Gets / Sets the CollapsedText.</td></tr>
<tr>
<td>
CollapseName</td><td>
Gets / Sets the CollapseName.</td></tr>
<tr>
<td>
Collapser</td><td>
Gets / Sets the Collapser.</td></tr>
</table>


{% highlight c# %}



private void editControl1_OutliningTooltipClose(object sender, Syncfusion.Windows.Forms.Edit.CollapseEventArgs e)

{

Console.WriteLine(" OutliningTooltipClose event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_OutliningTooltipClose(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.CollapseEventArgs)

Console.WriteLine(" OutliningTooltipClose event is raised ")

End Sub

{% endhighlight %}

### OutliningTooltipPopup Event

This event is raised when the outlining tooltip is shown.

The event handler receives an argument of type CollapseEventArgs. The following CollapseEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
CollapsedText</td><td>
Gets / Sets the CollapsedText.</td></tr>
<tr>
<td>
CollapseName</td><td>
Gets / Sets the CollapseName.</td></tr>
<tr>
<td>
Collapser</td><td>
Gets / Sets the Collapser.</td></tr>
</table>


{% highlight c# %}



private void editControl1_OutliningTooltipPopup(object sender, Syncfusion.Windows.Forms.Edit.CollapseEventArgs e)

{

Console.WriteLine(" OutliningTooltipPopup event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_OutliningTooltipPopup(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.CollapseEventArgs)

Console.WriteLine(" OutliningTooltipPopup event is raised ")

End Sub

{% endhighlight %}

## Print Events

It has the following events:



### PrintHeader Event

This event is discussed in the Printing topic.



### PrintFooter Event

This event is discussed in the Printing topic.



## ReadOnlyChanged Event

This event occurs when the ReadOnly property is changed. The ReadOnly property specifies whether the Edit Control is in the read-only mode.

The event handler receives an argument of type EventArgs.



{% highlight c# %}



// Handle the ReadOnlyChanged event.

this.editControl1.ReadOnlyChanged+=new EventHandler(editControl1_ReadOnlyChanged);



// Set the ReadOnly property to True.

this.editControl1.ReadOnly = true;



private void editControl1_ReadOnlyChanged(object sender, EventArgs e)

{

Console.WriteLine(" ReadOnlyChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the ReadOnlyChanged event.

Me.editControl1.ReadOnlyChanged+=New EventHandler(editControl1_ReadOnlyChanged)



' Set the ReadOnly property to True.

Me.editControl1.ReadOnly = True



Private Sub editControl1_ReadOnlyChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine(" ReadOnlyChanged event is raised ")

End Sub


{% endhighlight %}


## RegisteringDefaultKeyBindings Event

This event is discussed in the Keystroke - Action Combinations Binding topic.



## RegisteringKeyCommands Event

This event is discussed in the Keystroke - Action Combinations Binding topic.



## Save Events

This section discusses the below given events that are generated when the user saves files and streams with data loss.

### SaveFileWithDataLoss Event

This event is raised when user tries to save files with data loss.

The event handler receives an argument of type SaveWithDataLosingEventArgs. The following SaveWithDataLosingEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
SaveWithLoss</td><td>
Gets / sets value that indicates whether data has to be saved with loss.</td></tr>
<tr>
<td>
UserHandling</td><td>
Gets / sets value that indicates whether user handled the event.</td></tr>
</table>


{% highlight c# %}



private void editControl1_SaveFileWithDataLoss(object sender, Syncfusion.Windows.Forms.Edit.SaveWithDataLosingEventArgs e)

{

e.SaveWithLoss = true;

e.UserHandling = true;

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_SaveFileWithDataLoss(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.SaveWithDataLosingEventArgs)

e.SaveWithLoss = True

e.UserHandling = True

End Sub

{% endhighlight %}

### SaveStreamWithDataLoss Event

This event is raised when user tries to save streams with data loss.

The event handler receives an argument of type SaveWithDataLosingEventArgs. The following SaveWithDataLosingEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
SaveWithLoss</td><td>
Gets / sets value that indicates whether data has to be saved with loss.</td></tr>
<tr>
<td>
UserHandling</td><td>
Gets / sets value that indicates whether user handled the event.</td></tr>
</table>


{% highlight c# %}



private void editControl1_SaveStreamWithDataLoss(object sender, Syncfusion.Windows.Forms.Edit.SaveWithDataLosingEventArgs e)

{

e.SaveWithLoss = true;

e.UserHandling = true;

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_SaveStreamWithDataLoss(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.SaveWithDataLosingEventArgs)

e.SaveWithLoss = True

e.UserHandling = True

End Sub

{% endhighlight %}

## Scroll Events

This section discusses the below given events that are generated when horizontal and vertical scrolling takes place.

### HorizontalScroll Event

This event is raised when user scrolls the window horizontally.

The event handler receives an argument of type ScrollEventArgs. The following ScrollEventArgs members provide information specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
NewValue</td><td>
Gets / sets the new System.Windows.Forms.ScrollBar.Value for the scrollbar.</td></tr>
<tr>
<td>
OldValue</td><td>
Gets / sets the old System.Windows.Forms.ScrollBar.Value for the scrollbar.</td></tr>
<tr>
<td>
ScrollOrientation</td><td>
Gets the scrollbar orientation that raised the scroll event.</td></tr>
<tr>
<td>
Type</td><td>
Gets the type of scroll event that occurred.</td></tr>
</table>


{% highlight c# %}



private void editControl1_HorizontalScroll(object sender, ScrollEventArgs e)

{

Console.WriteLine(" HorizontalScroll event is raised ");

}


{% endhighlight %}
{% highlight vbnet %}



Private Sub editControl1_HorizontalScroll(ByVal sender As Object, ByVal e As ScrollEventArgs)

Console.WriteLine(" HorizontalScroll event is raised ")

End Sub

{% endhighlight %}

### VerticalScroll Event

This event is raised when the user scrolls the window vertically.

The event handler receives an argument of type ScrollEventArgs. The following ScrollEventArgs members provide information specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
NewValue</td><td>
Gets / sets the new System.Windows.Forms.ScrollBar.Value for the scrollbar.</td></tr>
<tr>
<td>
OldValue</td><td>
Gets / sets the old System.Windows.Forms.ScrollBar.Value for the scrollbar.</td></tr>
<tr>
<td>
ScrollOrientation</td><td>
Gets the scrollbar orientation that raised the scroll event.</td></tr>
<tr>
<td>
Type</td><td>
Gets the type of scroll event that occurred.</td></tr>
</table>


{% highlight c# %}



private void editControl1_VerticalScroll(object sender, ScrollEventArgs e)

{

Console.WriteLine(" VerticalScroll event is raised ");

}

{% endhighlight %}


{% highlight vbnet %}



Private Sub editControl1_VerticalScroll(ByVal sender As Object, ByVal e As ScrollEventArgs)

Console.WriteLine(" VerticalScroll event is raised ")

End Sub

{% endhighlight %}

## SelectionChanged Event

This event is raised when text selection has been changed.

The event handler receives an argument of type EventArgs.

{% highlight c# %}



private void editControl1_SelectionChanged(object sender, EventArgs e)

{

MessageBox.Show(" SelectionChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_SelectionChanged(ByVal sender As Object, ByVal e As EventArgs)

MessageBox.Show(" SelectionChanged event is raised ")

End Sub

{% endhighlight %}

## SingleLineChanged Event

This event is fired when the value of the SingleLineMode property is changed. The SingleLineMode property specifies whether the single line mode is enabled.

The event handler receives an argument of type EventArgs.



{% highlight c# %}



// Handle the SingleLineChanged event.

this.editControl1.SingleLineChanged+=new EventHandler(editControl1_SingleLineChanged);



// Set the SingleLineMode property to True.

this.editControl1.SingleLineMode = true;



private void editControl1_SingleLineChanged(object sender, EventArgs e)

{

  // The below statement can be seen in the output window at runtime.

Console.WriteLine(" SingleLineChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the SingleLineChanged event. 

AddHandler Me.editControl1.SingleLineChanged, AddressOf editControl1_SingleLineChanged 



' Set the SingleLineMode property to True. 

Me.editControl1.SingleLineMode = True 



Private Sub editControl1_SingleLineChanged(ByVal sender As Object, ByVal e As EventArgs)

  ' The below statement can be seen in the output window at runtime.

Console.WriteLine(" SingleLineChanged event is raised ")

End Sub

{% endhighlight %}

## Text Events

This section discusses the following text events:

* TextChanged
* TextChanging

### TextChanged Event


This event is fired when the text in the Edit Control is changed.

The event handler receives an argument of type EventArgs.



{% highlight c# %}



// Handle the TextChanged event.

this.editControl1.TextChanged += new EventHandler(editControl1_TextChanged);



// Set the text of the EditControl.

this.editControl1.Text = "Sample Text";



private void editControl1_TextChanged(object sender, EventArgs e)

{

// The below statement can be seen in the output window at runtime.

Console.WriteLine(" TextChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the TextChanged event.

AddHandler Me.editControl1.TextChanged, AddressOf editControl1_TextChanged 



' Set the text of the EditControl.

Me.editControl1.Text = "Sample Text"



Private Sub editControl1_TextChanged(ByVal sender As Object, ByVal e As EventArgs)

' The below statement can be seen in the output window at runtime.

Console.WriteLine(" TextChanged event is raised ")

End Sub


{% endhighlight %}


### TextChanging Event

This event is raised when the text is to be changed.

The event handler receives an argument of type TextChangingEventArgs. The following TextChangingEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets/sets the value indicating whether text change has been canceled.</td></tr>
<tr>
<td>
StartColumn</td><td>
Gets/sets virtual column of Insert/Delete start.</td></tr>
<tr>
<td>
StartLine</td><td>
Gets/sets virtual line of Insert/Delete start.</td></tr>
<tr>
<td>
Text</td><td>
Gets/sets event's text.</td></tr>
<tr>
<td>
Type</td><td>
Gets/sets type of the event (Changed/Insert/Delete). It includes the below given options.</td></tr>
</table>


{% highlight c# %}



private void editControl1_TextChanging(object sender, Syncfusion.Windows.Forms.Edit.TextChangingEventArgs e)

{

e.Type = Syncfusion.Windows.Forms.Edit.Enums.TextChange.Deleted;



// The below statement can be seen in the output window at runtime when the text of the Edit Control is deleted.

Console.WriteLine(" TextChanging event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_TextChanging(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.TextChangingEventArgs)

e.Type = Syncfusion.Windows.Forms.Edit.Enums.TextChange.Deleted



' The below statement can be seen in the output window at runtime when the text of the Edit Control is deleted. 

Console.WriteLine(" TextChanging event is raised ")

End Sub

{% endhighlight %}


### Line Modification Events

The line modification events occur whenever a line in the Edit control is subjected to a change by modifying the text of an existing line, inserting a line, or removing a line in the editor.

The following events are triggered from the control when the editor is modified:

#### Line Changed

The LineChanged event will be fired when any line is modified in the Edit control.

{% highlight c# %}

// Handle the LineChanged event.



this.editControl1.LineChanged  += new 



Syncfusion.Windows.Forms.Edit.TextChangingEventHandler(editControl1_LineChanged);





void editControl1_LineChanged(objectsender,Syncfusion.Windows.Forms.Edit.TextChangingEventArgs e)

       { 

        //The following statement can be seen in the output window at run time.

            Console.WriteLine("Line Changed");

      }

{% endhighlight %}

{% highlight vbnet %}

   ‘Handle the LineChanged event.

    AddHandler Me.editControl1.LineChanged, AddressOf Me.editControl1_LineChanged



    Private Sub editControl1_LineChanged(ByVal , As objectsender, 

                           ByVal e As Syncfusion.Windows.Forms.Edit.TextChangingEventArgs)


        ’The following statement can be seen in the output window at runtime.


       Console.WriteLine("Line Changed")


    End Sub

{% endhighlight %}

#### Line Inserted

The LineInserted event will be fired when a new line is inserted in the Edit control.

{% highlight c# %}

// Handle the LineInserted event.

    this.editControl1.LineInserted += new Syncfusion.Windows.Forms.Edit.LineInsertedEventHandler(editControl1_LineInserted);





void editControl1_LineInserted(objectsender,Syncfusion.Windows.Forms.Edit.LinesEventArgs e)

        {

       // The following statement can be seen in the output window at run time.



         Console.WriteLine("Line Inserted");

        }

{% endhighlight %}

{% highlight vbnet %}

    ‘Handle the LineInserted event.
    AddHandler Me.editControl1.LineInserted, AddressOf Me.editControl1_LineInserted


    Private Sub editControl1_LineInserted(ByVal , As objectsender, 

                                          ByVal e As Syncfusion.Windows.Forms.Edit.LinesEventArgs)


        ’The following statement can be seen in the output window at run time.
        Console.WriteLine("Line Inserted")


    End Sub

{% endhighlight %}

#### Line Deleted

The LineDeleted event will be fired when any line is removed from the Edit control.



{% highlight c# %}

// Handle the LineDeleted event.

this.editControl1.LineDeleted += new Syncfusion.Windows.Forms.Edit.LineDeletedEventHandler(editControl1_LineDeleted);





  void editControl1_LineDeleted(object sender, Syncfusion.Windows.Forms.Edit.LinesEventArgs e)

        {

          // The following statement can be seen in the output window at run time.

            Console.WriteLine("Line Deleted");

        }



{% endhighlight %}

{% highlight vbnet %}

‘Handle the LineDeleted event.   AddHandler Me.editControl1.LineDeleted, AddressOf Me.editControl1_LineDeleted


    Private Sub editControl1_LineDeleted(ByVal sender As Object,   

                                         ByVal e As Syncfusion.Windows.Forms.Edit.LinesEventArgs)


 ‘The following statement can be seen in the output window at run time.
        Console.WriteLine("Line Deleted")


    End Sub

{% endhighlight %}

## UnreachableTextFound Event

This event occurs when text in a hidden block is found and this block can't be expanded due to user's canceling.

The event handler receives an argument of type UnreachableTextFoundEventArgs. The following UnreachableTextFoundEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
ContinueSearch</td><td>
Indicates whether search must be continued.</td></tr>
<tr>
<td>
Point</td><td>
Point of the location of unreachable text.</td></tr>
<tr>
<td>
Text</td><td>
Searched text.</td></tr>
</table>


{% highlight c# %}



private void editControl1_UnreachableTextFound(object sender, Syncfusion.Windows.Forms.Edit.UnreachableTextFoundEventArgs e)

{

Console.WriteLine(" UnreachableTextFound event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_UnreachableTextFound(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.UnreachableTextFoundEventArgs)

Console.WriteLine(" UnreachableTextFound event is raised ")

End Sub

{% endhighlight %}

## UpdateBookmarkToolTip Event

This event is fired when the bookmark tooltip text is updated.

The event handler receives an argument of type UpdateBookmarkTooltipEventArgs. The following UpdateBookmarkTooltipEventArgs members provide information specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Bookmark</td><td>
Bookmark.</td></tr>
<tr>
<td>
HintedArea</td><td>
Rectangle that represents an object which has this tooltip. </td></tr>
<tr>
<td>
Image</td><td>
Gets / sets image associated with the tooltip.</td></tr>
<tr>
<td>
Line</td><td>
Index of the bookmarked line.</td></tr>
<tr>
<td>
Text</td><td>
Text of the tooltip.</td></tr>
<tr>
<td>
X</td><td>
Mouse X coordinate in client coordinates.</td></tr>
<tr>
<td>
Y</td><td>
Mouse Y coordinate in client coordinates.</td></tr>
</table>


{% highlight c# %}



// Handle the UpdateBookmarkToolTip event.

this.editControl1.UpdateBookmarkToolTip+=new Syncfusion.Windows.Forms.Edit.UpdateBookmarkTooltipEventHandler(editControl1_UpdateBookmarkToolTip);

// Set the bookmark at the specified line.

this.editControl1.BookmarkAdd(this.editControl1.CurrentLine);

// Specify whether bookmark tooltip should be shown.

this.editControl1.ShowBookmarkTooltip = true;



private void editControl1_UpdateBookmarkToolTip(object sender, Syncfusion.Windows.Forms.Edit.UpdateBookmarkTooltipEventArgs e)

{ 

// Set the bookmark tooltip text.

e.Text = " Introduction to Essential Edit ";

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the UpdateBookmarkToolTip event. 

AddHandler Me.editControl1.UpdateBookmarkToolTip, AddressOf editControl1_UpdateBookmarkToolTip 

' Set the bookmark at the specified line. 

Me.editControl1.BookmarkAdd(Me.editControl1.CurrentLine) 

' Specify whether bookmark tooltip should be shown. 

Me.editControl1.ShowBookmarkTooltip = True



Private Sub editControl1_UpdateBookmarkToolTip(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.UpdateBookmarkTooltipEventArgs)

' Set the bookmark tooltip text. 

e.Text = " Introduction to Essential Edit "

End Sub

{% endhighlight %}

![](Edit-Control-Events_images/Edit-Control-Events_img2.jpeg)




## UpdateContextToolTip Event

This event is discussed in the Context Tooltip topic.



## User Margin Events

This section discusses the below given user margin events.



### DrawUserMarginText Event

This event is discussed in the User Margin topic.



### PaintUserMargin Event

This event occurs when the user margin has to be painted.

The event handler receives an argument of type PaintEventArgs. The following PaintEventArgs members provide information, specific to this event.



<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
ClipRectangle</td><td>
Gets the rectangle area to paint.</td></tr>
<tr>
<td>
Graphics</td><td>
Gets the graphics that will be used to paint.</td></tr>
</table>


{% highlight c# %}



private void editControl1_PaintUserMargin(object sender, PaintEventArgs e)

{

Console.WriteLine(" PaintUserMargin event is raised ");

}


{% endhighlight %}

{% highlight vbnet %}



Private Sub editControl1_PaintUserMargin(ByVal sender As Object, ByVal e As PaintEventArgs)

Console.WriteLine(" PaintUserMargin event is raised ")

End Sub

{% endhighlight %}

## WordWrapChanged Event

This event is fired when the value of the WordWrapMode property is changed. The WordWrapMode property specifies the mode of word wrapping.

The event handler receives an argument of type EventArgs.



{% highlight c# %}



// Handle the WordWrapChanged event.

this.editControl1.WordWrapChanged+=new EventHandler(editControl1_WordWrapChanged);



// Specify the mode of word wrapping.

this.editControl1.WordWrapMode = Syncfusion.Windows.Forms.Edit.Enums.WordWrapMode.WordWrapMargin;



private void editControl1_WordWrapChanged(object sender, EventArgs e)

{  

// The below line will be displayed in the output window at runtime.

Console.WriteLine(" WordWrapChanged event is raised ");

}

{% endhighlight %}

{% highlight vbnet %}



' Handle the WordWrapChanged event. 

AddHandler Me.editControl1.WordWrapChanged, AddressOf editControl1_WordWrapChanged 



' Specify the mode of word wrapping. 

Me.editControl1.WordWrapMode = Syncfusion.Windows.Forms.Edit.Enums.WordWrapMode.WordWrapMargin 



Private Sub editControl1_WordWrapChanged(ByVal sender As Object, ByVal e As EventArgs)

' The below line will be displayed in the output window at runtime.

Console.WriteLine(" WordWrapChanged event is raised ")

End Sub

{% endhighlight %}

