---
layout: post
title: RadioButtonAdv-Events | WindowsForms | Syncfusion
description: radiobuttonadv events
platform: WindowsForms
control: EditorsPackage
documentation: ug
---

# RadioButtonAdv Events	

The list of events and a detailed explanation about each of them is given in the following sections.

Events Table

<table>
<tr>
<th>
RadioButtonAdv Events</th><th>
Description</th></tr>
<tr>
<td>
CheckChanged</td><td>
This event is fired when the Checked property of the RadioButtonAdv changes.</td></tr>
<tr>
<td>
GroupCheckChanged</td><td>
This event is fired when the Checked property of the RadioButtonAdv in the group changes.</td></tr>
</table>

## CheckChanged event

This event is fired when the Checked property of the RadioButtonAdv changes.

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

This event is fired when the Checked property of the RadioButtonAdv in the group changes.

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
