---
layout: post
title: Null Value Settings
description: null value settings
platform: windowsforms
control: DateTimePicker 
documentation: ug
---
# Null Value Settings

At run time, on clicking the "None" button of the popup calendar, "No date is selected" string will be displayed in the text field like the below image. 

![](DateTimePicker_images/Overview_img199.jpeg) 



This default string can be changed using NullString property. Below table describes the properties which controls the Null value behavior.

_Table183: Property Table_

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
EnableNullDate</td><td>
Specifies whether null date support is enabled. If it is set to false, DateTimePickerAdv will always have a selected date instead of null string .i.e,  text fielddisplays the selected date even when {{ '_None_' | markdownify }} button is selected. By default it is true.</td></tr>
<tr>
<td>
EnableNullKeys</td><td>
Specifies Backspace or Delete keys makes the date null.  EnableNullDate must be set to true to make this setting effective.</td></tr>
<tr>
<td>
NullString</td><td>
Specifies the text visible when there is no date selected.  EnableNullDate must be set to true to make this setting effective.</td></tr>
<tr>
<td>
NullModeKeyReset</td><td>
Specifies what keys will toggle off null date. i.e, when null value is selected, by pressing the keys we can replace the null value with date selected. The keys are,{{ '_ArrowKeys (default),_' | markdownify }}{{ '_NumericKeys and_'  | markdownify }}{{ '_Any._' | markdownify }}EnableNullDate must be set to true to make this setting effective.</td></tr>
<tr>
<td>
IsNullDate</td><td>
Set this to true, if you want to display null value ({{ '_String specified in NullString_' | markdownify }}) instead of current value, specified using DateTimePicker.value property. By default it is set to false.</td></tr>
</table>




{% highlight c#  %}

this.dateTimePickerAdv1.EnableNullDate = true;

this.dateTimePickerAdv1.EnableNullKeys = true;

this.dateTimePickerAdv1.NullString = "Null Value"

this.dateTimePickerAdv1.NullModeKeyReset = Syncfusion.Windows.Forms.Tools.NullModeKeyReset.NumericKeys;



{% endhighlight   %}
{% highlight vbnet  %}



Me.dateTimePickerAdv1.EnableNullDate = True

Me.dateTimePickerAdv1.EnableNullKeys = True

Me.dateTimePickerAdv1.NullString = "Null Value"

Me.dateTimePickerAdv1.NullModeKeyReset = Syncfusion.Windows.Forms.Tools.NullModeKeyReset.NumericKeys
{% endhighlight   %}


![](DateTimePicker_images/Overview_img200.jpeg) 


