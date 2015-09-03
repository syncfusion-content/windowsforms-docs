---
layout: post
title: TextBarItem-Events
description: textbaritem events
platform: WindowsForms
control: Orientation
documentation: ug
---

 TextBarItem Events

 TextBarItem includes Events of BarItem and also contains events discussed in this section. 

_Table_ _525_: _Events Table_

<table>
<tr>
<th>
Events</th><th>
Description</th></tr>
<tr>
<td>
TextBoxItemBound</td><td>
Triggers when embedding the internal text box control with the BarItem</td></tr>
</table>


{% highlight c# %}



// Triggers when embedding the internal textbox control with the BarItem

TextBox tbox;

private void textBoxBarItem1_TextBoxItemBound(object sender, Syncfusion.Windows.Forms.Tools.XPMenus.TextBoxItemBoundEventArgs args)

{

    // Retrieving the internally embedded textBox

    tbox = (TextBox)args.TextBox;

}

{% endhighlight %}

{% highlight vbnet %}



' Triggers when embedding the internal textbox control with the BarItem

Private tbox As TextBox

Private Sub textBoxBarItem1_TextBoxItemBound(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.XPMenus.TextBoxItemBoundEventArgs)



    ' Retrieving the internally embedded textBox

    tbox = CType(args.TextBox, TextBox)



End Sub

{% endhighlight %}



