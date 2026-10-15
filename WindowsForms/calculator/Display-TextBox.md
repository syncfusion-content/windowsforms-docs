---
layout: post
title: Display TextBox in Windows Forms Calculator | Syncfusion®
description: Learn about Display TextBox support in Syncfusion Windows Forms Calculator control and more details.
platform: windowsforms
control: Calculator
documentation: ug
---

# Display TextBox in WinForms Calculator

The [WinForms Calculator control](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html) has a display text area at the top, which shows all the digits and the calculations performed on the calculator. This display area is shown by default. To hide it, set the [ShowDisplayArea](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html#Syncfusion_Windows_Forms_Tools_CalculatorControl_ShowDisplayArea) property to `false`.

The following properties control the behavior of the display area:

* [DisplayTextAlign](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html#Syncfusion_Windows_Forms_Tools_CalculatorControl_DisplayTextAlign) - Sets the horizontal alignment (left, right, or center) of the display text.
* [Font](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html#Syncfusion_Windows_Forms_Tools_CalculatorControl_Font) - Sets the font used in the display area.
* [DoubleValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html#Syncfusion_Windows_Forms_Tools_CalculatorControl_DoubleValue) - Gets or sets the numeric value shown in the display area.

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

![Calculator display area with left-aligned text and a custom font](Overview_images/Overview_img113.jpeg)

## TextBox Value

The behavior of the TextBox value can be controlled using the following properties:

* [Culture](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html#Syncfusion_Windows_Forms_Tools_CalculatorControl_Culture) - Sets the culture used to format numbers (for example, decimal separator).
* [RepeatAssignAction](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html#Syncfusion_Windows_Forms_Tools_CalculatorControl_RepeatAssignAction) - When `true`, pressing **=** repeatedly reapplies the last operation to the current value.
* [UseUserOverride](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CalculatorControl.html#Syncfusion_Windows_Forms_Tools_CalculatorControl_UseUserOverride) - When `true`, uses the user's regional overrides for number formatting.

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

[How to customize the WinForms Calculator display text area to use NumberGroupSeparator?](http://help.syncfusion.com/windowsforms/calculator/faq/how-to-customize-the-calculator-display-text-area-to-use-numbergroupseparator)

{% endseealso %}
 
