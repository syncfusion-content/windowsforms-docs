---
layout: post
title: Number Settings
description: Concepts and Features
platform: windowsforms
control: DoubleTextBox
documentation: ug
---
# Number Settings

The below table lists the properties which illustrates the number settings for the DoubleTextBox.

_Table_ _260__: Property Table_

<table>
<tr>
<td>
Double TextBox Properties</td><td>
Description</td></tr>
<tr>
<td>
DoubleValue</td><td>
Specifies the double value of the control.</td></tr>
<tr>
<td>
NumberDecimalDigits</td><td>
Gets or sets the maximum number of digits for the decimal portion of the number.</td></tr>
<tr>
<td>
NumberDecimalSeparator</td><td>
Gets or sets the decimal separator character that will be used for the display. The default decimal character '.' can be overridden by other special characters using this property.</td></tr>
<tr>
<td>
NumberGroupSeparator</td><td>
Gets or sets the separator used for grouping the digits.</td></tr>
<tr>
<td>
NumberGroupSizes</td><td>
Gets or sets the grouping of NumberDigits in the DoubleTextBox.</td></tr>
<tr>
<td>
NumberNegativePattern</td><td>
Gets or sets the pattern to use when the value is negative.</td></tr>
</table>


{% highlight C# %}  

this.doubleTextBox1.NumberDecimalDigits = 3;

this.doubleTextBox1.NumberDecimalSeparator = "-";

this.doubleTextBox1.NumberGroupSeparator = ";";

this.doubleTextBox1.NumberGroupSizes = new int[] {4};

this.doubleTextBox1.NumberNegativePattern = 2;

{% endhighlight %}



{% highlight vbnet %} 

Me.doubleTextBox1.AllowNull = True

Me.doubleTextBox1.NullString = ""

Me.doubleTextBox1.Text = ""

Me.doubleTextBox1.NumberDecimalDigits = 3

Me.doubleTextBox1.NumberDecimalSeparator = "-"

Me.doubleTextBox1.NumberGroupSeparator = ";"

Me.doubleTextBox1.CurrencyGroupSizes = New Integer() {3}

Me.doubleTextBox1.NumberNegativePattern = 2

{% endhighlight %} 


### DoubleTextBox Value

The maximum and minimum value of the editable field in DoubleTextBox control can be specified using the below properties.

_Table_ _261__: Property Table_

<table>
<tr>
<td>
DoubleTextBox Properties</td><td>
Description</td></tr>
<tr>
<td>
MaxValue</td><td>
Specifies the maximum value that can be set for the DoubleTextBox.</td></tr>
<tr>
<td>
MinValue</td><td>
Specifies the minimum value that can be set for the DoubleTextBox.</td></tr>
</table>


{% highlight C# %}  

this.doubleTextBox1.MaxValue = 25;

this.doubleTextBox1.MinValue = 4;

{% endhighlight %}



{% highlight vbnet %} 

Me.doubleTextBox1.MaxValue = 25

Me.doubleTextBox1.MinValue = 4

{% endhighlight %}


### Banner Text Support

We can set banner text for the DoubleTextBox control. Refer [BannerTextProvider Component](http://help.syncfusion.com/ug_82/WindowsFormsUI_Tools/BannerText.html) topic for more details.

We need to do the below settings to make Banner text feature available for the control.

{% highlight C# %}  

this.doubleTextBox1.AllowNull = true;

this.doubleTextBox1.NullString = "";

this.doubleTextBox1.Text = "";

{% endhighlight %}



{% highlight vbnet %} 

Me.doubleTextBox1.AllowNull = True

Me.doubleTextBox1.NullString = ""

Me.doubleTextBox1.Text = ""

{% endhighlight %}



![](DoubleTextBox-images/DoubleTextBox_img4.jpeg)
Figure 488: Banner Text set for DoubleTextBox
