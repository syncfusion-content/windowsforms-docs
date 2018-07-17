---
layout: post
title: Button Types| WindowsForms | Syncfusion
description: Button Types
platform: WindowsForms
control: SfButton
documentation: ug
---

# Button Types

This section describes various types of button supported by the SfButton.

## Text and Image Button

The text and image can be displayed inside the SfButton by initializing the [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfButton~Text.html) and [Image](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfButton~Image.html) properties.

{% tabs %}
{% highlight c# %}
//Adding the text value.
this.sfButton1.Text = Print;

//Adding the image value to SfButton
this.sfButton1.Image = Image.FromFile(@"..\..\Data\Image1.png");

{% endhighlight %}
{% endtabs %}

![](SfButton_images/SfButton_img2.jpeg)

### Positioning Text and Image

The text and image positions can be adjusted by using the [TextImageRelation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfButton~TextImageRelation.html) property.

{% tabs %}
{% highlight c# %}
//Initializing the text and image positions.
sfButton1.TextImageRelation = TextImageRelation.ImageBeforeText;

{% endhighlight %}
{% endtabs %}

![](SfButton_images/SfButton_img3.jpeg)

### Spacing between Text and Image

The space between the text and image can be adjusted by using the [TextMargin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfButton~TextMargin.html) and [ImageMargin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfButton~ImageMargin.html) properties.

{% tabs %}
{% highlight c# %}
//Adjust the text margin of the SfButton
sfButton1.TextMargin = new Padding(3, 3, 3, 3);

//Adjust the image margin of the SfButton
sfButton1.ImageMargin = new Padding(3, 3, 3, 3);

{% endhighlight %}
{% endtabs %}

## Image Button

The SfButton can be displayed only with the image by setting the empty string value to the [Text](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfButton~Text.html) property and initialize the image value to the [Image](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfButton~Image.html) property. The size of the image can be changed by using the ImageSize property.

![](SfButton_images/SfButton_img4.jpeg)

## Icon Button

The SfButton can be displayed only with an icon by setting the empty string value to the Text property and initialize the icon value to [Image](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Core.WinForms~Syncfusion.WinForms.Controls.SfButton~Image.html) property. You can show the icon button alone by setting the borders to null, and setting the back color of the button same as the background area.

{% tabs %}
{% highlight c# %}
//To show the icon button, initialize the background color same as the screen or background area color.
this.IconButton2.Style.BackColor = System.Drawing.Color.White;
this.IconButton2.Style.DisabledBackColor = System.Drawing.Color.White;
this.IconButton2.Style.FocusedBackColor = System.Drawing.Color.White;
this.IconButton2.Style.HoverBackColor = System.Drawing.Color.White;
this.IconButton2.Style.HoverBackColor = System.Drawing.Color.White;

//Sets the border to null for all button states.
IconButton2.Style.Border = null;
IconButton2.Style.HoverBorder = null;
IconButton2.Style.FocusedBorder = null;
IconButton2.Style.PressedBorder = null;

{% endhighlight %}
{% endtabs %}
![](SfButton_images/SfButton_img5.jpeg)
