---
layout: post
title: Runtime Selection in Windows Forms Color Picker control | Syncfusion®
description: Learn about Runtime Selection support in Syncfusion® Windows Forms Color Picker (ColorPickerUIAdv) control and more details.
platform: windowsforms
control: ColorPickerUIAdv
documentation: ug
---
# Runtime Selection in Windows Forms Color Picker (ColorPickerUIAdv)

The ColorPickerUIAdv control at run time provides a Color dialog, using which we can select and add colors to the color groups.

![Windows forms ColorPickerUIAdv adding new color at runtime](ColorPickerUIAdv_Images/ColorPickerUIAdv_runtimeselection.jpeg) 

## Color Selection at Runtime

Automatic color that has to be selected, when Automatic button is clicked at run time, is set through AutomaticColor property. Default color is black.

{% tabs %}
{% highlight c# %}

this.colorPickerUIAdv1.AutomaticColor = System.Drawing.Color.OrangeRed;

{% endhighlight  %}

{% highlight vb %}

Me.colorPickerUIAdv1.AutomaticColor = System.Drawing.Color.OrangeRed

{% endhighlight  %}
{% endtabs %}

![Windows forms ColorPickerUIAdv showing selected colors from automatic color group](ColorPickerUIAdv_Images/ColorPickerUIAdv_runtimecolorselection.jpeg) 

N>  Height of this Automatic button can be specified in ColorPickerUIAdv.ButtonHeight property. Default value is 23.
