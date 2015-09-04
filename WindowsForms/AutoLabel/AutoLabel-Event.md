---
layout: post
title: AutoLabel Event
description: AutoLabel Event
platform: WindowsForms
control: AutoLabel
documentation: ug
---
# AutoLabel Event

A detailed explanation about the PropertyChanged event is given in the following section.

Table 389: Event Table

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

This event is fired when the LabeledControl, Gap or Position properties of this class change.

The event handler receives an argument of type SyncfusionPropertyChangedEventArgs containing data related to this event.



{% highlight C# %}



private void autoLabel1_PropertyChanged(object sender, Syncfusion.ComponentModel.SyncfusionPropertyChangedEventArgs e)

{

Console.WriteLine(" PropertyChanged event is raised");

}
{% endhighlight %}




{% highlight vbnet %}


Private Sub autoLabel1_PropertyChanged(ByVal sender As Object, ByVal e As Syncfusion.ComponentModel.SyncfusionPropertyChangedEventArgs)

Console.WriteLine(" PropertyChanged event is raised")

End Sub
{% endhighlight %}