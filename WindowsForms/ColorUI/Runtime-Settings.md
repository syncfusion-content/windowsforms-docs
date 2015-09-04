---
layout: post
title: Runtime Settings
description: runtime settings
platform: WindowsForms
control: ColorUI
documentation: ug
---
# Runtime Settings

At run time a particular color group tab should be focussed or selected. Use SelectedColorGroup property of the ColorUI property for this purpose.

The options are as follows. 

* CustomColors
* StandardColors
* SystemColors
* UserColors
* None (Default)

Use SelectedColor property to specify the initially selected color. 



{% highlight c# %}

this.colorUIControl1.SelectedColorGroup = Syncfusion.Windows.Forms.ColorUISelectedGroup.StandardColors;

this.colorUIControl1.SelectedColor = System.Drawing.Color.OrangeRed;


{% endhighlight  %}
{% highlight vbnet %}




Me.colorUIControl1.SelectedColorGroup = Syncfusion.Windows.Forms.ColorUISelectedGroup.StandardColors;

Me.colorUIControl1.SelectedColor = System.Drawing.Color.OrangeRed;

{% endhighlight %}

![](ColorUI_images/Overview_img238.jpeg) 



N> These property settings can be reset using ResetSelectedColorGroup() and ResetSelectedColor() methods.

{% seealso %}
[Color Groups](/windowsforms/colorui/color-groups)
{% endseealso %}


