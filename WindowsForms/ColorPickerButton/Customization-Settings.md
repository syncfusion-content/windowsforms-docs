---
layout: post
title: Customization Settings
description: customization settings
platform: WindowsForms
control: ColorPickerButton 
documentation: ug
---
# Customization Settings

ColorPickerButton displays the ColorUIControl as its dropdown. ColorPickerButton has properties to customize the ColorUIControl. Refer the [User Guide](/windowsforms/colorui/overview) for ColorUIControl. The size for the dropdown, i.e, ColorUIControl can be set using ColorUISize property.


{% highlight c# %}


this.colorPickerButton1.ColorUISize = new System.Drawing.Size(250, 280);

{% endhighlight  %}

{% highlight vbnet  %}



Me.colorPickerButton1.ColorUISize = New System.Drawing.Size(250, 280)

{% endhighlight  %}

![](ColorPickerButton_images/Overview_img249.jpeg) 



## ColorPicker Appearance

The appearance and behavior of the ColorPickerButton can be controlled using the below properties.

Table203: Property Table

<table>
<tr>
<th>
ColorPickerButton Properties</th><th>
Description</th></tr>
<tr>
<td>
SelectedAsBackColor</td><td>
Specifies whether ColorPickerButton.SelectedColor is set as the button backcolor.</td></tr>
<tr>
<td>
SelectedAsText</td><td>
Specifies whether ColorPickerButton.SelectedColor is set as the button text value.</td></tr>
</table>




{% highlight c# %}

this.colorPickerButton1.SelectedAsBackcolor = true;

this.colorPickerButton1.SelectedAsText = true;


{% endhighlight  %}
{% highlight vbnet %}




Me.colorPickerButton1.SelectedAsBackcolor = True

Me.colorPickerButton1.SelectedAsText = True

{% endhighlight  %}

![](ColorPickerButton_images/Overview_img250.jpeg) 



 {% seealso %}
[Color Groups](/windowsforms/colorui/color-groups),[Tab Text](/windowsforms/colorui/tab-text), [ColorUIControlAppearance](/windowsforms/colorui/coloruicontrol-appearance), [Runtime Settings of ColorUIControl](/windowsforms/colorui/runtime-settings).
{% endseealso %}
 
 
