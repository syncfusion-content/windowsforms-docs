---
layout: post
title: ComboDropDown-Appearance | WindowsForms | Syncfusion
description: Learn here all about the appearance settings of Syncfusion Windows Forms ComboDropDown control and more. 
platform: WindowsForms
control: ComboDropDown
documentation: ug
---

# Windows Forms ComboDropDown Appearance

This section discusses the appearance settings for ComboDropDown control.

## Border Styles

The below properties lets you set 3D border style for the control. 


<table>
<tr>
<th>
Properties</th><th>
Description</th></tr>
<tr>
<td>
Border3DStyle</td><td>
Sets the 3D border style for the control. The options are,<ul><li>{{ 'RaisedOuter' | markdownify }}</li><li>{{ 'RaisedInner' | markdownify }}</li><li>{{ 'SunkenOuter' | markdownify }}</li><li>{{ 'SunkenInner' | markdownify }}</li><li>{{ 'Raised' | markdownify }}</li><li>{{ 'Sunken' | markdownify }}</li><li>{{ 'Etched' | markdownify }}</li><li>{{ 'Flat' | markdownify }}</li><li>{{ 'Adjust'  | markdownify }}</li><li>{{ 'Bump' | markdownify }}</li></ul><br>FlatStyle property should be set to Standard to effect this settings.</td></tr>
<tr>
<td>
BorderSides</td><td>
Specifies the sides of the control which should have border.</td></tr>
<tr>
<td>
FlatStyle</td><td>
Specifies the flat style to be applied to the ComboDropDown control. The styles are,Flat - The control and the button appear flat.System - Appearance based on the OS used andStandard - The control and button appears three-dimensional.</td></tr>
<tr>
<td>
FlatBorderColor</td><td>
Specifies the border color for the control, when FlatStyle is set to "Flat". </td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.comboDropDown1.Border3DStyle = System.Windows.Forms.Border3DStyle.RaisedInner;
this.comboDropDown1.BorderSides = System.Windows.Forms.Border3DSide.All;

{% endhighlight %}

{% highlight vb %}

Me.comboDropDown1.Border3DStyle = System.Windows.Forms.Border3DStyle.RaisedInner
Me.comboDropDown1.BorderSides = System.Windows.Forms.Border3DSide.All

{% endhighlight %}
{% endtabs %}

![Border styles in Windows Forms ComboDropDown](Overview_images/Overview_img286.jpeg) 



N> ComboDropDown.Style property should be set to Default to effect the above settings. 

{% seealso %}
[Themes and Styles](/windowsforms/combodropdown/themes-and-styles) topic.
{% endseealso %} 
