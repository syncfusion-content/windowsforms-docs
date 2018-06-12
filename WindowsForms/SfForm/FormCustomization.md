---
layout: post
title: Form Customization| WindowsForms | Syncfusion
description: Form Customization
platform: WindowsForms
control: SfForm
documentation: ug
---

# Form Customization

## Form icon

A form icon designates the picture that represents the form in the taskbar as well as the icon displayed on the title bar of the form.

### Changing form icon

The form icon displayed on the title bar and task bar can be changed by using the [Icon](https://msdn.microsoft.com/en-us/library/system.windows.forms.form.icon(v=vs.110).aspx) property.

{% tabs %}
{% highlight c# %}
this.Icon = new Icon("sfIcon.ico");
{% endhighlight %}
{% highlight vb %}
Me.Icon = New Icon("sfIcon.ico")
{% endhighlight %}
{% endtabs %}

![](FormCustomization_images/Form_Image1.png)

### Form icon alignment

The form icon can be aligned vertically and horizontally by using the [Style.TitleBar.IconVerticalAlignment](https://help.syncfusion.com/cr/cref_files/windowsforms/core/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo~IconVerticalAlignment.html) and [Style.TitleBar.IconHorizontalAlignment](https://help.syncfusion.com/cr/cref_files/windowsforms/core/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo~IconHorizontalAlignment.html) properties.

{% tabs %}
{% highlight c# %}
this.Style.TitleBar.IconVerticalAlignment = VerticalAlignment.Top;
this.Style.TitleBar.IconHorizontalAlignment = HorizontalAlignment.Right;
{% endhighlight %}
{% highlight vb %}
Me.Style.TitleBar.IconVerticalAlignment = VerticalAlignment.Top
Me.Style.TitleBar.IconHorizontalAlignment = HorizontalAlignment.Right
{% endhighlight %}
{% endtabs %}

![](FormCustomization_images/Form_Image2.png)

## Form border

Appearance of the border can be customized by using the [Style.Border](https://help.syncfusion.com/cr/cref_files/windowsforms/core/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.Styles.FormVisualStyle~Border.html) and [Style.InactiveBorder](https://help.syncfusion.com/cr/cref_files/windowsforms/core/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.Styles.FormVisualStyle~InactiveBorder.html) properties.

{% tabs %}
{% highlight c# %}
//Customize active state border appearance
this.Style.Border = new Pen(Color.SkyBlue, 2);

//Customize inactive state border appearance
this.Style.InactiveBorder = new Pen(Color.LightGray, 2);
{% endhighlight %}
{% highlight vb %}
'Customize active state border appearance
Me.Style.Border = New Pen(Color.SkyBlue, 2)

'Customize inactive state border appearance
Me.Style.InactiveBorder = New Pen(Color.LightGray, 2)
{% endhighlight %}
{% endtabs %}

![](FormCustomization_images/Form_Image3.png)

## Shadow effect

Shadow effect of the form can be customized by using the [Style.ShadowOpacity](https://help.syncfusion.com/cr/cref_files/windowsforms/core/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.Styles.FormVisualStyle~ShadowOpacity.html) and [Style.InactiveShadowOpacity](https://help.syncfusion.com/cr/cref_files/windowsforms/core/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.Styles.FormVisualStyle~InactiveShadowOpacity.html) properties.

{% tabs %}
{% highlight c# %}
//Customize the shadow for active state
this.Style.ShadowOpacity = 255;

//Customize the shadow for inactive state
this.Style.InactiveShadowOpacity = 100;
{% endhighlight %}
{% highlight vb %}
'Customize the shadow for active state
Me.Style.ShadowOpacity = 255

'Customize the shadow for inactive state
Me.Style.InactiveShadowOpacity = 100
{% endhighlight %}
{% endtabs %}

![](FormCustomization_images/Form_Image4.png)

N> Shadow can be disabled by setting the `ShadowOpacity` property as zero.
