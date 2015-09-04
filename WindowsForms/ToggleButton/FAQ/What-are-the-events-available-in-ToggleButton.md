---
layout: post
title: What-are-the-events-available-in-ToggleButton
description: what are the events available in togglebutton
platform: WindowsForms
control: HubTile
documentation: ug
---

# What are the events available in ToggleButton

The following listed events are available in Toggle Button.

* ToggleStateChanging
* ToggleStateChanged

## ToggleStateChanging 

This event is triggered in Toggle Button when its state is changing.

#### Event Data

_Table_ _987_: _Member Table_

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
Cancel</td><td>
Gets or sets the value indicating whether the state change should be cancelled or not.</td></tr>
</table>


{% highlight c# %}

void toggleButton1_ToggleStateChanging(object sender, CancelEventArgs e)

{

     Console.WriteLine("ToggleStateChanging event raised!");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub toggleButton1_ToggleStateChanging(ByVal sender As Object, ByVal e As CancelEventArgs)

    Console.WriteLine("ToggleStateChanging event raised!")

End Sub

{% endhighlight %}

## ToggleStateChanged 

This event is triggered in Toggle Button after its value is changed. 

#### Event Data

_Table_ _988_: _Member Table_

<table>
<tr>
<th>
Member</th><th>
Description</th></tr>
<tr>
<td>
ToggleState</td><td>
Returns the current state of the ToggleButton.</td></tr>
</table>


{% highlight c# %}

void toggleButton1_ToggleStateChanged(object sender, Syncfusion.Windows.Forms.Tools.ToggleStateChangedEventArgs e)
{
     ToggleButtonState state = e.ToggleState;

     Console.WriteLine("ToggleStateChanged event is raised");

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub toggleButton1_ToggleStateChanged(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.ToggleStateChangedEventArgs)

        Dim state As ToggleButtonState = e.ToggleState

        Console.WriteLine("ToggleStateChanged event is raised")

End Sub

{% endhighlight %}

