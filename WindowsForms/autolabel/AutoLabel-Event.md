---
layout: post
title: AutoLabel Event | AutoLabel Control for Windows Forms | Syncfusion
description: This section explains about the AutoLabel Event with the important key features of AutoLabel control for windows forms.
platform: WindowsForms
control: AutoLabel
documentation: ug
---
# AutoLabel Event with Windows Forms

A detailed explanation about the PropertyChanged event is given in the following section.

<table>
<tr>
<th>
AutoLabel Event</th><th>
Description</th></tr>
<tr>
<td>
PropertyChanged</td><td>
This event is fired when the LabeledControl, Gap or Position properties change.</td></tr>
</table>

##  PropertyChanged Event

This event is fired when the LabeledControl, [Gap](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.AutoLabel~Gap.html) or [Position](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Shared.Base~Syncfusion.Windows.Forms.Tools.AutoLabel~Position.html) properties of this class change.

The event handler receives an argument of type SyncfusionPropertyChangedEventArgs containing data related to this event.

{% tabs %}
{% highlight c# %}

private void autoLabel1_PropertyChanged(object sender, Syncfusion.ComponentModel.SyncfusionPropertyChangedEventArgs e)
{
    Console.WriteLine(" PropertyChanged event is raised");
}

{% endhighlight %}

{% highlight vb %}

Private Sub autoLabel1_PropertyChanged(ByVal sender As Object, ByVal e As Syncfusion.ComponentModel.SyncfusionPropertyChangedEventArgs)
Console.WriteLine(" PropertyChanged event is raised")

End Sub
{% endhighlight %}
{% endtabs %}
