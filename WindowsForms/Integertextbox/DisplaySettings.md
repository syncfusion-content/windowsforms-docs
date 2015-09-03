---
layout: post
title: Display Settings
description: display settings
platform: WindowsForms
control: Tools
documentation: ug
---

# Display Settings

This section discusses the display settings of the IntegerTextBox control.

The IntegerTextBox provides a list of properties to set the display characteristics associated with the integer value.

Table 262 : Property Table

<table>
<tr>
<th>
IntegerTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
NumberGroupSeparator</td><td>
Gets / sets the separator to be used for grouping the digits.</td></tr>
<tr>
<td>
NumberGroupSizes</td><td>
Specifies the grouping of number digits in the IntegerTextBox.</td></tr>
<tr>
<td>
NumberNegativePattern</td><td>
Gets / sets the pattern to use when the value is negative.</td></tr>
<tr>
<td>
NegativeSign</td><td>
Gets / sets the sign that is to be used to indicate a negative value.</td></tr>
</table>


The grouping size of the number digits can be set using the Int32 Collection Editor which will be displayed on selecting theNumberGroupSizes property in the property grid.

{%highlight c#%}



this.integerTextBox1.NumberGroupSeparator = "/";

this.integerTextBox1.NumberGroupSizes = new int[] { 5 };

this.integerTextBox1.NumberNegativePattern = 2;

this.integerTextBox1.NegativeSign = "-";

{%endhighlight%}

{%highlight vbnet%}

Me.integerTextBox1.NumberGroupSeparator = "/"

Me.integerTextBox1.NumberGroupSizes = New Integer() {5}

Me.integerTextBox1.NumberNegativePattern = 2

Me.integerTextBox1.NegativeSign = "-"

{%endhighlight%}

![](Overview_images/Overview_img442.png) 



A Sample which demonstrates the Display Settings of IntegerTextBox control is available in the below sample installation path.

…\_My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Tools.Windows\Samples\Advanced Editor Functions\ActionGroupingDemo_

### [Value Settings](http://docs.syncfusion.com/windowsforms/tools/editorsPackage/editorscontrols/percentTextBox/valuesettings)

The various values of the IntegerTextBox control and their settings are given below.

Table 263 : Property Table

<table>
<tr>
<th>
IntegerTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
IntegerValue</td><td>
Specifies the integer value of the text.</td></tr>
<tr>
<td>
DefaultValue</td><td>
Specifies the default value. The default value is set to 'Null'.</td></tr>
<tr>
<td>
BindableValue</td><td>
Wrapper property that indicates the value. This property can be used to set the value of the control to 'Null'.</td></tr>
</table>


{%highlight c#%}



this.integerTextBox1.IntegerValue = ((long)(777));

this.integerTextBox1.DefaultValue = 0;

this.integerTextBox1.BindableValue = 777;

{%endhighlight%}

{%highlight vbnet%}

Me.integerTextBox1.IntegerValue = (CLng(777))

Me.integerTextBox1.DefaultValue = 0

Me.integerTextBox1.BindableValue = 777

{%endhighlight%}

![](Overview_images/Overview_img443.png) 


### Null Value Settings

There are various settings that can be applied to the IntegerTextBox control when the value of the control is set to 'Null'. These settings are illustrated below.

Table 264 : Property Table

<table>
<tr>
<th>
IntegerTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
NullString</td><td>
Specifies the string to be displayed when the DecimalValue is Null.</td></tr>
<tr>
<td>
NullFormat</td><td>
Returns the NumberFormatInfo object for the null display.</td></tr>
<tr>
<td>
IsNull</td><td>
Specifies the Null State of the Control.</td></tr>
<tr>
<td>
AllowNull</td><td>
Specifes whether the control can be Nulled,Null String will be set when the control becomes null.</td></tr>
</table>


{%highlight c#%}



this.integerTextBox1.NullString = "Null Value";

this.integerTextBox1. AllowNull = true;

{%endhighlight%}



{%highlight vbnet%}



Me.integerTextBox1.NullString = "Null Value"

Me.integerTextBox1. AllowNull = True

{%endhighlight%}



![](Overview_images/Overview_img444.png) 


### Min and Max Value Settings

The minimum and maximum values of the IntegerTextBox can be set using the below given properties.

Table 265 : Property Table

<table>
<tr>
<th>
IntegerTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
MaxValue</td><td>
Gets / sets the maximum value that can be set through the IntegerTextBox. The default value is set to '9223372036854775807'.</td></tr>
<tr>
<td>
MinValue</td><td>
Gets / sets the minimum value that can be set through the IntegerTextBox. The default value is set to '-9223372036854775808'.</td></tr>
</table>


{%highlight c#%}


this.integerTextBox1.MaxValue = 9223372036854775807;

this.integerTextBox1.MinValue = -9223372036854775808;

{%endhighlight%}


{%highlight  vbnet%}


Me.integerTextBox1.MaxValue = 9223372036854775807

Me.integerTextBox1.MinValue = -9223372036854775808

{%endhighlight%}