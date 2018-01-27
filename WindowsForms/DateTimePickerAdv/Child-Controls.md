---
layout: post
title: Child Controls | WindowsForms | Syncfusion
description: child controls
platform: WindowsForms
control: DateTimePicker
documentation: ug
---
# Child Controls

DateTimePickerAdv has child controls like DropDown, Updown arrows, checkbox. This section discusses the properties which controls the appearance and behavior of these controls.

![](DateTimePicker_images/Overview_img183.jpeg)

## UpDown and DropDown Buttons

This section discusses the properties of DateTimePickerAdv control which customizes the UpDown and DropDown buttons.

### UpDown Buttons

The below properties controls the appearance and behavior of the UpDown buttons.


<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
ShowUpDown</td><td>
Shows or hides the UpDown buttons.</td></tr>
<tr>
<td>
ShowUpDownOnFocus</td><td>
Shows or hides the UpDown button when focused. By default it is set to false.</td></tr>
<tr>
<td>
VSLikeUpDown</td><td>
Specifies whether the UpDown button will have VS-like look.</td></tr>
</table>




{% highlight c#  %}

this.dateTimePickerAdv2.ShowUpDown = true;

this.dateTimePickerAdv2.ShowUpDownOnFocus = true;


{% endhighlight   %}
{% highlight vbnet  %}




Me.dateTimePickerAdv2.ShowUpDown = True

Me.dateTimePickerAdv2.ShowUpDownOnFocus = True
{% endhighlight   %}


In the below image, when focus is on button control, the updown button is hidden. In the second image, DateTimePickerAdv is focused and the UpDown button is shown.

![](DateTimePicker_images/Overview_img184.jpeg) 



![](DateTimePicker_images/Overview_img185.jpeg) 



![](DateTimePicker_images/Overview_img186.jpeg) 



### DropDown Button

DropDown button in the DateTimePickerAdv is visible by default. To hide the dropdown button set ShowDropDown property to false. The below are the properties available, to change the default appearance of the control.

### Color Settings

At run time, drop down button can be in normal mode, pressed mode or in selected mode. Different colors can be set for different modes.


<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
DropDownNormalColor</td><td>
Gets or Sets the dropdown back color in Normal mode.</td></tr>
<tr>
<td>
DropDownPressedColor</td><td>
Gets or Sets the dropdown back color in Pressed mode, i.e, when the date is selected in the text field.</td></tr>
<tr>
<td>
DropDownSelectedColor</td><td>
Gets or Sets the dropdown back color in Selected mode, i.e, when a date is selected using the popup calendar.</td></tr>
</table>





{% highlight c#  %}
this.dateTimePickerAdv2.DropDownNormalColor = System.Drawing.Color.LightBlue;

this.dateTimePickerAdv2.DropDownPressedColor = System.Drawing.Color.Goldenrod;

this.dateTimePickerAdv2.DropDownSelectedColor = System.Drawing.Color.SteelBlue;


{% endhighlight   %}
{% highlight vbnet  %}




Me.dateTimePickerAdv2.DropDownNormalColor = System.Drawing.Color.LightBlue

Me.dateTimePickerAdv2.DropDownPressedColor = System.Drawing.Color.Goldenrod

Me.dateTimePickerAdv2.DropDownSelectedColor = System.Drawing.Color.SteelBlue
{% endhighlight   %}
N> These settings will be effective only when DateTimePickerAdv.Style is Office2003, OfficeXP and VS2005.

![](DateTimePicker_images/Overview_img188.jpeg)



### Flat Appearance

Dropdown can be given flat appearance using FlatDropDown property. By default it is false.




{% highlight c#  %}
this.dateTimePickerAdv2.FlatDropButton = true;

{% endhighlight   %}

{% highlight vbnet  %}



this.dateTimePickerAdv2.FlatDropButton = true;
{% endhighlight   %}

N> These setting will be effective only when DateTimePickerAdv.Style is Default.

![](DateTimePicker_images/Overview_img190.jpeg) 



### Alignment of the DropDown

When the dropdown button is clicked, the calendar pops up, based on the alignment specified in DropDownAlign property. Default value is Left.



{% highlight c#  %}

this.dateTimePickerAdv1.DropDownAlign = System.Windows.Forms.LeftRightAlignment.Right;

{% endhighlight  %}
{% highlight vbnet  %}





Me.dateTimePickerAdv1.DropDownAlign = System.Windows.Forms.LeftRightAlignment.Right
{% endhighlight   %}


![](DateTimePicker_images/Overview_img191.jpeg) 



### Image for DropDown

The existing dropdown icon can be replaced with a custom image using the below properties.


<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
DropDownImage</td><td>
Gets or Sets the Image for dropdown button. </td></tr>
<tr>
<td>
StretchDropDownImage</td><td>
Specifies whether the image of the dropdown is stretched.</td></tr>
</table>



{% highlight c#  %}


this.dateTimePickerAdv1.DropDownImage = ((System.Drawing.Image)(resources.GetObject("dateTimePickerAdv1.DropDownImage")));

this.dateTimePickerAdv1.StretchDropDownImage = true;



{% endhighlight   %}
{% highlight vbnet %}



Me.dateTimePickerAdv1.DropDownImage = DirectCast((resources.GetObject("dateTimePickerAdv1.DropDownImage")), System.Drawing.Image) 

Me.dateTimePickerAdv1.StretchDropDownImage = True 
{% endhighlight   %}


![](DateTimePicker_images/Overview_img192.jpeg) 



![](DateTimePicker_images/Overview_img193.jpeg) 



 {% seealso %}
 [Checkbox](#checkbox), [Text Field](#text-field)
{% endseealso %}
 




## CheckBox

By default the DateTimePicker control has a checkbox in checked state. This checkbox can be hidden using ShowCheckBox property and the state can be unchecked through designer, using Checked property.




{% highlight c#  %}
this.dateTimePickerAdv1.ShowCheckBox = false;

this.dateTimePickerAdv5.Checked = false;


{% endhighlight   %}
{% highlight vbnet  %}




Me.dateTimePickerAdv1.ShowCheckBox = False

Me.dateTimePickerAdv5.Checked = False
{% endhighlight   %}


![](DateTimePicker_images/Overview_img194.jpeg) 



 {% seealso %}
[Text Field](#text-field), [UpDown and DropDown Buttons](#updown-and-dropdown-buttons)
{% endseealso %}
 
 


## Text Field

This section discusses the properties related to Checkbox and text field in the DateTimePicker control.

### CheckBox

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


### Text Field Formatting

Format and CustomFormat properties are used to format the text field. Below are the details


<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
Format </td><td>
Gets or Sets the format of the picker. The options are,{{ 'Long(default),'  | markdownify }}{{ 'Short,'  | markdownify }}{{ 'Time and' | markdownify }}{{ 'Custom.' | markdownify }}</td></tr>
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



### Spacing in TextField

We can specify spacing for the text field in the control, (ex: between month, year and date) using Spacing property. Default value is 0.



{% highlight c#  %}

this.dateTimePickerAdv1.Spacing = 5;



{% endhighlight   %}

{% highlight c#  %}
Me.dateTimePickerAdv1.Spacing = 5


{% endhighlight   %}
![](DateTimePicker_images/Overview_img197.jpeg) 



N> The text field can be refreshed programmatically by calling DateTimePickerAdv.RefreshFields() method.

 {% seealso %}
  Navigating between Fields, UpDown and DropDown Buttons
{% endseealso %}
 
### Navigation to Next field

By default, we have to move the cursor manually, to next field while giving input value in `Value` field of DateTimePickerAdv. Using the property `AutoForwarding` of DatePickerAdv, the cursor will move automatically to next field without using navigation keys. Following code example illustrate the same,

{% highlight C# %}

this.dateTimePickerAdv1.AutoForwarding = true;

{% endhighlight %}

{% highlight VB %}

Me.dateTimePickerAdv1.AutoForwarding = True

{% endhighlight %}


###  Null Value Settings

At run time, on clicking the "None" button of the popup calendar, "No date is selected" string will be displayed in the text field like the below image. 

![](DateTimePicker_images/Overview_img199.jpeg) 



This default string can be changed using NullString property. Below table describes the properties which controls the Null value behavior.


<table>
<tr>
<th>
DateTimePickerAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
EnableNullDate</td><td>
Specifies whether null date support is enabled. If it is set to false, DateTimePickerAdv will always have a selected date instead of null string .i.e,  text field displays the selected date even when {{ '_None_' | markdownify }} button is selected. By default it is true.</td></tr>
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
Specifies what keys will toggle off null date. i.e, when null value is selected, by pressing the keys we can replace the null value with date selected. The keys are,{{ 'ArrowKeys (default),' | markdownify }}{{ 'NumericKeys and'  | markdownify }}{{ 'Any.' | markdownify }}EnableNullDate must be set to true to make this setting effective.</td></tr>
<tr>
<td>
IsNullDate</td><td>
Set this to true, if you want to display null value ({{ 'String specified in NullString' | markdownify }}) instead of current value, specified using DateTimePicker.value property. By default it is set to false.</td></tr>
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
