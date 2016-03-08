---
layout: post
title: Text-Field | Windows Forms | Syncfusion
description: text field
platform: windowsforms
control: CurrencyTextbox
documentation: ug
---

# Text Field

The text field of a CurrencyTextBox control can be customized using the properties available. The below image illustrates the various sections of the control.

![](Overview_images/Overview_img490.png) 

## Text

The default text in the CurrencyTextBox can be edited through Text property. Default value is $2.00. The text can be aligned to Left, Right or Center using TextAlign property.

{% highlight c# %}

this.currencyTextBox2.Text = "$25.00";

this.currencyTextBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox2.Text = "$25.00"

Me.currencyTextBox1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right

{% endhighlight %}

![](Overview_images/Overview_img491.png) 



### Multiline Feature

The CurrencyTextBox control can be made multiline by setting Multiline property to true. Using the below properties we can control the behavior of control. 


<table>
<tr>
<th>
CurrencyTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
Lines</td><td>
This property can hold an array of string values when multiline feature is enabled.</td></tr>
<tr>
<td>
WordWrap</td><td>
Setting this property to true, will automatically wrap the digits if the textbox is resized.</td></tr>
<tr>
<td>
ScrollBar</td><td>
We can show scrollbars for the control when multiline feature is enabled. The different options are,Horizontal - Displays horizontal scrollbar,Vertical - Displays vertical scrollbar,Both - Enables horizontal scrollbar, when WordWrap = false  and enables vertical scrollbar when WordWrap is set to true, andNone.</td></tr>
</table>


{% highlight c# %}

this.currencyTextBox1.Multiline = true;

this.currencyTextBox2.Text = "$12,456,456,456,456,456,456,456.00";

this.currencyTextBox2.WordWrap = "true"

this.currencyTextBox1.ScrollBars = System.Windows.Forms.ScrollBars.Both;

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox1.Multiline = True

Me.currencyTextBox2.Text = "$12,456,456,456,456,456,456,456.00"

Me.currencyTextBox2.WordWrap = True

Me.currencyTextBox1.ScrollBars = System.Windows.Forms.ScrollBars.Both

{% endhighlight %}

![](Overview_images/Overview_img492.png) 



![](Overview_images/Overview_img493.png)



![](Overview_images/Overview_img494.png) 



### Password Character

We can display password characters instead of the digits in the text field using PasswordChar property. To use the system password character in the text field, set UseSystemPasswordChar property to true.

{% highlight c# %}

this.currencyTextBox1.UseSystemPasswordChar = false;

this.currencyTextBox1.PasswordChar = '*';

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox1.UseSystemPasswordChar = False

Me.currencyTextBox1.PasswordChar = '*'

{% endhighlight %}

![](Overview_images/Overview_img495.png)



### Banner Text Support

We can set banner text for the CurrencyTextBox control. Refer BannerTextProvider Component topic for more details.

We need to do the below settings to make Banner text feature available for the control.

{% highlight c# %}

this.currencyTextBox1.AllowNull = true;

this.currencyTextBox1.NullString = "";

this.currencyTextBox1.Text = "";

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox1.AllowNull = True

Me.currencyTextBox1.NullString = ""

Me.currencyTextBox1.Text = ""

{% endhighlight %}

![](Overview_images/Overview_img496.png)



## Number and Decimal Digits

The CurrencyTextBox text field has a number part and a decimal part. The properties which controls appearance and behavior of the text field are discussed in this section.

### Number part

The below properties lets you decide the formatting of the number part of CurrencyTextBox control.


<table>
<tr>
<th>
CurrencyTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
CurrencyNumberDigits</td><td>
Specifies the number of digits for the number part. This is not part of the globalization structure. The default value is 27.</td></tr>
<tr>
<td>
CurrencyPositivePattern</td><td>
This property specifies the pattern to use when the value is positive.</td></tr>
<tr>
<td>
CurrencyNegativePattern</td><td>
This property specifies the pattern to use when the value is negative. For example, set CurrencyNegativePattern to be 2 or 3 and then hit -ve symbol, you will know the change of display.</td></tr>
</table>


{% highlight c# %}

this.currencyTextBox1.NumberDigits = 10;

this.currencyTextBox1.CurrencyPositivePattern = 1;

this.currencyTextBox1.CurrencyNegativePattern = 2;

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox1.NumberDigits = 10

Me.currencyTextBox1.CurrencyPositivePattern = 1

Me.currencyTextBox1.CurrencyNegativePattern = 2

{% endhighlight %}

### Decimal Part

The below properties lets you decide the formatting of the CurrencyTextBox control's number part.


<table>
<tr>
<th>
CurrencyTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
CurrencyDecimalDigits</td><td>
Gets or sets the maximum number of digits for the decimal portion of the currency. The default value is 2.</td></tr>
<tr>
<td>
CurrencyDecimalSeparator</td><td>
Gets or sets the decimal separator character that will be used for the display. The default decimal character '.' can be overridden by other special characters that can be specified by this property.</td></tr>
<tr>
<td>
CurrencyGroupSeparator</td><td>
Gets or sets the separator used for grouping the digits.</td></tr>
<tr>
<td>
CurrencyGroupSizes</td><td>
Gets or sets the grouping of CurrencyDigits in the CurrencyTextBox.</td></tr>
<tr>
<td>
DecimalValue</td><td>
Specifies the decimal value of the control. Decimal values can be entered in the CurrencyTextBox by clicking inside the decimal part of the text and then typing. Alternatively, the decimal character can be entered by clicking on the decimal character on the keyboard first and the cursor will move to the decimal part of the text. The decimal part is truncated based on the number of characters allowed.</td></tr>
<tr>
<td>
RemoveDecimalZeros</td><td>
Specifies whether to remove last decimal zeros in the currency value.</td></tr>
</table>


![](Overview_images/Overview_img497.png) 

{% highlight c# %}

this.currencyTextBox1.CurrencyDecimalDigits = 3;

this.currencyTextBox1.CurrencyDecimalSeparator = ".";

this.currencyTextBox1.CurrencyGroupSeparator = ",";

this.currencyTextBox1.CurrencyGroupSizes = new int[] {3};

this.currencyTextBox1.RemoveDecimalZeros = true;

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox1.CurrencyDecimalDigits = 3

Me.currencyTextBox1.CurrencyDecimalSeparator = "."

Me.currencyTextBox1.CurrencyGroupSeparator = ","

Me.currencyTextBox1.CurrencyGroupSizes = New Integer() {3}

Me.currencyTextBox1.RemoveDecimalZeros = True

{% endhighlight %}

![](Overview_images/Overview_img498.png) 



![](Overview_images/Overview_img499.png) 



## Negative Part

The default negative sign '-' can be changed by NegativeSign property to any other special characters. We can specify the behavior of the Currency TextBox by NegativeInputPendingOnSelectAll when its content is fully selected and negative key is pressed by the user. When NegativeInputPendingOnSelectAll set to 'True', the current value is not changed. The next key stroke is taken to a new value and the entire content of the TextBox is replaced by the negative value of the key stroke entered.

For example, if the current value of the TextBox is 1.00 with all the text being selected and when the user presses the negative key followed by key 5, the value will be  '-5'.

When it is set to false, the current value is changed to negative value immediately. For example, if the current value of the TextBox is 1.00 awith all the text being selected and when the user presses the negative key, the value is '-1'.

{% highlight c# %}

this.currencyTextBox1.NegativeSign = "-";

this.currencyTextBox1.NegativeInputPendingOnSelectAll = true;

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox1.NegativeSign = "-"

Me.currencyTextBox1.NegativeInputPendingOnSelectAll = True

{% endhighlight %}

## Values

The maximum and minimum value of the currency can be specified by MaxValue and MinValue properties.


<table>
<tr>
<th>
CurrencyTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
MaxValue</td><td>
It sets the maximum value to the currency TextBox. The default value is 79228162514264337593543950335.</td></tr>
<tr>
<td>
MinValue</td><td>
It sets the minimum value to the currency TextBox. The default value is 79228162514264337593543950335.</td></tr>
<tr>
<td>
EnforceMinMaxDuringValidating</td><td>
If the minimum and maximum values are not met, the validating event will be handled and cancelled if this property is set to true.</td></tr>
</table>


{% highlight c# %}

this.currencyTextBox1.MaxValue=10;

this.currencyTextBox1.MinValue=0;

this.currencyTextBox1.EnforceMinMaxDuringValidating= true;

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox1.MaxValue=10

Me.currencyTextBox1.MinValue=0

Me.currencyTextBox1.EnforceMinMaxDuringValidating = True;

{% endhighlight %}

### Null String

If you want to display null string instead of actual decimal values, you can set NullString property to any values. To display the null string set AllowNull to true.


<table>
<tr>
<th>
CurrencyTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
NullString</td><td>
Sets the Null string to be displayed when the decimal value is zero.</td></tr>
<tr>
<td>
AllowNull</td><td>
Specifies if the NullString will be used when the value is Null.NullString must be set to true.</td></tr>
</table>


{% highlight c# %}

this.currencyTextBox1.NullString = "NULL";

this.currencyTextBox1.AllowNull = true;

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox1.NullString = "NULL"

Me.currencyTextBox1.AllowNull = True

{% endhighlight %}

![](Overview_images/Overview_img500.png) 



## Currency Symbol

The currency symbol that will be used for formatting the display is specified by setting CurrencySymbol to any special characters.


<table>
<tr>
<th>
CurrencyTextBox Property</th><th>
Description</th></tr>
<tr>
<td>
CurrencySymbol</td><td>
This property specifies the currency symbol to be used in the CurrencyTextBox. The default value is '$'.</td></tr>
</table>


{% highlight c# %}

this.currencyTextBox1.CurrencySymbol = "#";

{% endhighlight %}

{% highlight vbnet %}

Me.currencyTextBox1.CurrencySymbol = "#"

{% endhighlight %}