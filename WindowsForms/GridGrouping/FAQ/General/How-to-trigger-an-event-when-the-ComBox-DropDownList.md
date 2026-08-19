---
layout: post
title: Event for Empty ComboBox in WinForms GridGroupingControl | Syncfusion®
description: Trigger an event when a ComboBox DropDownList has no value or data source in Syncfusion® WinForms GridGroupingControl, its dropdown handling, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Trigger an Empty ComboBox Event in WinForms GridGroupingControl

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

