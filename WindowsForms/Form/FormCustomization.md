---
layout: post
title: Form Customization in Windows Forms Form control | Syncfusion
description: Learn about Form Customization support in Syncfusion® Windows Forms Form (SfForm) control and more details.
platform: WindowsForms
control: SfForm
documentation: ug
---

# Form Customization in Windows Forms Form (SfForm)

## Form icon

A form icon designates the picture that represents the form in the taskbar as well as the icon displayed on the title bar of the form.

### Changing form icon

The form icon displayed on the title bar and task bar can be changed by using the [Icon](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.form.icon?view=windowsdesktop-7.0&viewFallbackFrom=net-5.0) property.

{% tabs %}
{% highlight c# %}
this.Icon = new Icon("sfIcon.ico");
{% endhighlight %}
{% highlight vb %}
Me.Icon = New Icon("sfIcon.ico")
{% endhighlight %}
{% endtabs %}

![WindowsForms Form shows icon](formcustomization_images/windowsforms-form-shows-icon.png)

### Form icon alignment

The form icon can be aligned vertically and horizontally by using the [Style.TitleBar.IconVerticalAlignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_IconVerticalAlignment) and [Style.TitleBar.IconHorizontalAlignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.TitleBarStyleInfo.html#Syncfusion_WinForms_Controls_Styles_TitleBarStyleInfo_IconHorizontalAlignment) properties.

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

![WindowsForms Form icon is alignment](formcustomization_images/windowsforms-form-icon-alignment.png)

## Form border

Appearance of the border can be customized by using the [Style.Border](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.FormVisualStyle.html#Syncfusion_WinForms_Controls_Styles_FormVisualStyle_Border) and [Style.InactiveBorder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.FormVisualStyle.html#Syncfusion_WinForms_Controls_Styles_FormVisualStyle_InactiveBorder) properties.

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

![WindowsForms Form with customized border color](formcustomization_images/windowsforms-form-border.png)

## Shadow effect

Shadow effect of the form can be customized by using the [Style.ShadowOpacity](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.FormVisualStyle.html#Syncfusion_WinForms_Controls_Styles_FormVisualStyle_ShadowOpacity) and [Style.InactiveShadowOpacity](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.Styles.FormVisualStyle.html#Syncfusion_WinForms_Controls_Styles_FormVisualStyle_InactiveShadowOpacity) properties.

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

![WindowsForms Form with shadow effect](formcustomization_images/windowsforms-form-shadow-effect.png)

N> Shadow can be disabled by setting the `ShadowOpacity` property as zero.

## Rounded corner

Rounded corners for `SfForm` can be enabled by using the [AllowRoundedCorners](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Controls.SfForm.html#Syncfusion_WinForms_Controls_SfForm_AllowRoundedCorners) property. Rounded corners are not supported in OS versions lower than Windows 11. Enabling `AllowRoundedCorners` property will have no effect on those operating systems. 

N> When the rounded corners are enabled, the border and shadow of the Form are drawn by the operating system.

{% tabs %}

{% highlight C# %}

this.AllowRoundedCorners = true;

{% endhighlight %}

{% highlight VB %}

Me.AllowRoundedCorners = true
 
{% endhighlight %}

{% endtabs %}


![WindowsForms Form with rounded corners](formcustomization_Images/windowsforms-form-rounded-corner.png)

