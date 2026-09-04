---
layout: post
title: Events in Windows Forms Radio Button | Syncfusion®
description: Events in Windows Forms Radio Button provide notifications when checked states change, enabling responsive handling of selection and group selection changes.
platform: WindowsForms
control: Radio Button
documentation: ug
---

# Events in Windows Forms Radio Button

The list of events and a detailed explanation about each of them is given in the following sections.

Events Table

<table>
<tr>
<th>
Radio Button Events</th><th>
Description</th></tr>
<tr>
<td>
CheckChanged</td><td>
This event is fired when the Checked property of the Radio Button changes.</td></tr>
<tr>
<td>
GroupCheckChanged</td><td>
This event is fired when the Checked property of the Radio Button in the group changes.</td></tr>
</table>

## CheckChanged event

This event is fired when the Checked property of the Radio Button changes.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight c# %}

private void radioButtonAdv1_CheckChanged(object sender, EventArgs e)
{
    Console.WriteLine(" CheckChanged event is raised");
}

{% endhighlight %}

{% highlight vb %}

Private Sub radioButtonAdv1_CheckChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" CheckChanged event is raised")
End Sub

{% endhighlight %}
{% endtabs %}

### GroupCheckChanged event

This event is fired when the Checked property of the Radio Button in the group changes.

The event handler receives an argument of type EventArgs containing data related to this event.

{% tabs %}
{% highlight c# %}

private void radioButtonAdv1_GroupCheckChanged(object sender, EventArgs e)
{
    Console.WriteLine(" GroupCheckChanged event is raised");
}

{% endhighlight %}

{% highlight vb %}

Private Sub radioButtonAdv1_GroupCheckChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine(" GroupCheckChanged event is raised")
End Sub

{% endhighlight %}
{% endtabs %}
