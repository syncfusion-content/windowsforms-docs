---
layout: post
title: Runtime Settings | WindowsForms | Syncfusion
description: runtime settings
platform: WindowsForms
control: ColorUI
documentation: ug
---
# Runtime Settings

At run time a particular color group tab should be focused or selected. Use SelectedColorGroup property of the ColorUI property for this purpose.

The options are as follows. 

* CustomColors
* StandardColors
* SystemColors
* UserColors
* None (Default)

Use SelectedColor property to specify the initially selected color. 

{% tabs %}
{% highlight c# %}

this.colorUIControl1.SelectedColorGroup = Syncfusion.Windows.Forms.ColorUISelectedGroup.StandardColors;
this.colorUIControl1.SelectedColor = System.Drawing.Color.OrangeRed;

{% endhighlight  %}

{% highlight vb %}

Me.colorUIControl1.SelectedColorGroup = Syncfusion.Windows.Forms.ColorUISelectedGroup.StandardColors;
Me.colorUIControl1.SelectedColor = System.Drawing.Color.OrangeRed;

{% endhighlight %}
{% endtabs %}

![](ColorUI_images/Overview_img238.jpeg) 

N> These property settings can be reset using ResetSelectedColorGroup() and ResetSelectedColor() methods.

{% seealso %}

[Color Groups](/windowsforms/colorui/color-groups)

{% endseealso %}
