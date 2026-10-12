---
layout: post
title: Set the Cursor in WinForms GridGroupingControl | Syncfusion®
description: Set the cursor in Syncfusion® WinForms GridGroupingControl, its cursor customization, cell cursor events, user interaction, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Set the Cursor in WinForms GridGroupingControl

You need to handle TableControlCellCursor event of GridGroupingControl and set the required cursor to the e.Inner.Cursor property.

{% tabs %}
{% highlight c# %}

//Event invoker.
this.gridGroupingControl1.TableControlCellCursor +=new Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlCellCursorEventHandler(gridGroupingControl1_TableControlCellCursor);

//Event handler. 
void gridGroupingControl1_TableControlCellCursor(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlCellCursorEventArgs e)
{
    e.Inner.Cancel = true;           
    e.Inner.Cursor = Cursors.Hand;
}

{% endhighlight %}

{% highlight vb %}

'Event invoker.
AddHandler gridGroupingControl1.TableControlCellCursor, AddressOf gridGroupingControl1_TableControlCellCursor

'Event handler.
Private Sub gridGroupingControl1_TableControlCellCursor(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlCellCursorEventArgs)
e.Inner.Cancel = True
e.Inner.Cursor = Cursors.Hand
End Sub

{% endhighlight %}
{% endtabs %}

