---
layout: post
title: Runtime Selection | WindowsForms | Syncfusion
description: runtime selection
platform: WindowsForms
control: ColorPickerUIAdv
documentation: ug
---
# Runtime Selection

The ColorPickerUIAdv control at run time provides a Color dialog, using which we can select and add colors to the color groups.

![](ColorPickerUIAdv_Images/Overview_img274.jpeg) 



## Color Selection at run time

Automatic color that has to be selected, when Automatic button is clicked at run time, is set through AutomaticColor property. Default color is black.


{% highlight c# %}


this.colorPickerUIAdv1.AutomaticColor = System.Drawing.Color.OrangeRed;


{% endhighlight  %}
{% highlight vbnet %}




Me.colorPickerUIAdv1.AutomaticColor = System.Drawing.Color.OrangeRed
{% endhighlight  %}

![](ColorPickerUIAdv_Images/Overview_img275.jpeg) 



N>  Height of this Automatic button can be specified in ColorPickerUIAdv.ButtonHeight property. Default value is 23.
