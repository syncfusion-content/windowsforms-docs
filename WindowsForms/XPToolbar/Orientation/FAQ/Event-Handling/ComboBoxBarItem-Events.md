---
layout: post
title: ComboBoxBarItem-Events | Windows Forms | Syncfusion
description: comboboxbaritem events
platform: windowsforms
control: Orientation
documentation: ug
---

 ComboBoxBarItem Events

ComboBoxBarItem includes Events of BarItem and also contains events discussed in this section. 

_Table_ _521_: _Events Table_

<table>
<tr>
<th>
Events</th><th>
Description</th></tr>
<tr>
<td>
DownOpened</td><td>
It is handled when the drop-down of the ComboBoxBarItem is opened.</td></tr>
<tr>
<td>
DownClosed</td><td>
It is handled when the drop-down of the ComboBoxBarItem is closed.</td></tr>
<tr>
<td>
TextBoxBound</td><td>
The event triggers at the beginning when the embedded text box is bound to the ComboBoxBarItem.</td></tr>
<tr>
<td>
TextBoxValueChange</td><td>
This event is handled when the ComboBoxBarItem's value is changed.</td></tr>
</table>


{% highlight c# %}



// Triggers when embedding the internal textbox control with the ComboBoxBarItem 

TextBox txtbox;

private void comboBoxBarItem1_TextBoxBound(object sender, Syncfusion.Windows.Forms.Tools.XPMenus.TextBoxBoundEventArgs args)

{



   // Retrieving the internally embedded textBox

    txtbox = (TextBox)args.TextBox;

}



// Triggers when the drop down is closed.

private void comboBoxBarItem1_DownClosed(object sender, EventArgs e)

{

    Console.WriteLine("Dropdown closed");

}



// Triggers when the drop down is opened.

private void comboBoxBarItem1_DownOpened(object sender, EventArgs e)

{

    Console.WriteLine("Dropdown opened");

}



// Triggers when the ComboBoxBarItem's value is changed

private void comboBoxBarItem1_TextBoxValueChange(object sender, Syncfusion.Windows.Forms.Tools.XPMenus.TextBoxValueChangeEventArgs args)

{

    Console.WriteLine(this.comboBoxBarItem1.Text);

}

{% endhighlight %}

{% highlight vbnet %}



' Triggers when embedding the internal textbox control with the ComboBoxBarItem 

Private txtbox As TextBox

Private Sub comboBoxBarItem1_TextBoxBound(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.XPMenus.TextBoxBoundEventArgs)



    ' Retrieving the internally embedded textBox

    txtbox = CType(args.TextBox, TextBox)



End Sub



' Triggers when the drop down is closed.

Private Sub comboBoxBarItem1_DownClosed(ByVal sender As Object, ByVal e As EventArgs)

    Console.WriteLine("Dropdown closed")

End Sub



' Triggers when the drop down is opened.

Private Sub comboBoxBarItem1_DownOpened(ByVal sender As Object, ByVal e As EventArgs)

    Console.WriteLine("Dropdown opened")

End Sub



' Triggers when the ComboBoxBarItem's value is changed

Private Sub comboBoxBarItem1_TextBoxValueChange(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.XPMenus.TextBoxValueChangeEventArgs)

    Console.WriteLine(Me.comboBoxBarItem1.Text)

End Sub


{% endhighlight %}
