---
layout: post
title: Events in Windows Forms Syntax Editor control | Syncfusion
description: Learn about Events support in Syncfusion Windows Forms Syntax Editor control, its elements and more details.
platform: WindowsForms
control: SyntaxEditor
documentation: ug
---

# Events in Windows Forms Syntax Editor

The `EditControl` is a powerful text editor control to create an interactive code editor applications with its unique feature set. It has many efficient features like editing, syntax highlighting, text indentation, intellisense, expand or collapse a block of code, custom language configuration etc. like in Microsoft Visual Studio Editor. It also provides programmatic access for most of the features like editing, intellisense, expand or collapse a block of code, and printing by raising various events.

This section discusses various events handled for the EditControl as follows.

## BeforeLineNumberPaint event

This event will be triggered before the LineNumber gets painted. The LineNumber can be enabled or disabled by using the [ShowLineNumbers](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ShowLineNumbers) property of the EditControl. Its default is `true`. To hide the LineNumber, turn on its value to `false`.

The event handler receives an argument of type [LineNumberPaintEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.LineNumberPaintEventArgs.html). The following LineNumberPaintEventArgs member provides specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[ForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.LineNumberPaintEventArgs.html#Syncfusion_Windows_Forms_Edit_LineNumberPaintEventArgs_ForeColor)' | markdownify }}</td><td>
Specifies a value for the fore color of LineNumber.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Handle before LineNumber is painted.

private void EditControl1_BeforeLineNumberPaint(object sender, Syncfusion.Windows.Forms.Edit.LineNumberPaintEventArgs e)
{
   // Sets the fore color of LineNumber in EditControl. 

    e.ForeColor = Color.Pink;
}

{% endhighlight %}


{% highlight VB %}

' Handle before LineNumber is painted.

Private Sub EditControl1_BeforeLineNumberPaint(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.LineNumberPaintEventArgs)

   'Sets the fore color of LineNumber in EditControl. 

   e.ForeColor = Color.Pink

End Sub

{% endhighlight %}

{% endtabs %}

## CanUndoRedoChanged event

This event occurs when the `CanUndoRedo` state is changed. The [CanUndo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_CanUndo) and [CanRedo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_CanRedo) properties indicates whether it is possible to undo and redo in the EditControl respectively.

The event handler receives an argument of type EventArgs.

{% tabs %}

{% highlight C# %}

private void editControl1_CanUndoRedoChanged(object sender, EventArgs e)

{

   Console.WriteLine(" CanUndoRedoChanged event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_CanUndoRedoChanged(ByVal sender As Object, ByVal e As EventArgs)

   Console.WriteLine(" CanUndoRedoChanged event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## Closing event

The Closing event is triggered before a file or stream is closed in the EditControl.

{% tabs %}

{% highlight C# %}

private void editControl1_Closing(object sender, Syncfusion.Windows.Forms.Edit.StreamCloseEventArgs e)
{

   // Cancel the file or stream closing action.

   e.Action = SaveChangesAction.Cancel;

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_Closing(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.StreamCloseEventArgs) Handles EditControl1.StreamClose

   ' Cancel the file or stream closing action.

   e.Action = SaveChangesAction.Cancel

End Sub

{% endhighlight %}

{% endtabs %}

## Code Snippet events

This section discusses the following code snippet events.

### CodeSnippetActivating event

This event occurs when the code snippet is to be activated.

The event handler receives an argument of type [CancellableCodeSnippetsEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CancellableCodeSnippetsEventArgs.html). The following CancellableCodeSnippetsEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Cancel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CancellableCodeSnippetsEventArgs.html#Syncfusion_Windows_Forms_Edit_CancellableCodeSnippetsEventArgs_Cancel)' | markdownify }}</td><td>
Indicates whether the action has to be canceled or not.</td></tr>
<tr>
<td>
{{ '[CodeSnippet](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CodeSnippetsEventArgs.html#Syncfusion_Windows_Forms_Edit_CodeSnippetsEventArgs__ctor_Syncfusion_Windows_Forms_Edit_Utils_CodeSnippets_CodeSnippet_)' | markdownify }}
</td><td>
Indicates the currently activated code snippet.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_CodeSnippetActivating(object sender, Syncfusion.Windows.Forms.Edit.CancellableCodeSnippetsEventArgs e)

{

   // The below line will be displayed in the output window at runtime.

   Console.WriteLine(" CodeSnippetActivating event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_CodeSnippetActivating(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.CancellableCodeSnippetsEventArgs)

   ' The below line will be displayed in the output window at runtime.

   Console.WriteLine(" CodeSnippetActivating event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### CodeSnippetDeactivating event

This event occurs when the code snippet is to be deactivated.

The event handler receives an argument of type [CodeSnippetsEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CodeSnippetsEventArgs.html). The following CodeSnippetsEventArgs member provides specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[CodeSnippet](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CodeSnippetsEventArgs.html)' | markdownify }}</td><td>
Code snippet that is currently activated</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_CodeSnippetDeactivating(object sender, Syncfusion.Windows.Forms.Edit.CodeSnippetsEventArgs e)

{

   // The below line will be displayed in the output window at runtime.

   Console.WriteLine(" CodeSnippetDeactivating event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_CodeSnippetDeactivating(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.CodeSnippetsEventArgs)

   ' The below line will be displayed in the output window at runtime.

   Console.WriteLine(" CodeSnippetDeactivating event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### CodeSnippetTemplateTextChanging event

This event is raised when the text of the code snippet template member is to be changed.

The event handler receives an argument of type [CodeSnippetTemplateTextChangingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CodeSnippetTemplateTextChangingEventArgs.html). The following CodeSnippetTemplateTextChangingEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Cancel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CancellableCodeSnippetsEventArgs.html#Syncfusion_Windows_Forms_Edit_CancellableCodeSnippetsEventArgs_Cancel)' | markdownify }}</td><td>
Indicates whether the action has to be canceled or not.</td></tr>
<tr>
<td>
{{ '[CodeSnippet](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CodeSnippetsEventArgs.html#Syncfusion_Windows_Forms_Edit_CodeSnippetsEventArgs__ctor_Syncfusion_Windows_Forms_Edit_Utils_CodeSnippets_CodeSnippet_)' | markdownify }}
</td><td>
Indicates currently activated code snippet.</td></tr>
<tr>
<td>
{{ '[NewText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CodeSnippetTemplateTextChangingEventArgs.html#Syncfusion_Windows_Forms_Edit_CodeSnippetTemplateTextChangingEventArgs_NewText)' | markdownify }}</td><td>
Indicates the new text.</td></tr>
<tr>
<td>
{{ '[TemplateMemberName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CodeSnippetTemplateTextChangingEventArgs.html#Syncfusion_Windows_Forms_Edit_CodeSnippetTemplateTextChangingEventArgs_TemlateMemberName)' | markdownify }}</td><td>
Indicates the name of template member to be changed.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

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


{% highlight VB %}

P' Change the text of all template members with defined name of currently activated code snippet.

Me.editControl1.ChangeSnippetTemplateText(" old member name", " new text")

' Handle the CodeSnippetTemplateTextChanging event.

Me.editControl1.CodeSnippetTemplateTextChanging+=New Syncfusion.Windows.Forms.Edit.CodeSnippetTemplateTextChangingEventHandler(editControl1_CodeSnippetTemplateTextChanging)

Private Sub editControl1_CodeSnippetTemplateTextChanging(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.CodeSnippetTemplateTextChangingEventArgs)

   ' The below line will be displayed in the output window at runtime.

   Console.WriteLine(" CodeSnippetTemplateTextChanging event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### NewSnippetMemberHighlighting event

This event is raised when a new code snippet member is highlighted.

The event handler receives an argument of type [NewSnippetMemberHighlightingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.NewSnippetMemberHighlightingEventArgs.html). The following NewSnippetMemberHighlightingEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Cancel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CancellableCodeSnippetsEventArgs.html#Syncfusion_Windows_Forms_Edit_CancellableCodeSnippetsEventArgs_Cancel)' | markdownify }}</td><td>
Indicates whether the action has to be canceled or not.</td></tr>
<tr>
<td>
{{ '[CodeSnippet](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CodeSnippetsEventArgs.html#Syncfusion_Windows_Forms_Edit_CodeSnippetsEventArgs__ctor_Syncfusion_Windows_Forms_Edit_Utils_CodeSnippets_CodeSnippet_)' | markdownify }}</td><td>
Indicates the currently activated code snippet.</td></tr>
<tr>
<td>
{{ '[NewSnippetMember](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.NewSnippetMemberHighlightingEventArgs.html#Syncfusion_Windows_Forms_Edit_NewSnippetMemberHighlightingEventArgs_NewSnippetMember)' | markdownify }}</td><td>
Indicates the snippet member that has to be highlighted.</td></tr>
<tr>
<td>
{{ '[OldSnippetMember](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.NewSnippetMemberHighlightingEventArgs.html#Syncfusion_Windows_Forms_Edit_NewSnippetMemberHighlightingEventArgs_OldSnippetMember)' | markdownify }}</td><td>
Indicates the previously highlighted snippet member.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_NewSnippetMemberHighlighting(object sender, Syncfusion.Windows.Forms.Edit.NewSnippetMemberHighlightingEventArgs e)

{

   // The below line will be displayed in the output window at runtime.

   Console.WriteLine(" NewSnippetMemberHighlighting event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_NewSnippetMemberHighlighting(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.NewSnippetMemberHighlightingEventArgs)

   ' The below line will be displayed in the output window at runtime.

   Console.WriteLine(" NewSnippetMemberHighlighting event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## ConfigurationChanged event

This event is fired on changing the configuration of the EditControl. The configuration can be set by using the [ApplyConfiguration](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ApplyConfiguration_Syncfusion_Windows_Forms_Edit_Enums_KnownLanguages_) function.

The event handler receives an argument of type [EventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.eventargs?view=net-5.0).

{% tabs %}

{% highlight C# %}

this.editControl1.ConfigurationChanged+=new EventHandler(editControl1_ConfigurationChanged);

this.editControl1.ApplyConfiguration("XML");

private void editControl1_ConfigurationChanged(object sender, EventArgs e)

{

   this.editControl1.ApplyConfiguration("XML");

}

{% endhighlight %}


{% highlight VB %}

AddHandler Me.editControl1.ConfigurationChanged, AddressOf editControl1_ConfigurationChanged 

Me.editControl1.ApplyConfiguration("XML")

Private Sub editControl1_ConfigurationChanged(ByVal sender As Object, ByVal e As EventArgs)

   Console.WriteLine(" ConfigurationChanged event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## Collapse events

This section explains the following collapse events.

### CollapsedAll event

This event is raised when the [CollapseAll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_CollapseAll) function is called.

The event handler receives an argument of type [EventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.eventargs?view=net-5.0).

{% tabs %}

{% highlight C# %}

// Handle the CollapsedAll event.

this.editControl1.CollapsedAll+=new EventHandler(editControl1_CollapsedAll);

// Call the CollapseAll function.

this.editControl1.CollapseAll();

private void editControl1_CollapsedAll(object sender, EventArgs e)

{ 

   // The below line will be displayed 

   Console.WriteLine(" CollapsedAll event is raised ");

}

{% endhighlight %}


{% highlight VB %}

' Handle the CollapsedAll event.

AddHandler Me.editControl1.CollapsedAll, AddressOf editControl1_CollapsedAll

' Call the CollapseAll function.

Me.editControl1.CollapseAll()

Private Sub editControl1_CollapsedAll(ByVal sender As Object, ByVal e As EventArgs)

   Console.WriteLine(" CollapsedAll event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### CollapsingAll event

This event is raised when the [CollapseAll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_CollapseAll) function is called.

The event handler receives an argument of type [CancelEventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.componentmodel.canceleventargs?view=net-5.0). The following CancelEventArgs member provides specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Cancel](https://learn.microsoft.com/en-us/dotnet/api/system.componentmodel.canceleventargs.cancel?view=net-5.0)' | markdownify }}</td><td>
Specifies a value indicating whether the event should be canceled or not.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Handle the CollapsingAll event.

this.editControl1.CollapsingAll+=new EventHandler(editControl1_CollapsingAll);

// Call the CollapseAll function.

this.editControl1.CollapseAll();

private void editControl1_CollapsingAll(object sender, CancelEventArgs e)

{

   // The below given line will be displayed in the output window at runtime.

   Console.WriteLine(" CollapsingAll event is raised ");

   // Cancels the event.

   e.Cancel = true;

}

{% endhighlight %}


{% highlight VB %}

' Handle the CollapsingAll event.

AddHandler Me.editControl1.CollapsingAll, AddressOf editControl1_CollapsingAll

' Call the CollapseAll function.

Me.editControl1.CollapseAll()

Private Sub editControl1_CollapsingAll(ByVal sender As Object, ByVal e As CancelEventArgs)

   ' The below given line will be displayed in the output window at runtime.

   Console.WriteLine(" CollapsingAll event is raised ")

   ' Cancels the event.

   e.Cancel = True

End Sub

{% endhighlight %}

{% endtabs %}

## ContextChoice events

The EditControl provides the following set of events for performing ContextChoice operations:

    * ContextChoiceBeforeOpen
    * ContextChoiceSelectedTextInsert
    * ContextChoiceClose
    * ContextChoiceItemSelected
    * ContextChoiceUpdate

### ContextChoiceUpdate event

This event occurs when the context choice list is updated.

The event handler receives an argument of type [IContextChoiceController](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController.html). The following IContextChoiceController members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Dropper](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController.html#Syncfusion_Windows_Forms_Edit_Interfaces_IContextChoiceController_Dropper)' | markdownify }}</td><td>
Specifies the dropping lexem.</td></tr>
<tr>
<td>
{{ '[ExtendItemsFilteringString](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController.html#Syncfusion_Windows_Forms_Edit_Interfaces_IContextChoiceController_ExtendItemsFilteringString)' | markdownify }}</td><td>
Specifies whether the autocomplete string should be extended or not.</td></tr>
<tr>
<td>
{{ '[FormSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController.html#Syncfusion_Windows_Forms_Edit_Interfaces_IContextChoiceController_FormSize)' | markdownify }}</td><td>
Specifies size of the context choice form.</td></tr>
<tr>
<td>
{{ '[Images](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController.html#Syncfusion_Windows_Forms_Edit_Interfaces_IContextChoiceController_Images)' | markdownify }}</td><td>
Gets the collection of INamedImage items.</td></tr>
<tr>
<td>
{{ '[IsVisible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController.html#Syncfusion_Windows_Forms_Edit_Interfaces_IContextChoiceController_IsVisible)' | markdownify }}</td><td>
Specifies whether the context choice window associated with current controller is visible or not.</td></tr>
<tr>
<td>
{{ '[Items](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController.html#Syncfusion_Windows_Forms_Edit_Interfaces_IContextChoiceController_Items)' | markdownify }}</td><td>
Gets the collection of context choice items.</td></tr>
<tr>
<td>
{{ '[LexemBeforeDropper](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController.html#Syncfusion_Windows_Forms_Edit_Interfaces_IContextChoiceController_LexemBeforeDropper)' | markdownify }}</td><td>
Specifies the lexem situated before dropper.</td></tr>
<tr>
<td>
{{ '[SelectedItem](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController.html#Syncfusion_Windows_Forms_Edit_Interfaces_IContextChoiceController_SelectedItem)' | markdownify }}</td><td>
Specifies the currently selected item.</td></tr>
<tr>
<td>
{{ '[UseAutocomplete](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController.html#Syncfusion_Windows_Forms_Edit_Interfaces_IContextChoiceController_UseAutocomplete)' | markdownify }}</td><td>
Specifies whether the autocomplete technique should be used with current context choice or not.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

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


{% highlight VB %}

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

{% endtabs %}

### ContextChoiceOpen event

This event is discussed in the Context Choice topic.

### ContextChoiceRightClick event

This event is raised when the context choice item is right-clicked.

The event handler receives an argument of type [ContextChoiceItemEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.ContextChoiceItemEventArgs.html). The following CancelableCodeSnippetsEventArgs member provides specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Item](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.ContextChoiceItemEventArgs.html#Syncfusion_Windows_Forms_Edit_ContextChoiceItemEventArgs_Item)' | markdownify }}</td><td>
Specifies the underlying ContextChoiceItem.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_ContextChoiceRightClick(Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController sender, Syncfusion.Windows.Forms.Edit.ContextChoiceItemEventArgs e)

{

   e.Item.ForeColor = System.Drawing.Color.Maroon;

   e.Item.BackColor = System.Drawing.Color.MistyRose;

   MessageBox.Show(" ContextChoiceRightClick event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_ContextChoiceRightClick(ByVal sender As Syncfusion.Windows.Forms.Edit.Interfaces.IContextChoiceController, ByVal e As Syncfusion.Windows.Forms.Edit.ContextChoiceItemEventArgs)

   e.Item.ForeColor = System.Drawing.Color.Maroon

   e.Item.BackColor = System.Drawing.Color.MistyRose

   MessageBox.Show(" ContextChoiceRightClick event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## ContextPrompt events

The EditControl provides the following set of events for performing `ContextPrompt` operations:

      * ContextPromptBeforeOpen 
      * ContextPromptClose 
      * ContextPromptOpen 
      * ContextPromptSelectionChanged
      * ContextPromptUpdate

These events are discussed in the Context Prompt topic.

## CursorPositionChanged event

This event is raised when the current cursor position is changed.

The event handler receives an argument of type [EventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.eventargs?view=net-5.0).

{% tabs %}

{% highlight C# %}

private void editControl1_CursorPositionChanged(object sender, EventArgs e)

{

   MessageBox.Show(" CurrentCursorPosition event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_CursorPositionChanged(ByVal sender As Object, ByVal e As EventArgs)

   MessageBox.Show(" CursorPositionChanged event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## Expand events

This section discusses the expand events as follows.

### ExpandedAll event

This event is raised when the [ExpandAll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ExpandAll) function is called.

The event handler receives an argument of type [EventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.eventargs?view=net-5.0).

{% tabs %}

{% highlight C# %}

// Handle the ExpandedAll event.

this.editControl1.ExpandedAll+=new EventHandler(editControl1_ExpandedAll);

// Call the ExpandAll function.

this.editControl1.ExpandAll();

private void editControl1_ExpandedAll(object sender, EventArgs e)

{ 

   // The below line will be displayed in the output window at runtime.

   Console.WriteLine(" ExpandedAll event is raised ");

}

{% endhighlight %}


{% highlight VB %}

' Handle the ExpandedAll event.

AddHandler Me.editControl1.ExpandedAll, AddressOf editControl1_ExpandedAll

' Call the ExpandAll function.

Me.editControl1.ExpandAll()

Private Sub editControl1_ExpandedAll(ByVal sender As Object, ByVal e As EventArgs)

   ' The below line will be displayed in the output window at runtime

   Console.WriteLine(" ExpandedAll event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### ExpandingAll event

This event is raised when the [ExpandAll](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ExpandAll) function is called.

The event handler receives an argument of type [CancelEventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.componentmodel.canceleventargs?view=net-5.0). The following CancelableEventArgs member provides specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Cancel](https://docs.microsoft.com/en-us/dotnet/api/system.componentmodel.canceleventargs.cancel?view=net-5.0)' | markdownify }}</td><td>
Specifies a value indicating whether the event should be canceled or not.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

// Handle the ExpandingAll event.

this.editControl1.ExpandingAll+=new EventHandler(editControl1_ExpandingAll);

// Call the ExpandAll function.

this.editControl1.ExpandAll();

private void editControl1_ExpandingAll(object sender, CancelEventArgs e)

{

   // The below given line will be displayed in the output window at runtime.

   Console.WriteLine(" ExpandingAll event is raised ");

   // Cancels the event.

   e.Cancel = true;

}

{% endhighlight %}


{% highlight VB %}

' Handle the ExpandingAll event.

AddHandler Me.editControl1.ExpandingAll, AddressOf editControl1_ExpandingAll

' Call the ExpandAll function.

Me.editControl1.ExpandAll()

Private Sub editControl1_ExpandingAll(ByVal sender As Object, ByVal e As CancelEventArgs)

   ' The below given line will be displayed in the output window at runtime.

   Console.WriteLine(" CollapsingAll event is raised ")

   ' Cancels the event.

   e.Cancel = True

End Sub

{% endhighlight %}

{% endtabs %}

## Find event

This event will be triggered once new match is found in `FindAndReplaceDialogBox` through the Find Next button.

{% tabs %}

{% highlight C# %}

private void EditControl1_Find(object sender, EventArgs e)
{
   // You can see the below line in output window during runtime.

   Console.WriteLine("Find event is raised")
}

{% endhighlight %}


{% highlight VB %}

Private Sub EditControl1_Find(ByVal sender As Object, ByVal e As EventArgs)

   ' You can see the below line in output window during runtime.

   Console.WriteLine("Find event is raised")   

End Sub

{% endhighlight %}

{% endtabs %}

## Indicator Margin event

This section discusses the following indicator margin events.

### IndicatorMarginClick event

This event is raised when the user clicks the indicator margin area.

The event handler receives an argument of type [IndicatorClickEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.IndicatorClickEventArgs.html). The following IndicatorClickEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Bookmark](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.IndicatorClickEventArgs.html#Syncfusion_Windows_Forms_Edit_IndicatorClickEventArgs_Bookmark)' | markdownify }}
</td><td>
Gets clicked custom bookmark if available.</td></tr>
<tr>
<td>
{{ '[LineIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.IndicatorClickEventArgs.html#Syncfusion_Windows_Forms_Edit_IndicatorClickEventArgs_LineIndex)' | markdownify }}</td><td>
Gets clicked line index.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_IndicatorMarginClick(object sender, Syncfusion.Windows.Forms.Edit.IndicatorClickEventArgs e)

{

   Console.WriteLine(" IndicatorMarginClick event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_IndicatorMarginClick(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.IndicatorClickEventArgs)

   Console.WriteLine(" IndicatorMarginClick event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### IndicatorMarginDoubleClick event

This event is raised when the user double-clicks the indicator margin area.

The event handler receives an argument of type [IndicatorClickEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.IndicatorClickEventArgs.html). The following IndicatorClickEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Bookmark](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.IndicatorClickEventArgs.html#Syncfusion_Windows_Forms_Edit_IndicatorClickEventArgs_Bookmark)' | markdownify }}</td><td>
Gets clicked custom bookmark if available.</td></tr>
<tr>
<td>
{{ '[LineIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.IndicatorClickEventArgs.html#Syncfusion_Windows_Forms_Edit_IndicatorClickEventArgs_LineIndex)' | markdownify }}</td><td>
Gets clicked line index.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_IndicatorMarginDoubleClick(object sender, Syncfusion.Windows.Forms.Edit.IndicatorClickEventArgs e)

{

   Console.WriteLine(" IndicatorMarginDoubleClick event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_IndicatorMarginDoubleClick(ByVal sender As Object, ByVal e Syncfusion.Windows.Forms.Edit.IndicatorClickEventArgs)

   Console.WriteLine(" IndicatorMarginDoubleClick event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### DrawLineMark event

This event occurs when a custom line mark should be drawn.

The event handler receives an argument of type [DrawLineMarkEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.DrawLineMarkEventArgs.html). The following DrawLineMarkEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[CustomDraw](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.DrawLineMarkEventArgs.html#Syncfusion_Windows_Forms_Edit_DrawLineMarkEventArgs_CustomDraw)' | markdownify }}</td><td>
If set to `true`, user handles drawing of the bookmark.</td></tr>
<tr>
<td>
{{ '[Graphics](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.DrawLineMarkEventArgs.html#Syncfusion_Windows_Forms_Edit_DrawLineMarkEventArgs__ctor_System_Drawing_Graphics_System_Drawing_Rectangle_System_Int32_System_Int32_)' | markdownify }}</td><td>
Draws a graphics object.</td></tr>
<tr>
<td>
{{ '[MarkRect](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.DrawLineMarkEventArgs.html#Syncfusion_Windows_Forms_Edit_DrawLineMarkEventArgs_MarkRect)' | markdownify }}</td><td>
Draws a rectangle where line mark should be drawn.</td></tr>
<tr>
<td>
{{ '[PhysicalLine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.DrawLineMarkEventArgs.html#Syncfusion_Windows_Forms_Edit_DrawLineMarkEventArgs_PhysicalLine)' | markdownify }}</td><td>
Draws a virtual line number.</td></tr>
<tr>
<td>
{{ '[VirtualLine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.DrawLineMarkEventArgs.html#Syncfusion_Windows_Forms_Edit_DrawLineMarkEventArgs_VirtualLine)' | markdownify }}</td><td>
Draws a physical line number.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

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


{% highlight VB %}

Private Sub editControl1_DrawLineMark(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.DrawLineMarkEventArgs)

   If e.VirtualLine Mod 2 = 0 Then

     Dim brush As Brush = New Drawing2D.LinearGradientBrush(e.MarkRect, Color.Red, Color.Yellow, LinearGradientMode.Vertical)

     e.Graphics.FillRectangle(brush, e.MarkRect)

     e.Graphics.DrawRectangle(Pens.IndianRed, e.MarkRect)

   End If

End Sub

{% endhighlight %}

{% endtabs %}

![Edit-Control-Events_img1](Edit-Control-Events_images/Edit-Control-Events_img1.jpeg)

## InsertModeChanged event

This event is fired when the value of the InsertMode property changes. The InsertMode property specifies the insert mode state.

The event handler receives an argument of type [EventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.eventargs?redirectedfrom=MSDN&view=net-5.0).

{% tabs %}

{% highlight C# %}

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


{% highlight VB %}

' Handle the InsertModeChanged event.

AddHandler Me.editControl1.InsertModeChanged, AddressOf editControl1_InsertModeChanged 

' Set the value of the InsertMode property.

Me.editControl1.InsertMode = False

Private Sub editControl1_InsertModeChanged(ByVal sender As Object, ByVal e As EventArgs)

   'The below statement can be seen in the output window at runtime.

   Console.WriteLine(" InsertModeChanged event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## LanguageChanged event

This event occurs when the current parser language is changed.

The event handler receives an argument of type [EventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.eventargs?view=net-5.0).

{% tabs %}

{% highlight C# %}

private void editControl1_LanguageChanged(object sender, EventArgs e)

{

   Console.WriteLine(" LanguageChanged event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_LanguageChanged(ByVal sender As Object, ByVal e As EventArgs)

   Console.WriteLine(" LanguageChanged event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## MenuFill event

This event is discussed in the Customizable Context Menu topic.

## Operation events

This section discusses the following operation events.

### OperationStarted event

This event occurs when an operation starts while collapsing and expanding the block of code.

The event handler receives an argument of type [ILongOperation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation.html). The following ILongOperation members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[ID](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation.html#Syncfusion_Windows_Forms_Edit_Interfaces_ILongOperation_ID)' | markdownify }}
</td><td>
Specifies the ID of the operation.</td></tr>
<tr>
<td>
{{ '[IsRunning](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation.html#Syncfusion_Windows_Forms_Edit_Interfaces_ILongOperation_IsRunning)' | markdownify }}</td><td>
Specifies a value indicating whether the operation is running now or not.</td></tr>
<tr>
<td>
{{ '[Name](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation.html#Syncfusion_Windows_Forms_Edit_Interfaces_ILongOperation_Name)' | markdownify }}</td><td>
Specifies the name of the operation.</td></tr>
<tr>
<td>
{{ '[RunningTime](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation.html#Syncfusion_Windows_Forms_Edit_Interfaces_ILongOperation_RunningTime)' | markdownify }}</td><td>
Specifies the time of the operation activity.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_OperationStarted(Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation operation)

{

   Console.WriteLine(" OperationStarted event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_OperationStarted(ByVal operation As Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation)

   Console.WriteLine(" OperationStarted event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### OperationStopped event

This event occurs when an operation ends.

The event handler receives an argument of type [ILongOperation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation.html). The following ILongOperation members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[ID](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation.html#Syncfusion_Windows_Forms_Edit_Interfaces_ILongOperation_ID)' | markdownify }}
</td><td>
Specifies the ID of the operation.</td></tr>
<tr>
<td>
{{ '[IsRunning](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation.html#Syncfusion_Windows_Forms_Edit_Interfaces_ILongOperation_IsRunning)' | markdownify }}</td><td>
Specifies a value indicating whether the operation is running now or not.</td></tr>
<tr>
<td>
{{ '[Name](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation.html#Syncfusion_Windows_Forms_Edit_Interfaces_ILongOperation_Name)' | markdownify }}</td><td>
Specifies the name of the operation.</td></tr>
<tr>
<td>
{{ '[RunningTime](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation.html#Syncfusion_Windows_Forms_Edit_Interfaces_ILongOperation_RunningTime)' | markdownify }}</td><td>
Specifies the time of the operation activity.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_OperationStopped(Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation operation)

{

   Console.WriteLine(" OperationStopped event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_OperationStopped(ByVal operation As Syncfusion.Windows.Forms.Edit.Interfaces.ILongOperation)

   Console.WriteLine(" OperationStopped event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## Outlining event

This section discusses the following outlining events.

### OutliningBeforeCollapse event

This event is raised before a region is about to collapse.

The event handler receives an argument of type [OutliningEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.OutliningEventArgs.html). The following OutliningEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Cancel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.OutliningEventArgs.html#Syncfusion_Windows_Forms_Edit_OutliningEventArgs_Cancel)' | markdownify }}</td><td>
Specifies a value indicating whether the user cancels the underlying event or not.</td></tr>
<tr>
<td>
{{ '[CollapsedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_CollapsedText)' | markdownify }}</td><td>
Specifies the CollapsedText.</td></tr>
<tr>
<td>
{{ '[CollapseName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_CollapseName)' | markdownify }}</td><td>
Specifies the CollapseName.</td></tr>
<tr>
<td>
{{ '[Collapser](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_Collapser)' | markdownify }}</td><td>
Specifies the Collapser.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_OutliningBeforeCollapse(object sender, Syncfusion.Windows.Forms.Edit.OutliningEventArgs e)

{

   Console.WriteLine(" OutliningBeforeCollapse event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_OutliningBeforeCollapse(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.OutliningEventArgs)

   Console.WriteLine(" OutliningBeforeCollapse event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### OutliningBeforeExpand event

This event is raised before a region is about to expand.

The event handler receives an argument of type [OutliningEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.OutliningEventArgs.html). The following OutliningEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Cancel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.OutliningEventArgs.html#Syncfusion_Windows_Forms_Edit_OutliningEventArgs_Cancel)' | markdownify }}</td><td>
Specifies a value indicating whether the user cancels the underlying event or not.</td></tr>
<tr>
<td>
{{ '[CollapsedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_CollapsedText)' | markdownify }}</td><td>
Specifies the CollapsedText.</td></tr>
<tr>
<td>
{{ '[CollapseName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_CollapseName)' | markdownify }}</td><td>
Specifies the CollapseName.</td></tr>
<tr>
<td>
{{ '[Collapser](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_Collapser)' | markdownify }}</td><td>
Specifies the Collapser.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_OutliningBeforeExpand(object sender, Syncfusion.Windows.Forms.Edit.OutliningEventArgs e)

{

   Console.WriteLine(" OutliningBeforeExpand event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_OutliningBeforeExpand(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.OutliningEventArgs)

   Console.WriteLine(" OutliningBeforeExpand event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### OutliningCollapse event

This event is raised when a region collapses.

The event handler receives an argument of type [CollapseEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html). The following CollapseEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[CollapsedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_CollapsedText)' | markdownify }}</td><td>
Specifies the CollapsedText.</td></tr>
<tr>
<td>
{{ '[CollapseName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_CollapseName)' | markdownify }}</td><td>
Specifies the CollapseName.</td></tr>
<tr>
<td>
{{ '[Collapser](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_Collapser)' | markdownify }}</td><td>
Specifies the Collapser.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_OutliningCollapse(object sender, Syncfusion.Windows.Forms.Edit.CollapseEventArgs e)

{

   Console.WriteLine(" OutliningCollapse event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_OutliningCollapse(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.CollapseEventArgs)

   Console.WriteLine(" OutliningBeforeCollapse event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### OutliningExpand event

This event is raised when a region expands.

The event handler receives an argument of type [CollapseEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html). The following CollapseEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[CollapsedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_CollapsedText)' | markdownify }}</td><td>
Specifies the CollapsedText.</td></tr>
<tr>
<td>
{{ '[CollapseName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_CollapseName)' | markdownify }}</td><td>
Specifies the CollapseName.</td></tr>
<tr>
<td>
{{ '[Collapser](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_Collapser)' | markdownify }}</td><td>
Specifies the Collapser.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_OutliningExpand(object sender, Syncfusion.Windows.Forms.Edit.CollapseEventArgs e)

{

   Console.WriteLine(" OutliningExpand event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_OutliningExpand(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.CollapseEventArgs)

   Console.WriteLine(" OutliningExpand event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### OutliningTooltipBeforePopup event

This event is discussed in the Outlining ToolTip topic.

### OutliningTooltipClose event

This event is raised when the outlining tooltip is closed.

The event handler receives an argument of type [CollapseEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html). The following CollapseEventArgs members provide a specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[CollapsedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_CollapsedText)' | markdownify }}</td><td>
Specifies the CollapsedText.</td></tr>
<tr>
<td>
{{ '[CollapseName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_CollapseName)' | markdownify }}</td><td>
Specifies the CollapseName.</td></tr>
<tr>
<td>
{{ '[Collapser](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_Collapser)' | markdownify }}</td><td>
Specifies the Collapser.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_OutliningTooltipClose(object sender, Syncfusion.Windows.Forms.Edit.CollapseEventArgs e)

{

   Console.WriteLine(" OutliningTooltipClose event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_OutliningTooltipClose(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.CollapseEventArgs)

   Console.WriteLine(" OutliningTooltipClose event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### OutliningTooltipPopup event

This event is raised when the outlining tooltip is shown.

The event handler receives an argument of type [CollapseEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html). The following CollapseEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[CollapsedText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_CollapsedText)' | markdownify }}</td><td>
Specifies the CollapsedText.</td></tr>
<tr>
<td>
{{ '[CollapseName](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_CollapseName)' | markdownify }}</td><td>
Specifies the CollapseName.</td></tr>
<tr>
<td>
{{ '[Collapser](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.CollapseEventArgs.html#Syncfusion_Windows_Forms_Edit_CollapseEventArgs_Collapser)' | markdownify }}</td><td>
Specifies the Collapser.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_OutliningTooltipPopup(object sender, Syncfusion.Windows.Forms.Edit.CollapseEventArgs e)

{

   Console.WriteLine(" OutliningTooltipPopup event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_OutliningTooltipPopup(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.CollapseEventArgs)

   Console.WriteLine(" OutliningTooltipPopup event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## Print events

It has the following events.

### PrintHeader event

This event is discussed in the Printing topic.

### PrintFooter event

This event is discussed in the Printing topic.

## ReadOnlyChanged event

This event occurs when the [ReadOnly](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ReadOnly) property is changed. The ReadOnly property specifies whether the EditControl is in the read-only mode or not.

The event handler receives an argument of type [EventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.eventargs?view=net-5.0).

{% tabs %}

{% highlight C# %}

// Handle the ReadOnlyChanged event.

this.editControl1.ReadOnlyChanged+=new EventHandler(editControl1_ReadOnlyChanged);

// Set the ReadOnly property to True.

this.editControl1.ReadOnly = true;

private void editControl1_ReadOnlyChanged(object sender, EventArgs e)

{

   Console.WriteLine(" ReadOnlyChanged event is raised ");

}

{% endhighlight %}


{% highlight VB %}

' Handle the ReadOnlyChanged event.

AddHandler Me.editControl1.ReadOnlyChanged, AddressOf editControl1_ReadOnlyChanged

' Set the ReadOnly property to True.

Me.editControl1.ReadOnly = True

Private Sub editControl1_ReadOnlyChanged(ByVal sender As Object, ByVal e As EventArgs)

   Console.WriteLine(" ReadOnlyChanged event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## RegisteringDefaultKeyBindings event

This event is discussed in the Keystroke - Action Combinations Binding topic.

## RegisteringKeyCommands event

This event is discussed in the Keystroke - Action Combinations Binding topic.

## Save events

This section discusses the following events that are generated when the user saves the files and streams with data loss.

### SaveFileWithDataLoss event

This event is raised when user tries to save the files with data loss.

The event handler receives an argument of type [SaveWithDataLosingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.SaveWithDataLosingEventArgs.html). The following SaveWithDataLosingEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[SaveWithLoss](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.SaveWithDataLosingEventArgs.html#Syncfusion_Windows_Forms_Edit_SaveWithDataLosingEventArgs_SaveWithLoss)' | markdownify }}</td><td>
Specifies a value that indicates whether data has to be saved with loss or not.</td></tr>
<tr>
<td>
{{ '[UserHandling](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.SaveWithDataLosingEventArgs.html#Syncfusion_Windows_Forms_Edit_SaveWithDataLosingEventArgs_UserHandling)' | markdownify }}</td><td>
Specifies a value that indicates whether the user handled this event or not.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_SaveFileWithDataLoss(object sender, Syncfusion.Windows.Forms.Edit.SaveWithDataLosingEventArgs e)

{

   e.SaveWithLoss = true;

   e.UserHandling = true;

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_SaveFileWithDataLoss(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.SaveWithDataLosingEventArgs)

   e.SaveWithLoss = True

   e.UserHandling = True

End Sub

{% endhighlight %}

{% endtabs %}

### SaveStreamWithDataLoss event

This event is raised when the user tries to save the streams with data loss.

The event handler receives an argument of type [SaveWithDataLosingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.SaveWithDataLosingEventArgs.html). The following SaveWithDataLosingEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[SaveWithLoss](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.SaveWithDataLosingEventArgs.html#Syncfusion_Windows_Forms_Edit_SaveWithDataLosingEventArgs_SaveWithLoss)' | markdownify }}</td><td>
Specifies a value that indicates whether the data has to be saved with loss or not.</td></tr>
<tr>
<td>
{{ '[UserHandling](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.SaveWithDataLosingEventArgs.html#Syncfusion_Windows_Forms_Edit_SaveWithDataLosingEventArgs_UserHandling)' | markdownify }}</td><td>
Specifies a value that indicates whether the user handled this event or not.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_SaveStreamWithDataLoss(object sender, Syncfusion.Windows.Forms.Edit.SaveWithDataLosingEventArgs e)

{

   e.SaveWithLoss = true;

   e.UserHandling = true;

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_SaveStreamWithDataLoss(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.SaveWithDataLosingEventArgs)

   e.SaveWithLoss = True

   e.UserHandling = True

End Sub

{% endhighlight %}

{% endtabs %}

## Scroll events

This section discusses the following events that are generated when horizontal and vertical scrolling takes place.

### HorizontalScroll event

This event is raised when user scrolls the window horizontally.

The event handler receives an argument of type [ScrollEventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.scrolleventargs?view=net-5.0). The following ScrollEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[NewValue](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.scrolleventargs.newvalue?view=net-5.0)' | markdownify }}</td><td>
Specifies the new System.Windows.Forms.ScrollBar.Value for the scrollbar.</td></tr>
<tr>
<td>
{{ '[OldValue](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.scrolleventargs.oldvalue?view=net-5.0)' | markdownify }}</td><td>
Specifies the old System.Windows.Forms.ScrollBar.Value for the scrollbar.</td></tr>
<tr>
<td>
{{ '[ScrollOrientation](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.scrolleventargs.scrollorientation?view=net-5.0)' | markdownify }}</td><td>
Gets the scrollbar orientation that raised the scroll event.</td></tr>
<tr>
<td>
{{ '[Type](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.scrolleventargs.type?view=net-5.0)' | markdownify }}</td><td>
Gets the type of scroll event that occurred.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_HorizontalScroll(object sender, ScrollEventArgs e)

{

   Console.WriteLine(" HorizontalScroll event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_HorizontalScroll(ByVal sender As Object, ByVal e As ScrollEventArgs)

   Console.WriteLine(" HorizontalScroll event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### VerticalScroll event

This event is raised when the user scrolls the window vertically.

The event handler receives an argument of type [ScrollEventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.scrolleventargs?view=net-5.0). The following ScrollEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[NewValue](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.scrolleventargs.newvalue?view=net-5.0)' | markdownify }}</td><td>
Specifies the new System.Windows.Forms.ScrollBar.Value for the scrollbar.</td></tr>
<tr>
<td>
{{ '[OldValue](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.scrolleventargs.oldvalue?view=net-5.0)' | markdownify }}</td><td>
Specifies the old System.Windows.Forms.ScrollBar.Value for the scrollbar.</td></tr>
<tr>
<td>
{{ '[ScrollOrientation](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.scrolleventargs.scrollorientation?view=net-5.0)' | markdownify }}</td><td>
Gets the scrollbar orientation that raised the scroll event.</td></tr>
<tr>
<td>
{{ '[Type](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.scrolleventargs.type?view=net-5.0)' | markdownify }}</td><td>
Gets the type of scroll event that occurred.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_VerticalScroll(object sender, ScrollEventArgs e)

{

   Console.WriteLine(" VerticalScroll event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_VerticalScroll(ByVal sender As Object, ByVal e As ScrollEventArgs)

   Console.WriteLine(" VerticalScroll event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## SelectionChanged event

This event is raised when the text selection has been changed.

The event handler receives an argument of type [EventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.eventargs?view=net-5.0).

{% tabs %}

{% highlight C# %}

private void editControl1_SelectionChanged(object sender, EventArgs e)

{

   MessageBox.Show(" SelectionChanged event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_SelectionChanged(ByVal sender As Object, ByVal e As EventArgs)

   MessageBox.Show(" SelectionChanged event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## SingleLineChanged event

This event is fired when the value of the [SingleLineMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_SingleLineMode) property is changed. The `SingleLineMode` property specifies whether the single line mode is enabled or not.

The event handler receives an argument of type [EventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.eventargs?view=net-5.0).

{% tabs %}

{% highlight C# %}

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


{% highlight VB %}

' Handle the SingleLineChanged event. 

AddHandler Me.editControl1.SingleLineChanged, AddressOf editControl1_SingleLineChanged 

' Set the SingleLineMode property to True. 

Me.editControl1.SingleLineMode = True 

Private Sub editControl1_SingleLineChanged(ByVal sender As Object, ByVal e As EventArgs)

   ' The below statement can be seen in the output window at runtime.

   Console.WriteLine(" SingleLineChanged event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## Text events

This section discusses the following text events:

* TextChanged
* TextChanging

### TextChanged event

This event is fired when the text in the EditControl is changed.

The event handler receives an argument of type [EventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.eventargs?view=net-5.0).

{% tabs %}

{% highlight C# %}

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


{% highlight VB %}

' Handle the TextChanged event.

AddHandler Me.editControl1.TextChanged, AddressOf editControl1_TextChanged 

' Set the text of the EditControl.

Me.editControl1.Text = "Sample Text"

Private Sub editControl1_TextChanged(ByVal sender As Object, ByVal e As EventArgs)

   ' The below statement can be seen in the output window at runtime.

   Console.WriteLine(" TextChanged event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### TextChanging event

This event is raised when the text is to be changed.

The event handler receives an argument of type [TextChangingEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.TextChangingEventArgs.html). The following TextChangingEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Cancel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.TextChangingEventArgs.html#Syncfusion_Windows_Forms_Edit_TextChangingEventArgs_Cancel)' | markdownify }}</td><td>
Specifies the value indicating whether the text change has been canceled.</td></tr>
<tr>
<td>
{{ '[StartColumn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.TextChangedEventArgs.html#Syncfusion_Windows_Forms_Edit_TextChangedEventArgs_StartColumn)' | markdownify }}</td><td>
Specifies the virtual start column of Insert or Delete.</td></tr>
<tr>
<td>
{{ '[StartLine](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.TextChangedEventArgs.html#Syncfusion_Windows_Forms_Edit_TextChangedEventArgs_StartLine)' | markdownify }}</td><td>
Specifies the virtual start line of Insert or Delete.</td></tr>
<tr>
<td>
{{ '[Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.TextChangedEventArgs.html#Syncfusion_Windows_Forms_Edit_TextChangedEventArgs_Text)' | markdownify }}</td><td>
Specifies the text of the event.</td></tr>
<tr>
<td>
{{ '[Type](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.TextChangedEventArgs.html#Syncfusion_Windows_Forms_Edit_TextChangedEventArgs_Type)' | markdownify }}</td><td>
Specifies type of the event (Changed, Insert, or Delete).</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_TextChanging(object sender, Syncfusion.Windows.Forms.Edit.TextChangingEventArgs e)

{

   e.Type = Syncfusion.Windows.Forms.Edit.Enums.TextChange.Deleted;

   // The below statement can be seen in the output window at runtime when the text of the EditControl is deleted.

   Console.WriteLine(" TextChanging event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_TextChanging(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.TextChangingEventArgs)

   e.Type = Syncfusion.Windows.Forms.Edit.Enums.TextChange.Deleted

   ' The below statement can be seen in the output window at runtime when the text of the EditControl is deleted. 

   Console.WriteLine(" TextChanging event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

### Line Modification events

The line modification events occur whenever a line in the EditControl is subjected to a change by modifying the text of an existing line, inserting a line, or removing a line in the editor.

The following events are triggered from the control when the editor is modified.

#### Line Changed

The [LineChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html) event will be fired when any line is modified in the EditControl.

{% tabs %}

{% highlight C# %}

// Handle the LineChanged event.

this.editControl1.LineChanged  += new Syncfusion.Windows.Forms.Edit.TextChangingEventHandler(editControl1_LineChanged);

Private void editControl1_LineChanged(object sender,Syncfusion.Windows.Forms.Edit.TextChangingEventArgs e)

{ 

   //The following statement can be seen in the output window at run time.

   Console.WriteLine("Line Changed");

 }

{% endhighlight %}


{% highlight VB %}

‘Handle the LineChanged event.

AddHandler Me.editControl1.LineChanged, AddressOf Me.editControl1_LineChanged

Private Sub editControl1_LineChanged(ByVal , As object sender, ByVal e As Syncfusion.Windows.Forms.Edit.TextChangingEventArgs)

   ’The following statement can be seen in the output window at runtime.

   Console.WriteLine("Line Changed")

End Sub

{% endhighlight %}

{% endtabs %}

#### Line Inserted

The [LineInserted](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html) event will be fired when a new line is inserted in the EditControl.

{% tabs %}

{% highlight C# %}

// Handle the LineInserted event.

this.editControl1.LineInserted += new Syncfusion.Windows.Forms.Edit.LineInsertedEventHandler(editControl1_LineInserted);

private void editControl1_LineInserted(object sender,Syncfusion.Windows.Forms.Edit.LinesEventArgs e)

{

   // The following statement can be seen in the output window at run time.

   Console.WriteLine("Line Inserted");

}

{% endhighlight %}


{% highlight VB %}

‘Handle the LineInserted event.
   
AddHandler Me.editControl1.LineInserted, AddressOf Me.editControl1_LineInserted

Private Sub editControl1_LineInserted(ByVal , As object sender, ByVal e As Syncfusion.Windows.Forms.Edit.LinesEventArgs)

   ’The following statement can be seen in the output window at run time.
   
   Console.WriteLine("Line Inserted")

End Sub

{% endhighlight %}

{% endtabs %}

#### Line Deleted

The [LineDeleted](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html) event will be fired when any line is removed from the EditControl.

{% tabs %}

{% highlight C# %}

// Handle the LineDeleted event.

this.editControl1.LineDeleted += new Syncfusion.Windows.Forms.Edit.LineDeletedEventHandler(editControl1_LineDeleted);

Private void editControl1_LineDeleted(object sender, Syncfusion.Windows.Forms.Edit.LinesEventArgs e)

{

   // The following statement can be seen in the output window at run time.

   Console.WriteLine("Line Deleted");

}

{% endhighlight %}


{% highlight VB %}

‘Handle the LineDeleted event.   

AddHandler Me.editControl1.LineDeleted, AddressOf Me.editControl1_LineDeleted

Private Sub editControl1_LineDeleted(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.LinesEventArgs)

   ‘The following statement can be seen in the output window at run time.
    
   Console.WriteLine("Line Deleted")

End Sub

{% endhighlight %}

{% endtabs %}

## UnreachableTextFound event

This event occurs when the text in a hidden block is found. This block cannot be expanded if you cancel it.

The event handler receives an argument of type [UnreachableTextFoundEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.UnreachableTextFoundEventArgs.html). The following UnreachableTextFoundEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[ContinueSearch](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.UnreachableTextFoundEventArgs.html#Syncfusion_Windows_Forms_Edit_UnreachableTextFoundEventArgs_ContinueSearch)' | markdownify }}</td><td>
Indicates whether search must be continued</td></tr>
<tr>
<td>
{{ '[Point](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.UnreachableTextFoundEventArgs.html#Syncfusion_Windows_Forms_Edit_UnreachableTextFoundEventArgs_Point)' | markdownify }}</td><td>
Point of the location of unreachable text</td></tr>
<tr>
<td>
{{ '[Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.UnreachableTextFoundEventArgs.html#Syncfusion_Windows_Forms_Edit_UnreachableTextFoundEventArgs_Text)' | markdownify }}</td><td>
Searched text</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_UnreachableTextFound(object sender, Syncfusion.Windows.Forms.Edit.UnreachableTextFoundEventArgs e)

{

   Console.WriteLine(" UnreachableTextFound event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_UnreachableTextFound(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Edit.UnreachableTextFoundEventArgs)

   Console.WriteLine(" UnreachableTextFound event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## UpdateBookmarkToolTip event

This event is fired when the bookmark tooltip text is updated.

The event handler receives an argument of type [UpdateBookmarkTooltipEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.UpdateBookmarkTooltipEventArgs.html). The following UpdateBookmarkTooltipEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[Bookmark](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.UpdateBookmarkTooltipEventArgs.html#Syncfusion_Windows_Forms_Edit_UpdateBookmarkTooltipEventArgs_Bookmark)' | markdownify }}</td><td>
Specifies bookmark.</td></tr>
<tr>
<td>
{{ '[HintedArea](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.UpdateTooltipEventArgs.html#Syncfusion_Windows_Forms_Edit_UpdateTooltipEventArgs_HintedArea)' | markdownify }}</td><td>
Specifies a rectangle that represents an object which has this tooltip.</td></tr>
<tr>
<td>
{{ '[Image](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.UpdateTooltipEventArgs.html#Syncfusion_Windows_Forms_Edit_UpdateTooltipEventArgs_Image)' | markdownify }}</td><td>
Specifies an image associated with the tooltip.</td></tr>
<tr>
<td>
{{ '[Line](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.UpdateBookmarkTooltipEventArgs.html#Syncfusion_Windows_Forms_Edit_UpdateBookmarkTooltipEventArgs_Line)' | markdownify }}</td><td>
Specifies an index of the bookmarked line.</td></tr>
<tr>
<td>
{{ '[Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.UpdateTooltipEventArgs.html#Syncfusion_Windows_Forms_Edit_UpdateTooltipEventArgs_Text)' | markdownify }}</td><td>
Specifies text of the tooltip.</td></tr>
<tr>
<td>
{{ '[X](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.UpdateTooltipEventArgs.html#Syncfusion_Windows_Forms_Edit_UpdateTooltipEventArgs_X)' | markdownify }}</td><td>
Specifies Mouse X coordinate in client coordinates.</td></tr>
<tr>
<td>
{{ '[Y](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.UpdateTooltipEventArgs.html#Syncfusion_Windows_Forms_Edit_UpdateTooltipEventArgs_Y)' | markdownify }}</td><td>
Specifies Mouse Y coordinate in client coordinates.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

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


{% highlight VB %}

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

{% endtabs %}

![Edit-Control-Events_img2](Edit-Control-Events_images/Edit-Control-Events_img2.jpeg)

## UpdateContextToolTip event

This event is discussed in the Context Tooltip topic.

## User Margin events

This section discusses the following user margin events.

### DrawUserMarginText event

This event is discussed in the User Margin topic.

### PaintUserMargin event

This event occurs when the user margin has to be painted. The user margin in EditControl can be enabled or disabled by using the [ShowUserMargin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_ShowUserMargin) property. Its default value is `false`. To show the user margin, turn on its value to `true`.

The event handler receives an argument of type [PaintEventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.painteventargs?view=net-5.0). The following PaintEventArgs members provide specific information of this event.

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
{{ '[ClipRectangle](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.painteventargs.cliprectangle?view=net-5.0)' | markdownify }}</td><td>
Gets the rectangle area to paint.</td></tr>
<tr>
<td>
{{ '[Graphics](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.painteventargs.graphics?view=net-5.0)' | markdownify }}</td><td>
Gets the graphics used to paint.</td></tr>
</table>

{% tabs %}

{% highlight C# %}

private void editControl1_PaintUserMargin(object sender, PaintEventArgs e)
{

   Console.WriteLine(" PaintUserMargin event is raised ");

}

{% endhighlight %}


{% highlight VB %}

Private Sub editControl1_PaintUserMargin(ByVal sender As Object, ByVal e As PaintEventArgs)

   Console.WriteLine(" PaintUserMargin event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}

## WordWrapChanged event

This event is fired when the value of the [WordWrapMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Edit.EditControl.html#Syncfusion_Windows_Forms_Edit_EditControl_WordWrapMode) property is changed. The WordWrapMode property specifies the mode of word wrapping.

The event handler receives an argument of type [EventArgs](https://docs.microsoft.com/en-us/dotnet/api/system.eventargs?view=net-5.0).

{% tabs %}

{% highlight C# %}

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


{% highlight VB %}

' Handle the WordWrapChanged event. 

AddHandler Me.editControl1.WordWrapChanged, AddressOf editControl1_WordWrapChanged 

' Specify the mode of word wrapping. 

Me.editControl1.WordWrapMode = Syncfusion.Windows.Forms.Edit.Enums.WordWrapMode.WordWrapMargin 

Private Sub editControl1_WordWrapChanged(ByVal sender As Object, ByVal e As EventArgs)

   ' The below line will be displayed in the output window at runtime.

   Console.WriteLine(" WordWrapChanged event is raised ")

End Sub

{% endhighlight %}

{% endtabs %}
