---
layout: post
title: Value Settings
description: Concepts and Features
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# Value Settings

The value settings of the MaskedEditBox control are discussed below.

### MinValue and MaxValue

The minimum and maximum values of the MaskedEditBox control can be set using the below given properties.

_Table_ _339__: Property Table_

<table>
<tr>
<td>
MaskedEditBox Properties</td><td>
Description</td></tr>
<tr>
<td>
MinValue</td><td>
Specifies the minimum value that can be set through the MaskedEditBox. The default value is set to '0'.</td></tr>
<tr>
<td>
MaxValue</td><td>
Specifies the maximum value that can be set through the MaskedEditBox.The default value is set to '79228162514264337593543950335'.</td></tr>
</table>


{% highlight C# %}  



this.maskedEditBox1.MinValue = new decimal(new int[] {50, 0, 0, 0});

this.maskedEditBox1.MaxValue = new decimal(new int[] {100, 0, 0, 0});

{% endhighlight %}



{% highlight vbnet %} 

Me.maskedEditBox1.MinValue = New Decimal(New Integer() {50, 0, 0, 0})

Me.maskedEditBox1.MaxValue = New Decimal(New Integer() {100, 0, 0, 0})

{% endhighlight %}
