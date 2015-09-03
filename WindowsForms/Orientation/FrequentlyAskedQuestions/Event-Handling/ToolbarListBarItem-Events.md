---
layout: post
title: ToolbarListBarItem-Events
description: toolbarlistbaritem events
platform: windowsforms
control: Orientation
documentation: ug
---

 ToolbarListBarItem Events

ToolbarListBarItem includes Events of BarItem and also contains events discussed in this section. 

_Table_ _523_: _Events Table_

<table>
<tr>
<th>
Events</th><th>
Description</th></tr>
<tr>
<td>
BeforePopup</td><td>
Triggers before the Pop-up displays</td></tr>
<tr>
<td>
Popup</td><td>
Triggers when the Pop-up is displayed</td></tr>
<tr>
<td>
PopupClosed</td><td>
Triggers when the Pop-up is closed</td></tr>
<tr>
<td>
PopupClosing</td><td>
Triggers before the Pop-up closes</td></tr>
</table>


{% highlight c# %}



// Triggers before the Popup displays

private void toolbarListBarItem1_BeforePopup(object sender, CancelEventArgs e)

{

    Console.WriteLine("BeforePopup event triggered");

}



// Triggers when the Popup is displayed

private void toolbarListBarItem1_Popup(object sender, EventArgs e)

{

    Console.WriteLine("Popup event is triggered");

}



// Triggers when the Popup is closed

private void toolbarListBarItem1_PopupClosed(object sender, EventArgs e)

{

    Console.WriteLine("PopupClosed event is triggered");

}

// Triggers before the Popup closes

private void toolbarListBarItem1_PopupClosing(object sender, CancelEventArgs e)

{

    Console.WriteLine("PopupClosing event is triggered");

}

{% endhighlight %}

{% highlight vbnet %}



' Triggers before the Popup displays

Private Sub toolbarListBarItem1_BeforePopup(ByVal sender As Object, ByVal e As CancelEventArgs)

    Console.WriteLine("BeforePopup event triggered")

End Sub



' Triggers when the Popup is displayed

Private Sub toolbarListBarItem1_Popup(ByVal sender As Object, ByVal e As EventArgs)

    Console.WriteLine("Popup event is triggered")

End Sub



' Triggers when the Popup is closed

Private Sub toolbarListBarItem1_PopupClosed(ByVal sender As Object, ByVal e As EventArgs)

    Console.WriteLine("PopupClosed event is triggered")

End Sub

' Triggers before the Popup closes

Private Sub toolbarListBarItem1_PopupClosing(ByVal sender As Object, ByVal e As CancelEventArgs)

    Console.WriteLine("PopupClosing event is triggered")

End Sub

{% endhighlight %}

