---
layout: post
title: Appearance Settings | WindowsForms | Syncfusion®
description: Learn here about how to set the different appearance of the Syncfusion® Windows Forms MaskedEditBox control.
platform: windowsforms
control: MaskedEditBox
documentation: ug
--- 
# Appearance Settings in MaskedEditBox

## Background settings

The background settings of the MaskedEditBox control are discussed below.

### Background color

You can set the background color for the [MaskedEditBox](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html) control by using the [BackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_BackColor) property.

<table>
<tr>
<th>
MaskedEditBox Property</th><th>
Description</th></tr>
<tr>
<td>
BackColor</td><td>
Specifies the background color of the component.</td></tr>
</table>

{% tabs %}

{% highlight C# %}  

this.maskedEditBox1.BackColor = System.Drawing.Color.PaleGoldenrod;

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.BackColor = System.Drawing.Color.PaleGoldenrod

{% endhighlight %}

{% endtabs %}

![Set the background color to WF MaskedEditBox](MaskedEditBox-images/MarkedEditBox-img15.png)


You can also reset the background color for MaskedEditBox control by using the [ResetBackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MaskedEditBox.html#Syncfusion_Windows_Forms_Tools_MaskedEditBox_ResetBackColor) method.

<table>
<tr>
<th>
Method</th><th>
Description</th></tr>
<tr>
<td>
ResetBackColor</td><td>
Resets the BackColor property to its default value.</td></tr>
</table>

## Foreground settings

The foreground settings of the MaskedEditBox control are discussed below.

### Foreground color

You can set the foreground color for MaskedEditBox Control by using the [ForeColor](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.textboxbase.forecolor?redirectedfrom=MSDN&view=netcore-3.1#System_Windows_Forms_TextBoxBase_ForeColor) property.

<table>
<tr>
<th>
MaskedEditBox Property</th><th>
Description</th></tr>
<tr>
<td>
ForeColor</td><td>
Specifies the foreground color of this component, which is used to display text.</td></tr>
</table>


{% tabs %}

{% highlight C# %}  

this.maskedEditBox1.ForeColor = System.Drawing.Color.DarkMagenta;

{% endhighlight %}

{% highlight VB %} 

Me.maskedEditBox1.ForeColor = System.Drawing.Color.DarkMagenta

{% endhighlight %}

{% endtabs %}

![Set the fore color to the text of WF MaskedEditBox](MaskedEditBox-images/MarkedEditBox-img16.png)

## Visual style

You can set the visual style to the MaskedEditBox control by using [Style](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.TextBoxExt.html#Syncfusion_Windows_Forms_Tools_TextBoxExt_Style) property.

{% tabs %}

{% highlight C# %}

this.maskedEditBox1.Style = TextBoxExt.theme.Office2016DarkGray;

{% endhighlight %}

{% endtabs %}

![Set the visual style to WF MaskedEditBox control](MaskedEditBox-images/WF-maskededitbox-style.png)

