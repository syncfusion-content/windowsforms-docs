---
layout: post
title: Button Types| WindowsForms | Syncfusion
description: Button Types
platform: WindowsForms
control: SfButton
documentation: ug
---

# Button Types
This section describes about various types supported by the **SfButton**.

## Text and Image Button

The text and image can be displayed inside the **SfButton** by initializing the **Text** and **Image** properties.

{% highlight c# %}
//Adding the text value.
this.sfButton1.Text = Print;

//Adding the image value to SfButton
this.sfButton1.Image = Image.FromFile(@"..\..\Data\Image1.png");

{% endhighlight %}

![](SfButton_images/SfButton_img2.jpeg)

### Positioning Text and Image

The text and image positions can be adjusted by using the **TextImageRelation** property.

{% highlight c# %}
//Initializing the text and image positions.
sfButton1.TextImageRelation = TextImageRelation.ImageBeforeText;

{% endhighlight %}

![](SfButton_images/SfButton_img3.jpeg)

### Spacing between Text and Image

The space between the text and image can be adjusted by using the **TextMargin** and **ImageMargin** properties.

{% highlight c# %}
//Adjust the text margin of the SfButton
sfButton1.TextMargin = new Padding(3, 3, 3, 3);

//Adjust the image margin of the SfButton
sfButton1.ImageMargin = new Padding(3, 3, 3, 3);

{% endhighlight %}

## Image Button

**SfButton** can be displayed only with image, by setting the empty string value to **Text** property and initialize the image value to **Image** property. The size of the image can be changed by using the **ImageSize** property.

![](SfButton_images/SfButton_img4.jpeg)

## Icon Button

**SfButton** can be displayed only with icon, by setting the empty string value to the **Text** property and initialize the icon value to **Image** property. You can able to show the icon alone button, by setting the borders to null and setting the back color of button which is same as the background area.

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
![](SfButton_images/SfButton_img5.jpeg)
