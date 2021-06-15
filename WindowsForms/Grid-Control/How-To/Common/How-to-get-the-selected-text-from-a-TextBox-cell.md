---
layout: post
title: How to get the selected text from a TextBox cell | Syncfusion
description: Learn here all about how to get the selected text from a textbox cell in Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to get the selected text from a TextBox cell?

To get the selected text from a TextBox cell, the TextBox renderer should be acquired inside the CurrentCellStartEditing event. MouseUp event should be hooked to get the selected text from the TextBox cell.

{% tabs %}
{% highlight c# %}

this.gridDataBoundGrid1.CurrentCellStartEditing += new CancelEventHandler(gridDataBoundGrid1_CurrentCellStartEditing);

void gridDataBoundGrid1_CurrentCellStartEditing(object sender, CancelEventArgs e)
{
  GridCurrentCell cc = this.gridDataBoundGrid1.CurrentCell;
  if (cc.Renderer is GridTextBoxCellRenderer)
  {
   GridTextBoxCellRenderer rend = cc.Renderer as GridTextBoxCellRenderer;
   rend.TextBox.MouseUp += new MouseEventHandler(TextBox_MouseUp);
  }
}

void TextBox_MouseUp(object sender, MouseEventArgs e)
{
  TextBox text = sender as TextBox;
  if (text.SelectionLength > 0)
  {
   Console.WriteLine(text.SelectedText);
  }
}

{% endhighlight %}

{% highlight vb %}

AddHandler gridDataBoundGrid1.CurrentCellStartEditing, AddressOf gridDataBoundGrid1_CurrentCellStartEditing

Private Sub gridDataBoundGrid1_CurrentCellStartEditing(ByVal sender As Object, ByVal e As CancelEventArgs)
Dim cc As GridCurrentCell = Me.gridDataBoundGrid1.CurrentCell
If TypeOf cc.Renderer Is GridTextBoxCellRenderer Then
Dim rend As GridTextBoxCellRenderer = TryCast(cc.Renderer, GridTextBoxCellRenderer)
AddHandler rend.TextBox.MouseUp, AddressOf TextBox_MouseUp
End If
End Sub

Private Sub TextBox_MouseUp(ByVal sender As Object, ByVal e As MouseEventArgs)
Dim text As TextBox = TryCast(sender, TextBox)
If text.SelectionLength > 0 Then
Console.WriteLine(text.SelectedText)
End If
End Sub

{% endhighlight %}
{% endtabs %}

Refer to the following sample file for more details:

[http://www.syncfusion.com/downloads/Support/DirectTrac/99890/99890_SelectedText653111008.zip](http://www.syncfusion.com/downloads/Support/DirectTrac/99890/99890_SelectedText653111008.zip)

Similarly, the text from the ComboBox cell, RichTextBox cell, etc., can be acquired by taking their respective renderers. You can also achieve the same behavior for the Grid control and GridGrouping control.

