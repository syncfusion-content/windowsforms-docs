---
layout: post
title: How to change the back color and text color of the selected item | WindowsForms | Syncfusion
description: How to change the back color and text color of the selected item
platform: WindowsForms
control: Editors Package
documentation: ug
---

# How to Change the Back Color and Text Color of the Selected Item

Using PrepareViewStyleInfo event of the Grid that is embedded in the MultiColumnComboBox, you can change the back color and text color of the selected item. This is illustrated in the following code.

{% tabs %}
{% highlight c# %}

GridControl gc = this.multiColumnComboBox1.ListBox.Grid;
gc.PrepareViewStyleInfo += new GridPrepareViewStyleInfoEventHandler(gc_PrepareViewStyleInfo);
gc.AlphaBlendSelectionColor = Color.Transparent;
void gc_PrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)
{
    GridCurrentCell cc = this.gc.CurrentCell;
    if (e.RowIndex == cc.RowIndex)
    {
        e.Style.BackColor = SystemColors.Highlight;
        e.Style.TextColor = SystemColors.HighlightText;
    }
}

{% endhighlight %}

{% highlight vb %}

Private gc As GridControl = Me.multiColumnComboBox1.ListBox.Grid
gc.PrepareViewStyleInfo += New GridPrepareViewStyleInfoEventHandler(gc_PrepareViewStyleInfo)
gc.AlphaBlendSelectionColor = Color.Transparent
Private Sub gc_PrepareViewStyleInfo(ByVal sender As Object, ByVal e As GridPrepareViewStyleInfoEventArgs)
Dim cc As GridCurrentCell = Me.gc.CurrentCell
If e.RowIndex = cc.RowIndex Then
e.Style.BackColor = SystemColors.Highlight
e.Style.TextColor = SystemColors.HighlightText
End If
End Sub

{% endhighlight %}
{% endtabs %}
