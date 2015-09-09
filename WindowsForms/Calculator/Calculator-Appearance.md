---
layout: post
title: Calculator-Appearance
description: calculator appearance
platform: WindowsForms
control: Calculator
documentation: ug
---

# Calculator Appearance

This section will walk you through the different appearance settings for the Calculator control.

* Layout Modes - Layout of the components in a Calculator.
* Background Settings - Background settings for the control.
* Border Styles - Border for the control.
* Button Spacing - Spacing between the Calculator buttons.
* Button Foreground - Foreground settings for the buttons.

## Layout Modes


The Calculator control can be laid out in the following modes.

* WindowsStandard Mode - Modeled with windows standard layout(Default) and
* Financial Mode - Modeled with windows financial layout.



{% highlight c# %}



this.calculatorControl1.LayoutType = Syncfusion.Windows.Forms.Tools.CalculatorLayoutTypes.Financial;

{% endhighlight %}

{% highlight vbnet %}



Me.calculatorControl1.LayoutType = Syncfusion.Windows.Forms.Tools.CalculatorLayoutTypes.Financial

{% endhighlight %}

![](Overview_images/Overview_img114.jpeg) 



N>: We can set different button styles for the Calculator control, using CalculatorControl.ButtonStyle property. Refer_ Themes and Button Styles _topic to know more. ButtonStyles can be applied to both the layout modes._

## Background Settings

Background settings for a Calculator control is discussed in this section.

### Background Color

The background of the Calculator can be painted using the below properties.

<table>
<tr>
<th>
Calculatorcontrol Properties</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Specifies BackColor of the Calculator control.</td></tr>
<tr>
<td>
BackgroundColor</td><td>
Sets the gradient background for the control. This setting overrides the BackColor property.</td></tr>
</table>


{% highlight c# %}



this.calculatorControl1.BackColor = System.Drawing.Color.WhiteSmoke;

this.calculatorControl1.BackgroundColor = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.WhiteSmoke, System.Drawing.Color.SlateGray);

{% endhighlight %}

{% highlight vbnet %}



Me.calculatorControl1.BackColor = System.Drawing.Color.WhiteSmoke

Me.calculatorControl1.BackgroundColor = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.WhiteSmoke, System.Drawing.Color.SlateGray)

{% endhighlight %}

![](Overview_images/Overview_img116.jpeg) 



### Background Image

The background of the Calculator control can be filled with an image using BackgroundImage property.

{% highlight c# %}



this.calculatorControl1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("calculatorControl1.BackgroundImage")));

this.calculatorControl1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;

{% endhighlight %}

{% highlight vbnet %}



Me.calculatorControl1.BackgroundImage = DirectCast((resources.GetObject("calculatorControl1.BackgroundImage")), System.Drawing.Image) 

Me.calculatorControl1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center

{% endhighlight %}

![](Overview_images/Overview_img117.jpeg) 



## Border Styles

The below property will let you specify the border style for the Calculator control.


<table>
<tr>
<th>
Calculatorcontrol Properties</td><td>
Description</td></tr>
<tr>
<td>
BorderStyle</td><td>
Specifies the 3D border style for the control. The options are,<ul><li>{{ '_RaisedOuter_' | markdownify }}</li><li>{{ '_RaisedInner_' | markdownify }}</li><li> {{ '_SunkenOuter_' | markdownify }}</li><li>{{ '_SunkenInner_' | markdownify }}</li><li>{{ '_Raised_' | markdownify }}</li><li>{{ '_Sunken_' | markdownify }}</li><li>{{ '_Etched_' | markdownify }}</li><li>{{ '_Flat_' | markdownify }}</li><li>{{ '_Adjust_'  | markdownify }}</li><li>{{ '_Bump_' | markdownify }}</li></ul></td></tr>
</table>



{% highlight c# %}



this.calculatorControl1.BorderStyle = System.Windows.Forms.Border3DStyle.Etched;

{% endhighlight %}

{% highlight vbnet %}



this.calculatorControl1.BorderStyle = System.Windows.Forms.Border3DStyle.Etched;

{% endhighlight %}

![](Overview_images/Overview_img118.jpeg) 



## Button Spacing

The default spacing between the Calculator buttons can be modified by enabling _UseVerticalAndHorizontalSpacing_ property. The below properties controls the horizontal and vertical spacing.


<table>
<tr>
<th>
Calculatorcontrol Properties</th><th>
Description</th></tr>
<tr>
<td>
UseVerticalAndHorizontalSpacing</td><td>
Specifies whether horizontal and vertical spacing can be set using HorizontalSpacing and VerticalSpacing properties. By default it is false.</td></tr>
<tr>
<td>
HorizontalSpacing</td><td>
Sets horizontal spacing between buttons. The default value is 10. UseVerticalAndHorizontalSpacing must be set to true.</td></tr>
<tr>
<td>
VerticalSpacing</td><td>
Sets vertical spacing between buttons. The default value is 10. UseVerticalAndHorizontalSpacing must be set to true.</td></tr>
</table>


{% highlight c# %}



this.calculatorControl1.UseVerticalAndHorizontalSpacing = true;

this.calculatorControl1.HorizontalSpacing = 5;

this.calculatorControl1.VerticalSpacing = 5;

{% endhighlight %}

{% highlight vbnet %}



Me.calculatorControl1.UseVerticalAndHorizontalSpacing = True

Me.calculatorControl1.HorizontalSpacing = 5

Me.calculatorControl1.VerticalSpacing = 5

{% endhighlight %}

![](Overview_images/Overview_img119.jpeg) 



## Button Foreground

Using SetButtonFont and SetButtonColor properties, we can set the font style and color for the button text. The button can be identified using CalcActions enumerator.


<table>
<tr>
<th>
Calculatorcontrol Methods</th><th>
Description</th></tr>
<tr>
<td>
SetButtonColor</td><td>
Sets text color for the calculator button. The parameters are,{{ '_caCalcButton_' | markdownify }} - The calculator button,{{ '_color_' | markdownify }} - The color to set for the button text.</td></tr>
<tr>
<td>
SetButtonFont</td><td>
Sets the font style for the text in the calculator button. The parameters are, {{ '_caCalcButton_' | markdownify }} - The calculator button,{{ '_font_' | markdownify }} - The font style for the button text.</td></tr>
</table>


{% highlight c# %}



this.calculatorControl1.SetButtonColor(CalcActions.CalcSpecialBackspace, Color.Black);

this.calculatorControl1.SetButtonFont(CalcActions.CalcSpecialBackspace, new Font("Arial", 9, FontStyle.Bold));

{% endhighlight %}

{% highlight vbnet %}



Me.calculatorControl1.SetButtonColor(CalcActions.CalcSpecialBackspace, Color.Black);

Me.calculatorControl1.SetButtonFont(CalcActions.CalcSpecialBackspace, New Font("Arial", 9, FontStyle.Bold))

{% endhighlight %}

![](Overview_images/Overview_img120.jpeg) 