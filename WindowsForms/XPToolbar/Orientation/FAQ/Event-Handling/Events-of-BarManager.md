---
layout: post
title: Events-of-BarManager
description: events of barmanager
platform: WindowsForms
control: Orientation
documentation: ug
---

 Events of BarManager

This section discusses the events of BarManager.

The event handler of the following events receives an argument of type EventArgs.

_Table_ _518_: _Events Table_

<table>
<tr>
<th>
MainFrameBarManager Events</th><th>
Description</th></tr>
<tr>
<td>
CustomizationBegin</td><td>
It triggers when the customization dialog is about to be shown.</td></tr>
<tr>
<td>
CustomizationDone</td><td>
It triggers when the customization dialog has been closed.</td></tr>
</table>


{% highlight c# %}



//Displays message when CustomizationBegin event occurs

private void Customization_Begin(object sender, System.EventArgs e)

{

Console.WriteLine("CustomizationBegin occurred");

}



//Displays message when CustomizationDone event occurs

private void Customization_Done(object sender, System.EventArgs e)

{

Console.WriteLine("CustomizationDone occurred");

}

{% endhighlight %}

{% highlight vbnet %}



'Displays message when CustomizationBegin event occurs

Private Sub Customization_Begin(ByVal sender As Object, ByVal e As System.EventArgs)

    Console.WriteLine("CustomizationBegin occured.")

End Sub



'Displays message when CustomizationDone event occurs

Private Sub Customization_Done(ByVal sender As Object, ByVal e As System.EventArgs)

    Console.WriteLine("CustomizationDone occured.")

End Sub

{% endhighlight %}

