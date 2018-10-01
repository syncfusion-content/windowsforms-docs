---
layout: post
title: Display-TextBox | WindowsForms | Syncfusion
description: display textbox
platform: WindowsForms
control: Calculator
documentation: ug
---

# Display TextBox

The Calculator control has a display text area on its top corner, which displays all the digits and the calculations performed on the calculator. This display area is displayed by default. To hide this display area, set the ShowDisplayArea property to false. 

The below properties controls the behavior of the display area.

Property Table

<table>
<tr>
<th>
Calculator control Properties</th><th>
Description</th></tr>
<tr>
<td>
DisplayTextAlign</td><td>
Specifies the text alignment in the display text area. The values are Right, Left and Center. By default, it is set to Right.</td></tr>
<tr>
<td>
Font</td><td>
Sets font style for display text in the textbox control.</td></tr>
<tr>
<td>
DoubleValue</td><td>
Sets the value of the Calculator control as double value. The default value is zero. </td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.calculatorControl1.DisplayTextAlign = System.Windows.Forms.HorizontalAlignment.Left;
this.calculatorControl1.DoubleValue = 5;
this.calculatorControl1.Font = new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Bold);

{% endhighlight %}

{% highlight vb %}

Me.calculatorControl1.DisplayTextAlign = System.Windows.Forms.HorizontalAlignment.Left
Me.calculatorControl1.DoubleValue = 5
Me.calculatorControl1.Font = New System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Bold)

{% endhighlight %}
{% endtabs %}

![](Overview_images/Overview_img113.jpeg) 

## TextBox Value

The behavior of the TextBox value can be controlled using the below properties.

<table>
<tr>
<th>
Calculator control Properties</th><th>
Description</th></tr>
<tr>
<td>
Culture</td><td>
Specifies the culture that is used for formatting the currency display.</td></tr>
<tr>
<td>
RepeatAssignAction</td><td>
Indicates whether the assignment action (=) will repeat the previous action. Whenever the user assigns an action in the calculator at run time and clicks "=" button, the result will be displayed in the textbox area. If the user clicks the "=" button again, the assigned action will be repeated, with the existing result, only when RepeatAssignAction property is set to true. By default it is true.</td></tr>
<tr>
<td>
UseUserOverride</td><td>
Indicates whether the NumberFormatInfo used for formatting will use UseUserOverride parameter for CultureInfo.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.calculatorControl1.Culture = new System.Globalization.CultureInfo("en-US");
this.calculatorControl1.RepeatAssignAction = true;
this.calculatorControl1.UseUserOverride = true;

{% endhighlight %}

{% highlight vb %}

Me.calculatorControl1.Culture = New System.Globalization.CultureInfo("en-US")
Me.calculatorControl1.RepeatAssignAction = True
Me.calculatorControl1.UseUserOverride = True

{% endhighlight %}
{% endtabs %}

{% seealso %}

[How to customize the calculator display text area to use NumberGroupSeparator?](http://help.syncfusion.com/windowsforms/calculator/faq/how-to-customize-the-calculator-display-text-area-to-use-numbergroupseparator)

{% endseealso %}
 