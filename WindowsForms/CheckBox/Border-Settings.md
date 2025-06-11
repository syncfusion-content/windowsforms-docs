---
layout: post
title: Border Settings in Windows Forms CheckBox control | Syncfusion®
description: Learn about Border Settings support in Syncfusion® Windows Forms CheckBox (CheckBoxAdv) control and more details.
platform: windowsforms
control: EditorsPackage
documentation: ug
---

# Border Settings in Windows Forms CheckBox (CheckBoxAdv)

You can change the color and styles of [CheckBoxAdv](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckBoxAdv.html) control border using [Border3DStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_Border3DStyle), [BorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_BorderColor), [BorderSingle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_BorderSingle), [BorderStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_BorderStyle) and [HotBorderColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.CheckRadioBase.html#Syncfusion_Windows_Forms_Tools_CheckRadioBase_HotBorderColor) properties.

<table>
<tr>
<th>
CheckBoxAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
Border3DStyle</td><td>
Indicates the style of the 3D border. The options included are as follows.{{ 'RaisedOuter,' | markdownify }}{{ 'SunkenOuter,' | markdownify }}{{ 'RaisedInner,' | markdownify }}{{ 'SunkenInner,' | markdownify }}{{ 'Raised,' | markdownify }}{{ 'Etched,' | markdownify }}{{ 'Bump,' | markdownify }}{{ 'Sunken,' | markdownify }}{{ 'Adjust and' | markdownify }}{{ 'Flat' | markdownify }}.The default value is set to 'Sunken'.</td></tr>
<tr>
<td>
BorderColor</td><td>
Specifies the color of the 2D border.</td></tr>
<tr>
<td>
BorderSingle</td><td>
Indicates the 2D border style. The options included are as follows.{{ 'Dotted,' | markdownify }}{{ 'Dashed,' | markdownify }}{{ 'Solid,' | markdownify }}{{ 'Inset,' | markdownify }}{{ 'Outset and' | markdownify }}{{ 'None.' | markdownify }}The BorderStyle property should be set to 'FixedSingle'.</td></tr>
<tr>
<td>
BorderStyle</td><td>
Indicates whether the panel should have a border. The options included are given below.{{ 'FixedSingle,' | markdownify }}{{ 'Fixed3D and' | markdownify }}{{ 'None.' | markdownify }}</td></tr>
<tr>
<td>
HotBorderColor</td><td>
Specifies the color of the FixedSingle border when MouseOver.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.checkBoxAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump;
this.checkBoxAdv1.BorderColor = System.Drawing.Color.Red;
this.checkBoxAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted;
this.checkBoxAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;

// BorderStyle must be set to 'FixedSingle'.
this.checkBoxAdv1.HotBorderColor = System.Drawing.Color.Blue;

{% endhighlight %}

{% highlight vb %}

Me.checkBoxAdv1.Border3DStyle = System.Windows.Forms.Border3DStyle.Bump
Me.checkBoxAdv1.BorderColor = System.Drawing.Color.Red
Me.checkBoxAdv1.BorderSingle = System.Windows.Forms.ButtonBorderStyle.Dotted
Me.checkBoxAdv1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle

' BorderStyle must be set to 'FixedSingle'.
Me.checkBoxAdv1.HotBorderColor = System.Drawing.Color.Blue

{% endhighlight %}
{% endtabs %}

![Windows forms CheckBoxAdv Changing the Border color](Overview_images/CheckBoxAdv_bordercolor.jpeg)

![Windows forms CheckBoxAdv Changing the border color during mouse hover on control](Overview_images/CheckBoxAdv_changebordercolor.jpeg)
