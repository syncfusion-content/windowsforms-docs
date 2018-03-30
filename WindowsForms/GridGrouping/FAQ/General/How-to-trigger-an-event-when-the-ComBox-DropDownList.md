---
layout: post
title: How-to-trigger-an-event-when-the-ComBox-DropDownList-has-null-value-or-has-no-datasource-bound-to-it | Windows Forms | Syncfusion
description: how to trigger an event when the combox dropdownlist has null value or has no datasource bound to it
platform: windowsforms
control: Grid
documentation: ug
---

# How to Trigger an Event when the ComBox DropDownList has Null Value or has no Datasource Bound to it

If a ComboBox is neither bound to any datasource nor has list items, it can be notified to the user by clicking on it. The notification message that the user wants to display can be given as shown in the following TableControlCurrentCellShowingDropDown event.  

{% tabs %}
{% highlight c# %}

//Code..
void gridGroupingControl1_TableControlCurrentCellShowingDropDown(object sender, GridTableControlCurrentCellShowingDropDownEventArgs e)
{
GridComboBoxCellRenderer rend = e.TableControl.CurrentCell.Renderer as GridComboBoxCellRenderer;
  ListBox list = rend.ListBoxPart;
  if (list.Items.Count == 0)
  {
    // write your code here..
  }
}
//Code..
{% endhighlight %}

{% highlight vb %}

'Code..
void gridGroupingControl1_TableControlCurrentCellShowingDropDown(Object sender, GridTableControlCurrentCellShowingDropDownEventArgs e)
Dim rend As GridComboBoxCellRenderer = TryCast(e.TableControl.CurrentCell.Renderer, GridComboBoxCellRenderer)
  Dim list As ListBox = rend.ListBoxPart
  If list.Items.Count = 0 Then
  ' write your code here..
  End If
'Code.. 
{% endhighlight %}
{% endtabs %}

