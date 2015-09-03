---
layout: post
title: AutoComplete Events
description: AutoComplete Events
platform: WindowsForms
control: Tools
documentation: ug
---




# AutoComplete Events

The events of the AutoComplete control are as follows.

Table 126: Events Table

<table>
<tr>
<td>
AutoComplete Events</td><td>
Description</td></tr>
<tr>
<td>
BeforeAddItem</td><td>
Handled when a new item is about to be added.</td></tr>
<tr>
<td>
AutoCompleteCustomize</td><td>
Handled to customize the AutoCompletion.</td></tr>
<tr>
<td>
AutoCompleteItemBrowsed</td><td>
Handled when the user selects an item from the list of possible matches when the AutoComplete is set to AutoSuggest.</td></tr>
<tr>
<td>
AutoCompleteItemSelected Event</td><td>
Occurs when a new item has been selected by the user when the AutoComplete mode is set to AutoSuggest.</td></tr>
<tr>
<td>
DropDownClosed</td><td>
Occurs when the AutoComplete dropdown is closed.</td></tr>
<tr>
<td>
DropDownDisplayed</td><td>
Occurs when the AutoComplete dropdown is displayed.</td></tr>
<tr>
<td>
MatchItem</td><td>
Enables you to provide a custom matching routine for the current value in the Edit control.</td></tr>
<tr>
<td>
PreMatchItem</td><td>
Handled before the AutoComplete control performs a matching operation for the current text content of the active Edit control.</td></tr>
<tr>
<td>
TargetChanging</td><td>
Occurs when the target control of the AutoComplete control changes.</td></tr>
</table>

## AutoCompleteItemSelected Event

AutoCompleteItemSelected Event is raised, when a new item has been selected by the user when the AutoComplete mode is set to AutoSuggest.

This event is discussed in External Datasource topic.

## BeforeAddItem Event

This event will be raised when new item is about to be added. New items can be added by calling AutoComplete.AddHistoryItem() method. The event handler receives an argument of type AutoCompleteAddItemCancelEventArgs containing data related to this event. The following are the properties associated with AutoCompleteAddItemCancelEventArgs argument.

Table 127: Members Table

<table>
<tr>
<td>
 Members</td><td>
Description</td></tr>
<tr>
<td>
Cancel</td><td>
Gets/Sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
ImageColumnIndex</td><td>
Gets/Sets the ColumnIndex into the AutoComplete.ImageList property.</td></tr>
<tr>
<td>
RowItem</td><td>
It is the System.Data.DataRow object that contains the value that is to be added to the history list.</td></tr>
</table>



{% highlight C# %}



private void autoComplete1_BeforeAddItem(object sender, AutoCompleteAddItemCancelEventArgs e)

{

//Cancels the item that is going to be added.

    e.Cancel = true;

}
{% endhighlight %}




{% highlight vbnet %}



Private Sub autoComplete1_BeforeAddItem(ByVal sender As Object, ByVal e As AutoCompleteAddItemCancelEventArgs)

'Cancels the item that is going to be added.   

   e.Cancel = True

End Sub
{% endhighlight %}

## AutoCompleteItemBrowsed Event

This event will be raised when the user selects an item from the list of possible matches when the AutoComplete is set to AutoSuggest. The event handler receives an argument of type AutoCompleteItemEventArgs. The event properties associated with the AutoCompleteItemEventArgs are as follows.

Table 128: Members Table

<table>
<tr>
<td>
Members</td><td>
Description</td></tr>
<tr>
<td>
SelectedValue</td><td>
Gets/Sets the value selected.</td></tr>
<tr>
<td>
Handled</td><td>
Specifies whether SelectedValue should be applied to target control. This can be used only with AutoCompleteItemSelected.</td></tr>
<tr>
<td>
ItemArray</td><td>
Returns AutoComplete item as an object array.</td></tr>
<tr>
<td>
MatchColumnIndex</td><td>
Returns the index of the item that was used for matching.</td></tr>
</table>


When the user selects an item from the list of possible matches when the AutoComplete is set to AutoSuggest, we can display the selected URL in separate TextBox. The following code illustrate this.


{% highlight C# %}




private void autoComplete1_AutoCompleteItemBrowsed(object sender, Syncfusion.Windows.Forms.Tools.AutoCompleteItemEventArgs args)

{

string itemText = args.ItemArray[0].ToString();

string eventlogmessage = String.Format("Event: {0} Item: {1}\r\n", "AutoCompleteItemSelected", itemText);

textBox1.Text = textBox1.Text + eventlogmessage;

}

{% endhighlight %}


{% highlight vbnet %}



Private Sub autoComplete1_AutoCompleteItemBrowsed(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.AutoCompleteItemEventArgs)

    Dim itemText As String = args.ItemArray(0).ToString()

    Dim eventlogmessage As String = [String].Format("Event: {0} Item: {1}" & Chr(13) & "" & Chr(10) & "", "AutoCompleteItemSelected", itemText)

    textBox1.Text = textBox1.Text + eventlogmessage

End Sub
{% endhighlight %}

## MatchItem Event

We can override the default matching of the current content of the target edit control using this event. The event handler receives an argument of type AutoCompleteMatchItemEventArgs. The following are the properties associated with AutoCompleteMatchItemEventArgs argument.

Table 129: Members Table

<table>
<tr>
<td>
 Members</td><td>
Description</td></tr>
<tr>
<td>
Cancel</td><td>
Gets/Sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
CurrentText</td><td>
Returns the current text value to be matched.</td></tr>
<tr>
<td>
PossibleMatch</td><td>
Returns the possible match value that needs to be compared against AutoCompleteMatchItemEventArgs.CurrentText by the event handler.</td></tr>
</table>


{% highlight C# %}





private void autoComplete1_MatchItem(object sender, AutoCompleteMatchItemEventArgs args)

{

   //Cancels the match operation

   e.Cancel = true;

}

{% endhighlight %}


{% highlight vbnet %}



Private Sub autoComplete1_MatchItem(ByVal sender As Object, ByVal args As AutoCompleteMatchItemEventArgs)

   //Cancels the match operation

   e.Cancel = true;

End Sub

{% endhighlight %}