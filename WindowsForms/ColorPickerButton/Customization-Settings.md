---
layout: post
title: Customization Settings | WindowsForms | Syncfusion
description: customization settings
platform: WindowsForms
control: ColorPickerButton 
documentation: ug
---
# Customization Settings

ColorPickerButton displays the ColorUIControl as its dropdown. ColorPickerButton has properties to customize the ColorUIControl. Refer the [User Guide](/windowsforms/colorui/overview) for ColorUIControl. The size for the dropdown, i.e, ColorUIControl can be set using ColorUISize property.

{% tabs %}
{% highlight c# %}

this.colorPickerButton1.ColorUISize = new System.Drawing.Size(250, 280);

{% endhighlight  %}

{% highlight vb %}

Me.colorPickerButton1.ColorUISize = New System.Drawing.Size(250, 280)

{% endhighlight  %}
{% endtabs %}

![](ColorPickerButton_images/Overview_img249.jpeg) 

## ColorPicker Appearance

The appearance and behavior of the ColorPickerButton can be controlled using the below properties.

<table>
<tr>
<th>
ColorPickerButton Properties</th><th>
Description</th></tr>
<tr>
<td>
SelectedAsBackColor</td><td>
Specifies whether ColorPickerButton.SelectedColor is set as the button back color.</td></tr>
<tr>
<td>
SelectedAsText</td><td>
Specifies whether ColorPickerButton.SelectedColor is set as the button text value.</td></tr>
</table>

{% tabs %}
{% highlight c# %}

this.colorPickerButton1.SelectedAsBackcolor = true;
this.colorPickerButton1.SelectedAsText = true;

{% endhighlight  %}

{% highlight vb %}

Me.colorPickerButton1.SelectedAsBackcolor = True
Me.colorPickerButton1.SelectedAsText = True

{% endhighlight  %}
{% endtabs %}

![](ColorPickerButton_images/Overview_img250.jpeg) 

##Visual Style

ColorPickerButton supports visual style such as Office2016White,Office2016Black,Office2016DarkGray,Office2016Colorful,Default and Metro

This style can be set using Appearance property

{% tabs %}
{% highlight c# %}

this.colorPickerButton1.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Colorful;

{% endhighlight  %}

{% highlight vb %}

Me.colorPickerButton1.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Colorful;

{% endhighlight  %}
{% endtabs %}

![](ColorPickerButton_images/colorpickerbutton_office2016colorful.png) 

 {% seealso %}
 
[Color Groups](/windowsforms/colorui/color-groups),[Tab Text](/windowsforms/colorui/tab-text), [ColorUIControlAppearance](/windowsforms/colorui/coloruicontrol-appearance), [Runtime Settings of ColorUIControl](/windowsforms/colorui/runtime-settings).

{% endseealso %}
 
 
