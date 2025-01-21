---
layout: post
title: Metro Theme for Essential Schedule in WinForms Scheduler | Syncfusion®
description: Learn about Metro Theme for Essential® Schedule support in Syncfusion® Windows Forms Scheduler (Schedule) control and more details.
platform: windowsforms
control: Schedule
documentation: ug
---

# Metro Theme for Essential<sup>®</sup> Schedule in Windows Forms Scheduler

This feature enables you to apply new Metro styles to the Schedule control. 

### Use case scenario

The Metro theme support is useful for commercial applications to attract end users with inspiring UI look and feel.

### Property

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>
VisualStyle</td><td>
This is an enumeration type property used to get or set the visual styles (skins) such as Office2010, Office2007, Office2003, Metro, etc.</td></tr>
</table>

### Event

<table>
<tr>
<th>
Event</th><th>
Parameters</th><th>
Description</th></tr>
<tr>
<td>
ThemeChanged</td><td>
Object sender, EventArgs e</td><td>
Occurs when the ThemesEnabled property is changed.</td></tr>
</table>

## Applying Metro Theme to the Schedule Control

You can apply Metro theme to the Schedule control by setting the GridVisualStyles property as Metro. 

{% tabs %}
{% highlight c# %}
this.scheduleControl1.GetScheduleHost().Schedule.Appearance.VisualStyle = Syncfusion.Windows.Forms.GridVisualStyles.Metro;
{% endhighlight %}
{% highlight vb %}
Me.scheduleControl1.GetScheduleHost().Schedule.Appearance.VisualStyle = Syncfusion.Windows.Forms.GridVisualStyles.Metro
{% endhighlight %}
{% endtabs %}

![Metro-Theme-for-Essential-Schedule_img1](Metro-Theme-for-Essential-Schedule_images/Metro-Theme-for-Essential-Schedule_img1.png)
