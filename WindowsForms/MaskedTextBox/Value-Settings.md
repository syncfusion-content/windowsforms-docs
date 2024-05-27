---
layout: post
title: Value settings in Windows Forms MaskedEditBox Control | Syncfusion
description: Learn here all about value settings in Syncfusion Windows Forms MaskedEditBox control, its elements, and more.
platform: WindowsForms
control: MaskedEditBox
documentation: ug
--- 
# Value settings in Windows Forms MaskedEditBox

The value settings of the MaskedEditBox control are discussed below.

## MinValue and MaxValue

You can set the minimum and maximum values of the [MaskedEditBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html) control by using [MinValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_MinValue) and [MaxValue](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_MaxValue) properties.



<table>
<tr>
<th>
MaskedEditBox Properties</th><th>
Description</th></tr>
<tr>
<td>
MinValue</td><td>
Specifies the minimum value that can be set through the MaskedEditBox. The default value is set to '0'.</td></tr>
<tr>
<td>
MaxValue</td><td>
Specifies the maximum value that can be set through the MaskedEditBox.The default value is set to '79228162514264337593543950335'.</td></tr>
</table>


{% tabs %}

{% highlight C# %}  


this.maskedEditBox1.MinValue = new decimal(new int[] {50, 0, 0, 0});
this.maskedEditBox1.MaxValue = new decimal(new int[] {100, 0, 0, 0});

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.MinValue = New Decimal(New Integer() {50, 0, 0, 0})
Me.maskedEditBox1.MaxValue = New Decimal(New Integer() {100, 0, 0, 0})

{% endhighlight %}

{% endtabs %}
