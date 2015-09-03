---
layout: post
title: How-to-Get-New-Form-Window-in-Front-of-an-Active-W
description: how to get new form window in front of an active window while double clicking a cell
platform: WindowsForms
control: How To
documentation: ug
---

# How to Get New Form Window in Front of an Active Window while Double Clicking a Cell

To display a new form window while double clicking a cell, TableControlCellDoubleClick event is handled. window.BringToFront() method is used to bring the new window in front of the active window, but this is effective only if FocusOnMouseDown property is set to false.

{% highlight C# %}



//Form loads...

gridGroupingControl1.TableControlCellDoubleClick += GridGroupingControl1OnTableControlCellDoubleClick;

gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.One;

gridGroupingControl1.TableControl.FocusOnMouseDown = false;

}

private void GridGroupingControl1OnTableControlCellDoubleClick(object sender, GridTableControlCellClickEventArgs e)

{

var window = new Form1();

window.Show();

window.BringToFront();

}
{% endhighlight %}



{% highlight vbnet %}


'Form loads...

AddHandler gridGroupingControl1.TableControlCellDoubleClick, AddressOf GridGroupingControl1OnTableControlCellDoubleClick

gridGroupingControl1.TableOptions.ListBoxSelectionMode = SelectionMode.One

gridGroupingControl1.TableControl.FocusOnMouseDown = False

End Sub

Private Sub GridGroupingControl1OnTableControlCellDoubleClick(ByVal sender As Object, ByVal e As GridTableControlCellClickEventArgs)

Dim window = New Form1()

window.Show()

window.BringToFront()

End Sub

{% endhighlight %}

