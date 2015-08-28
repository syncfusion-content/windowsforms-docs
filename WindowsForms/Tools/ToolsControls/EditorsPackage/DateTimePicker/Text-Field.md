---
layout: post
title: Text Field
description: text field
platform: windowsforms
control: DateTimePicker
documentation: ug
---
# Text Field

This section discusses the properties related to Checkbox and text field in the DateTimePicker control.

## CheckBox

By default the DateTimePicker control has a checkbox in checked state. This checkbox can be hidden using ShowCheckBox property and the state can be unchecked through designer, using Checked property.



{% highlight c#  %}

this.dateTimePickerAdv1.ShowCheckBox = false;

this.dateTimePickerAdv5.Checked = false;

{% endhighlight  %}
{% highlight vbnet  %}





Me.dateTimePickerAdv1.ShowCheckBox = False

Me.dateTimePickerAdv5.Checked = False

{% endhighlight  %}

![](DateTimePicker_images/Overview_img195.jpeg) 


## Text Field Formatting

Format and CustomFormat properties are used to format the text field. Below are the details

_Table182: Property Table_

<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
Format </td><td>
Gets or Sets the format of the picker. The options are,{{ '_Long(default),_'  | markdownify }}{{ '_Short,_'  | markdownify }}{{ '_Time and_' | markdownify }}{{ '_Custom._' | markdownify }}</td></tr>
<tr>
<td>
CustomFormat</td><td>
Specifies the custom format, when the Format is set to 'Custom'.  For example, If you want to display 'March/2007', set CustomFormat to 'MMMM/yyyy'</td></tr>
</table>




{% highlight c#  %}

//Sets "Long" format for the text field

this.dateTimePickerAdv5.Format = System.Windows.Forms.DateTimePickerFormat.Long;



//Sets "Short" format for the text field

this.dateTimePickerAdv5.Format = System.Windows.Forms.DateTimePickerFormat.Short;



//Sets "Time" format for the text field

this.dateTimePickerAdv5.Format = System.Windows.Forms.DateTimePickerFormat.Time;



//Sets custom format for the text field

this.dateTimePickerAdv5.Format = System.Windows.Forms.DateTimePickerFormat.Custom;

this.dateTimePickerAdv5.CustomFormat = "dd - MM - yyyy";




{% endhighlight   %}
{% highlight vbnet  %}


'Sets "Long" format for the text field

Me.dateTimePickerAdv5.Format = System.Windows.Forms.DateTimePickerFormat.Long



'Sets "Short" format for the text field

Me.dateTimePickerAdv5.Format = System.Windows.Forms.DateTimePickerFormat.Short



'Sets "Time" format for the text field

Me.dateTimePickerAdv5.Format = System.Windows.Forms.DateTimePickerFormat.Time



'Sets custom format for the text field

Me.dateTimePickerAdv5.Format = System.Windows.Forms.DateTimePickerFormat.Custom

Me.dateTimePickerAdv5.CustomFormat = "dd - MM - yyyy"

{% endhighlight   %}

![](DateTimePicker_images/Overview_img196.jpeg) 



## Spacing in TextField

We can specify spacing for the text field in the control, (ex: between month, year and date) using Spacing property. Default value is 0.



{% highlight c#  %}

this.dateTimePickerAdv1.Spacing = 5;



{% endhighlight   %}

{% highlight c#  %}
Me.dateTimePickerAdv1.Spacing = 5


{% endhighlight   %}
![](DateTimePicker_images/Overview_img197.jpeg) 



> Note: The text field can be refreshed programmatically by calling DateTimePickerAdv.RefreshFields() method.

See Also

Navigating between Fields, UpDown and DropDown Buttons
