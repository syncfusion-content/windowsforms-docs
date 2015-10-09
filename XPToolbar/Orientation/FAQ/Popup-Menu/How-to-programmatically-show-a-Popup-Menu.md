---
layout: post
title: How-to-programmatically-show-a-Popup-Menu | WindowsForms | Syncfusion
description: how to programmatically show a popup menu
platform: WindowsForms
control: Orientation
documentation: ug
---

# How to programmatically show a Popup Menu

Listen to the control's MouseUp event and call the PopupMenu's Show method in the handler as follows. The popup menu will be displayed with a single click, at run time.

{% highlight c# %}



// Associating a Popup Menu with a RichTextBox Control.

private void richTextBox1_MouseUp(object sender, System.Windows.Forms.MouseEventArgs e)

{

    this.popupMenu2.Show(this.richTextBox1, new Point(e.X, e.Y));

}

{% endhighlight %}

{% highlight vbnet %}



' Associating a Popup Menu with a RichTextBox Control.

Private Sub richTextBox1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs)

    Me.popupMenu2.Show(Me.richTextBox1, New Point(e.X, e.Y))

End Sub

{% endhighlight %}

{% seealso %}

Popup Menu

{% endseealso %}