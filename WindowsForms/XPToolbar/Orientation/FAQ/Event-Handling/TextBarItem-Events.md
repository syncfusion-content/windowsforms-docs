---
layout: post
title: TextBarItem-Events | WindowsForms | Syncfusion
description: textbaritem events
platform: WindowsForms
control: Orientation
documentation: ug
---

 TextBarItem Events

 TextBarItem includes Events of BarItem and also contains events discussed in this section. 

Events Table

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

TextBox box;

private void textBoxBarItem1_TextBoxItemBound(object sender, Syncfusion.Windows.Forms.Tools.XPMenus.TextBoxItemBoundEventArgs args)

{

    // Retrieving the internally embedded textBox

    box = (TextBox)args.TextBox;

}

{% endhighlight %}

{% highlight vbnet %}



' Triggers when embedding the internal textbox control with the BarItem

Private box As TextBox

Private Sub textBoxBarItem1_TextBoxItemBound(ByVal sender As Object, ByVal args As Syncfusion.Windows.Forms.Tools.XPMenus.TextBoxItemBoundEventArgs)



    ' Retrieving the internally embedded textBox

    box = CType(args.TextBox, TextBox)



End Sub

{% endhighlight %}



