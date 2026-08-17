---
layout: post
title: Handle Empty ComboBox in Windows Forms GridControl | Syncfusion®
description: Trigger an event when a ComboBox has no items or data source in Syncfusion® Windows Forms GridControl using dropdown events and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Handle Empty ComboBox in Windows Forms GridControl

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

