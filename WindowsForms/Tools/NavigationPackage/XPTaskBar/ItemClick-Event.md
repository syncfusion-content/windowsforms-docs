---
layout: post
title: ItemClick Event
description: Concepts and Features
platform: windowsforms
control: XPtaskBar
documentation: ug
---
# ItemClick Event

The XPTaskBar Box uses this event to make an XPTaskBar Item do some task when the user clicks on it. For this event, the user 
should set unique names for the XPTaskBar Items through the Tag property in the Items Collection Editor.

The event handler receives an argument of the type XPTaskBarItemClickArgs. The event property associated with the 
XPTaskBarItemClickArgs is as follows.

_Table_ _594__: Member Table_

<table>
<tr>
<td>
Member</td><td>
Description</td></tr>
<tr>
<td>
XPTaskBarItem</td><td>
Returns the item that was clicked.</td></tr>
</table>


{% highlight C# %}  

private void xpTaskBarBox_ItemClick(object sender, Syncfusion.Windows.Forms.Tools.XPTaskBarItemClickArgs e)

{

switch (e.XPTaskBarItem.Tag as string)

{

case "Desk_top":

// Add code to Do something.

break;

case "Computer":

// Add code to Do something.

break;

}

}

{% endhighlight %}



{% highlight vbnet %} 

Private Sub xpTaskBarBox_ItemClick(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.XPTaskBarItemClickArgs)

Select Case CType IIf(TypeOf e.XPTaskBarItem.Tag Is String, e.XPTaskBarItem.Tag, Nothing), String

Case "Desk_top"

' Add code to Do something.

Case "Computer"

' Add code to Do something.

End Select

End Sub

{% endhighlight %}