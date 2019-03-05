---
layout: post
title: Display-TextBox | WindowsForms | Syncfusion
description: display textbox
platform: WindowsForms
control: Calculator
documentation: ug
---

# Display TextBox

The [Calculator control](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CalculatorControl.html) has a display text area on its top corner, which displays all the digits and the calculations performed on the calculator. This display area is displayed by default. To hide this display area, set the [ShowDisplayArea](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CalculatorControl~ShowDisplayArea.html) property to false. 

The below properties controls the behavior of the display area.

* [DisplayTextAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CalculatorControl~DisplayTextAlign.html)
* [Font](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CalculatorControl~Font.html)
* [DoubleValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CalculatorControl~DoubleValue.html)

{% tabs %}
{% highlight C# %}
this.calculatorControl1.DisplayTextAlign = System.Windows.Forms.HorizontalAlignment.Left;
this.calculatorControl1.DoubleValue = 5;
this.calculatorControl1.Font = new System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Bold);
{% endhighlight %}
{% highlight VB %}
Me.calculatorControl1.DisplayTextAlign = System.Windows.Forms.HorizontalAlignment.Left
Me.calculatorControl1.DoubleValue = 5
Me.calculatorControl1.Font = New System.Drawing.Font("Verdana", 8.25F, System.Drawing.FontStyle.Bold)
{% endhighlight %}
{% endtabs %}

![Calculator control value](Overview_images/Overview_img113.jpeg) 

## TextBox Value

The behavior of the TextBox value can be controlled using the below properties.

* [Culture](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CalculatorControl~Culture.html)
* [RepeatAssignAction](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CalculatorControl~RepeatAssignAction.html)
* [UseUserOverride](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.CalculatorControl~UseUserOverride.html)

{% tabs %}
{% highlight C# %}
this.calculatorControl1.Culture = new System.Globalization.CultureInfo("en-US");
this.calculatorControl1.RepeatAssignAction = true;
this.calculatorControl1.UseUserOverride = true;
{% endhighlight %}
{% highlight VB %}
Me.calculatorControl1.Culture = New System.Globalization.CultureInfo("en-US")
Me.calculatorControl1.RepeatAssignAction = True
Me.calculatorControl1.UseUserOverride = True
{% endhighlight %}
{% endtabs %}

{% seealso %}

[How to customize the calculator display text area to use NumberGroupSeparator?](http://help.syncfusion.com/windowsforms/calculator/faq/how-to-customize-the-calculator-display-text-area-to-use-numbergroupseparator)

{% endseealso %}
 