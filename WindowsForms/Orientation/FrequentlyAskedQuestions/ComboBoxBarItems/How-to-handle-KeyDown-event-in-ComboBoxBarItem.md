---
layout: post
title: How-to-handle-KeyDown-event-in-ComboBoxBarItem
description: how to handle keydown event in comboboxbaritem
platform: windowsforms
control: Orientation
documentation: ug
---

# How to handle KeyDown event in ComboBoxBarItem

This can be done as follows.

{% highlight c# %}


private void comboBoxBarItem1_TextBoxBound(object sender, Syncfusion.Windows.Forms.Tools.XPMenus.TextBoxBoundEventArgs args)

{

    args.TextBox.KeyDown += new KeyEventHandler(TextBox_KeyDown);

}



private void TextBox_KeyDown(object sender, KeyEventArgs e)

{

    Console.WriteLine("KeyDown Event");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub comboBoxBarItem1_TextBoxBound(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.XPMenus.TextBoxBoundEventArgs)

    AddHandler args.TextBox.KeyDown, AddressOf TextBox_KeyDown

End Sub



Private Sub TextBox_KeyDown(ByVal sender As Object, ByVal e As KeyEventArgs)

    Console.WriteLine("KeyDown Event")

End Sub

{% endhighlight %}

{% seealso %}

ComboBoxBarItem

{% endseealso %}