---
layout: post
title: How-to-change-the-BackColor-for-a-disabled-ComboBoxAdv-control
description: how to change the backcolor for a disabled comboboxadv control
platform: windowsforms
control: Editors Package
documentation: ug
---

#  How to change the BackColor for a disabled ComboBoxAdv control?

Previously, once the ComboBoxAdv control was disabled, the BackColor property of the control could not be changed. This was due to the fact that, by default, all the properties of the control were disabled once the control was disabled.

Now, you can set the BackColor for the ComboBoxAdv control even in its disabled state by using the UseBackColor property.

{% highlight c# %}

//To change the backcolor of disabled ComboBoxAdv

this.comboBoxAdv1.UseBackColor = true;

this.comboBoxAdv1.BackColor = Color.Red;

{% endhighlight %}

{% highlight vbnet %}

'To change the backcolor of disabled comboBoxAdv

Me.comboBoxAdv1.UseBackColor = True

Me.comboBoxAdv1.BackColor = Color.Red

{% endhighlight %}