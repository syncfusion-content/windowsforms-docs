---
layout: post
title: How to change the BackColor for a disabled ComboBo | Syncfusion
description: Learn about How to Change the BackColor for a Disabled in Syncfusion Windows Forms ComboBoxAdv(Classic) control and more details.
platform: WindowsForms
control: ComboBoxAdv
documentation: ug
---
# How to change the BackColor for a disabled ComboBoxAdv

This page explains How to Change the BackColor for a Disabled ComboBoxAdv Control and more details.

##  How to Change the BackColor for a Disabled ComboBoxAdv Control

Previously, once the ComboBoxAdv control was disabled, the BackColor property of the control could not be changed. This was due to the fact that, by default, all the properties of the control were disabled once the control was disabled.

Now, you can set the BackColor for the ComboBoxAdv control even in its disabled state by using the UseBackColor property.

{% tabs %}
{% highlight c# %}

//To change the backcolor of disabled ComboBoxAdv
this.comboBoxAdv1.UseBackColor = true;
this.comboBoxAdv1.BackColor = Color.Red;


{% endhighlight %}


{% highlight vb %}

'To change the backcolor of disabled comboBoxAdv
 Me.comboBoxAdv1.UseBackColor = True
 Me.comboBoxAdv1.BackColor = Color.Red

{% endhighlight %}
{% endtabs %}