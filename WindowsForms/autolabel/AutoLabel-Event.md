---
layout: post
title: AutoLabel Event in Windows Forms AutoLabel control | Syncfusion
description: Learn about AutoLabel Event support in Syncfusion Essential Studio Windows Forms AutoLabel control and more details.
platform: WindowsForms
control: AutoLabel
documentation: ug
---
# AutoLabel Event in Windows Forms AutoLabel

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

This event is fired when the LabeledControl, [Gap](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoLabel.html#Syncfusion_Windows_Forms_Tools_AutoLabel_Gap) or [Position](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.AutoLabel.html#Syncfusion_Windows_Forms_Tools_AutoLabel_Position) properties of this class change.

The event handler receives an argument of type [SyncfusionPropertyChangedEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.ComponentModel.SyncfusionPropertyChangedEventArgs.html) containing data related to this event.

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
