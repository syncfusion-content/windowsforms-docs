---
layout: post
title: How-to-set-the-cursor-to-GridGroupingControl-inste | Windows Forms | Syncfusion
description: how to set the cursor to gridgroupingcontrol instead of the default one
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Set The Cursor to GridGroupingControl instead of the Default One

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

