---
layout: post
title: Getting Started | WindowsForms | Syncfusion
description: creating colorpickerbutton
platform: WindowsForms
control: ColorPickerButton
documentation: ug
---
# Getting Started

ColorPickerButton is available to the designer by just dragging-and-dropping the ColorPickerButton from the toolbox onto the form. 

![](ColorPickerButton_images/Overview_img247.jpeg) 

It can be created programmatically as discussed below. 

1. Include the required namespace.

{% tabs %}
{% highlight c# %}

using Syncfusion.Windows.Forms.Tools;

{% endhighlight %}

{% highlight vb %}

Imports Syncfusion.Windows.Forms.Tools

{% endhighlight %}
{% endtabs %}

2. Create an instance of the ColorPickerButton control class and add it to the form.

{% tabs %}
{% highlight c# %}

private Syncfusion.Windows.Forms.ColorPickerButton colorPickerButton1;
this.colorPickerButton2 = new Syncfusion.Windows.Forms.ColorPickerButton();
this.colorPickerButton1.Text = "Select a Color";
this.Controls.Add(this.colorPickerButton1);

{% endhighlight %}

{% highlight vb %}

Private colorPickerButton1 As Syncfusion.Windows.Forms.ColorPickerButton
Me.colorPickerButton2 = New Syncfusion.Windows.Forms.ColorPickerButton()
Me.colorPickerButton1.Text = "Select a Color"
Me.Controls.Add(Me.colorPickerButton1)

{% endhighlight %}
{% endtabs %}

3. Clicking this button at runtime will display the ColorUIControl.

   ![](ColorPickerButton_images/Overview_img248.jpeg) 

 {% seealso %}
 
[Appearance and Behavior Settings](/windowsforms/colorpickerbutton/customization-settings)

{% endseealso %}
 
 