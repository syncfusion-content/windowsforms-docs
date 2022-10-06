---
layout: post
title: Autocomplete Events in Windows Forms AutoComplete control | Syncfusion
description: Learn about Autocomplete Events support in Syncfusion Windows Forms AutoComplete control and more details.
platform: WindowsForms
control: AutoComplete
documentation: ug
---

# Autocomplete Events in Windows Forms AutoComplete

The events of the AutoComplete component are as follows.

<table>
<tr>
<th>
AutoComplete events</th><th>
Description</th></tr>
<tr>
<td>
BeforeAddItem</td><td>
Handles when a new item is about to be added.</td></tr>
<tr>
<td>
AutoCompleteCustomize</td><td>
Handles to customize the auto completion.</td></tr>
<tr>
<td>
AutoCompleteItemBrowsed</td><td>
Handles when you select an item from the list of possible matches when the AutoComplete is set to AutoSuggest.</td></tr>
<tr>
<td>
AutoCompleteItemSelected Event</td><td>
Occurs when a new item is selected when the AutoComplete mode is set to AutoSuggest.</td></tr>
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
Provides a custom matching routine for the current value in the editor control.</td></tr>
<tr>
<td>
PreMatchItem</td><td>
Handles before the AutoComplete component performs a matching operation for the current text content of the active editor control.</td></tr>
<tr>
<td> 
TargetChanging</td><td>
Occurs when the editor control of the AutoComplete component changes.</td></tr>
</table>

## AutoCompleteItemSelected event

This event occurs while selecting a new item when the AutoComplete mode is set to AutoSuggest.


## BeforeAddItem Event

This event occurs when a new item is about to be added. New items can be added by calling the AutoComplete.AddHistoryItem() method. The event handler receives an argument of type AutoCompleteAddItemCancelEventArgs that contains data related to this event. The following are the properties associated with the AutoCompleteAddItemCancelEventArgs argument.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value that indicates whether the event should be canceled.</td></tr>
<tr>
<td>
ImageColumnIndex</td><td>
Gets or sets the ColumnIndex into the AutoComplete.ImageList property.</td></tr>
<tr>
<td>
RowItem</td><td>
It is the System.Data.DataRow object that contains the value that is to be added to the history list.</td></tr>
</table>

{% tabs %}

{% highlight C# %}



private void autoComplete1_BeforeAddItem(object sender, AutoCompleteAddItemCancelEventArgs e)

{
   // Cancels the item that is going to be added.

    e.Cancel = true;

}
{% endhighlight %}

{% highlight VB %}

Private Sub autoComplete1_BeforeAddItem(ByVal sender As Object, ByVal e As AutoCompleteAddItemCancelEventArgs)

   'Cancels the item that is going to be added.   

   e.Cancel = True

End Sub

{% endhighlight %}

{% endtabs %}

## AutoCompleteItemBrowsed event

This event occurs when selecting an item from the list of possible matches when the AutoComplete is set to AutoSuggest. The event handler receives an argument of type AutoCompleteItemEventArgs. The event properties associated with the AutoCompleteItemEventArgs are as follows.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
SelectedValue</td><td>
Gets or sets the value selected.</td></tr>
<tr>
<td>
Handled</td><td>
Specifies whether SelectedValue should be applied to editor control. This can be used only with AutoCompleteItemSelected.</td></tr>
<tr>
<td>
ItemArray</td><td>
Returns AutoComplete item as an object array.</td></tr>
<tr>
<td>
MatchColumnIndex</td><td>
Returns the index of the item that was used for matching.</td></tr>
</table>

When you select an item from the list of possible matches when AutoComplete is set to AutoSuggest, you can display the selected URL in a separate TextBox. The following code sample demonstrates this.

{% tabs %}

{% highlight C# %}


private void autoComplete1_AutoCompleteItemBrowsed(object sender, Syncfusion.Windows.Forms.Tools.AutoCompleteItemEventArgs args)

{
   string itemText = args.ItemArray[0].ToString();

   string eventlogmessage = String.Format("Event: {0} Item: {1}\r\n", "AutoCompleteItemSelected", itemText);

   textBox1.Text = textBox1.Text + eventlogmessage;

}

{% endhighlight %}


{% highlight VB %}

Private Sub autoComplete1_AutoCompleteItemBrowsed(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.AutoCompleteItemEventArgs)

    Dim itemText As String = args.ItemArray(0).ToString()

    Dim eventlogmessage As String = [String].Format("Event: {0} Item: {1}" & Chr(13) & "" & Chr(10) & "", "AutoCompleteItemSelected", itemText)

    textBox1.Text = textBox1.Text + eventlogmessage

End Sub

{% endhighlight %}

{% endtabs %}

## MatchItem event

You can override the default matching of the current content of the editor control using this event. The event handler receives an argument of type AutoCompleteMatchItemEventArgs. The following are the properties associated with AutoCompleteMatchItemEventArgs argument.

<table>
<tr>
<th>
Members</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets a value that indicates whether the event should be canceled.</td></tr>
<tr>
<td>
CurrentText</td><td>
Returns the current text value to be matched.</td></tr>
<tr>
<td>
PossibleMatch</td><td>
Returns the possible match value that needs to be compared against AutoCompleteMatchItemEventArgs.CurrentText by the event handler.</td></tr>
</table>

{% tabs %}

{% highlight C# %}


private void autoComplete1_MatchItem(object sender, AutoCompleteMatchItemEventArgs args)

{
   // Cancels the match operation.

   e.Cancel = true;

}

{% endhighlight %}

{% highlight VB %}

Private Sub autoComplete1_MatchItem(ByVal sender As Object, ByVal args As AutoCompleteMatchItemEventArgs)

   // Cancels the match operation.

   e.Cancel = true;

End Sub

{% endhighlight %}

{% endtabs %}
