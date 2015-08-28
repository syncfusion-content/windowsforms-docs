---
layout: post
title: Globalization
description: globalization
platform: windowsforms
control: Calendar
documentation: ug
---
#  Globalization

DateTimePickerAdv supports globalization through DateTimePickerAdv.Culture property.

_Table195: Property Table_

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
Culture</td><td>
Gets or sets the current culture of the DateTimePickerAdv control. UseCurrentCulture should be set to false to make this setting effective.</td></tr>
<tr>
<td>
UseCurrentCulture</td><td>
Specifies whether the current culture of the machine will be used. By default it is false.</td></tr>
</table>


{% highlight c#  %}



this.dateTimePickerAdv1.UseCurrentCulture = false;

this.dateTimePickerAdv1.Culture = new System.Globalization.CultureInfo("hi-IN");



{% endhighlight   %}
{% highlight vbnet  %}



Me.dateTimePickerAdv1.UseCurrentCulture = False

Me.dateTimePickerAdv1.Culture = New System.Globalization.CultureInfo("hi-IN")
{% endhighlight   %}


![](Calendar_Images/Overview_img220.jpeg) 

