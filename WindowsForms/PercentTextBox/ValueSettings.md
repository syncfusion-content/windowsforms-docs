---
layout: post
title: Value Settings | Windows Forms | Syncfusion
description: Value Settings
platform: windowsforms
control: Editors Package
documentation: ug
---


# Value Settings

The various values of the PercentTextBox control and their settings are given below.



<table>
<tr>
<th>
PercentTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
PercentValue</td><td>
Specifies the double value of the PercentTextBox control.</td></tr>
<tr>
<td>
DefaultValue</td><td>
Specifies the default value. The default value is set to 'Null'.</td></tr>
<tr>
<td>
BindableValue</td><td>
Wrapper property that indicates the value. This property can be used to set the value of the control to 'Null'.</td></tr>
<tr>
<td>
BindablePercentValue</td><td>
Wrapper property that indicates the percent value. This property can be used to set the value of the control to 'Null'.</td></tr>
<tr>
<td>
DoubleValue</td><td>
Gets / sets the double value of the control. This will be formatted and displayed.</td></tr>
</table>



{% highlight C# %}





this.percentTextBox1.PercentValue = 5;

this.percentTextBox1.DefaultValue = 0;

this.percentTextBox1.BindableValue = 0.05;

this.percentTextBox1.BindablePercentValue = 5;

this.percentTextBox1.DoubleValue = 0.05;

{% endhighlight %}

{% highlight vbnet %}



Me.percentTextBox1.PercentValue = 5

Me.percentTextBox1.DefaultValue = 0

Me.percentTextBox1.BindableValue = 0.05

Me.percentTextBox1.BindablePercentValue = 5

Me.percentTextBox1.DoubleValue = 0.05

{% endhighlight %}

 ![](PercentTextBox-Images/Overview_img466.png) 



## Null Value Settings

There are various settings that can be applied to the PercentTextBox control, when the value of the control is set to 'Null'. These settings are illustrated below.



<table>
<tr>
<th>
PercentTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
AllowNull</td><td>
Specifies if the NullString will be used when the value is Null.</td></tr>
<tr>
<td>
NullString</td><td>
Specifies the string to be displayed when the DecimalValue is Null.</td></tr>
<tr>
<td>
NullFormat</td><td>
Returns the NumberFormatInfo object for the null display.</td></tr>
</table>



{% highlight C# %}




this.percentTextBox1.NullString = "Null Value";

this.percentTextBox1.AllowNull = true;

{% endhighlight %}


{% highlight vbnet %}




Me.percentTextBox1.NullString = "Null Value"

Me.percentTextBox1.AllowNull = True
{% endhighlight %}


 ![](PercentTextBox-Images/Overview_img467.png) 



## Min and Max Value Settings

The minimum and maximum values of the IntegerTextBox can be set using the below given properties.



<table>
<tr>
<th>
PercentTextBox Properties</th><th>
Description</th></tr>
<tr>
<td>
MaxValue</td><td>
Gets / sets the maximum value that can be set through the PercentTextBox. The default value is set to '1'.</td></tr>
<tr>
<td>
MinValue</td><td>
Gets / sets the minimum value that can be set through the PercentTextBox. The default value is set to '-1'.</td></tr>
<tr>
<td>
EnforceMinMaxDuringValidating</td><td>
If the min and max values are not met, the Validating event will be handled and cancelled if this property is set to 'True'.</td></tr>
</table>




{% highlight C# %}



this.percentTextBox1.MaxValue = 6;

this.percentTextBox1.MinValue = -6;

this.percentTextBox1.EnforceMinMaxDuringValidating = true;

{% endhighlight %}



{% highlight vbnet %}


Me.percentTextBox1.MaxValue = 6

Me.percentTextBox1.MinValue = -6

Me.percentTextBox1.EnforceMinMaxDuringValidating = True
{% endhighlight %}


The methods associated with the above properties are given below.



<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
ResetMaxValue</td><td>
Resets the MaxValue property to it's default value.</td></tr>
<tr>
<td>
ResetMinValue</td><td>
Resets the MinValue property to it's default value.</td></tr>
</table>