---
layout: post
title: Appearance| WindowsForms | Syncfusion
description: Appearance
platform: WindowsForms
control: SfButton
documentation: ug
---

# Appearance
This section describes how to customize the appearance of the **SfButton** control.

## Background
The background of the **SfButton** can be filled with solid color, gradient colors or image. 

### BackColor
The background of the **SfButton** can be filled with solid color by initializing the **BackColor** property.


{% highlight c# %}
//Initialize the Gray color to the background of SfButton
sfButton1.BackColor = Color.Gray;

{% endhighlight %}

### Gradient BackColor

The background of the **SfButton** can be filled with gradient colors by initializing the **GradientBrush** property.


{% highlight c# %}
//Initialize the gradient background brush to SfButton.
sfButton1.Style.GradientBrush = new BrushInfo(GradientStyle.ForwardDiagonal, Color.Green, Color.Yellow);

{% endhighlight %}

Please find the **SfButton** with gradient background below,

![](SfButton_images/SfButton_img9.jpeg)

### Background Image
The background of the **SfButton** can be filled with image by initialize the **BackgroundImage** property. The background image layout can be changing by initializing any one of **ImageLayout** enumeration value to **BackgroundImageLayout** property.

{% highlight c# %}

//Initializing the image value to BackgroundImage property.
this.sfButton1.BackgroundImage = Image.FromFile(@"..\..\Data\BackgroundImage.png");

//Sets the center image layout to the Background image.
this.sfButton1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;

{% endhighlight %}

Please find the **SfButton** with background image with center layout below,

![](SfButton_images/SfButton_img10.jpeg)

## Customizing appearance based on Button State

**SfButton** provides options to customize the appearance based on the button state.

### BackColor and ForeColor
The backcolor and fore color of the **SfButton** in hover state can be changed by using the **HoverBackColor** and **HoverForeColor** properties. Like the hover state, you can able to customize in pressed state, focused state, normal state and disable state of the SfButton.

{% highlight c# %}
//Initializing the back color.
sfButton1.Style.BackColor = Color.Gray;

//Initializing the fore color.
sfButton1.Style.ForeColor = Color.Black;

//Initializing the hover back color.
sfButton1.Style.HoverBackColor = Color.Gray;

//Initializing the hover fore color.
sfButton1.Style.HoverForeColor = Color.White;

//Initializing the focused back color.
sfButton1.Style.FocusedBackColor = Color.LightGray;

//Initializing the focused fore color.
sfButton1.Style.FocusedForeColor = Color.Black;
 
{% endhighlight %}

Please find the SfButton on hover state below,

![](SfButton_images/SfButton_img11.jpeg)

### Image

**SfButton** allow to change the image in hover state by using to **HoverImage** property. Like hover state can able to change the image in focused, disabled and pressed states by using the**FocusedImage**, **DisabledImage** and **PressedImage** properties.

{% highlight c# %}
//Initializing the image for SfButton default state
sfButton1.Style.Image = Image.FromFile(@"..\..\Data\DefaultImage.png");

//Initializing the hover image for SfButton.
sfButton1.Style.HoverImage = Image.FromFile(@"..\..\Data\HoverImage.png");

//Initializing the pressed image for SfButton.
sfButton1.Style.PressedImage = Image.FromFile(@"..\..\Data\PressedImage.png");

//Initializing the Focused image for SfButton.
sfButton1.Style.FocusedImage = Image.FromFile(@"..\..\Data\FocusedImage.png");

//Initializing the disabled image for SfButton.
sfButton1.Style.DisabledImage = Image.FromFile(@"..\..\Data\DisabledImage.png");

{% endhighlight %}

Please find the SfButton in normal state below,

![](SfButton_images/SfButton_img12.jpeg)

Find the SfButton in hover state below,

![](SfButton_images/SfButton_img13.jpeg)

### Border

The border can be changed based on the button state by using the **Border**, **HoverBorder**, **FocusedBorder**, **PressedBorder** and **DisabledBorder** properties.
Please find the below code with hover border customization,

{% highlight c# %}
//Initialize the hover border
sfButton6.Style.HoverBorder = new Pen(Color.DarkGray, 2);
{% endhighlight %}


![](SfButton_images/SfButton_img14.jpeg)

## Animating the image

The animation image (.gif image) can be displayed in **SfButton**, by enable the **AllowImageAnimation** property and initialize the animation image to **Image** property.

{% highlight c# %}
//Enable the Image animation
sfButton1.AllowImageAnimation = true;

//Initialize the animation image to SfButton.
sfButton1.Style.Image = Image.FromFile(@"..\..\Data\animationImage.gif");

{% endhighlight %}


![](SfButton_images/SfButton_img15.jpeg)

**Note**

The **SfButton** does not allow to animate the image if set the animated image to **FocusedImage** or **HoverImage** or **PressedImage**. So If want to show the animation image inside the button, initialize the animation image (gif image) to the **Image** property.

## Show or hide focus rectangle

A thin dotted rectangular frame can be drawn inside the **SfButton** when it got focus, this feature can be enabled by setting the **FocusRectangleVisible** property to true.

{% highlight c# %}
//Enable the focus rectangle for SfButton
sfButton1.FocusRectangleVisible = true;

{% endhighlight %}


![](SfButton_images/SfButton_img16.jpeg)

## Rounded rectangle button

**SfButton** with rounded rectangle shape can be implemented by programmatically drawing the border by raising the **Paint** event.

To draw the rounded rectangle shape for **SfButton** follow the below steps,
1. Raise the Paint event of the SfButton,

{% highlight c# %}
//Raises the paint event of the SfButton
sfButton1.Paint += sfButton1_Paint;
{% endhighlight %}

2. Calculate the rounded rectangle area for the client area of the button and set to the region of **SfButton**. And draw the border with calculated rounded rectangle area. Please find the paint event method below,

{% highlight c# %}
private void sfButton1_Paint(object sender, PaintEventArgs e)
{
    //Rounded rectangle corder radius. The radius must be less than 10.
    int radius = 5;

    e.Graphics.SmoothingMode = SmoothingMode.AntiAlias;
    Rectangle rect = new Rectangle(this.sfButton1.ClientRectangle.X + 1, 
                                   this.sfButton1.ClientRectangle.Y + 1,
                                   this.sfButton1.ClientRectangle.Width - 2,
                                   this.sfButton1.ClientRectangle.Height - 2);

    sfButton1.Region = new Region(GetRoundedRect(rect, radius));
    rect = new Rectangle(rect.X + 1, rect.Y + 1, rect.Width - 2, rect.Height - 2);
    e.Graphics.DrawPath(new Pen(Color.Red), GetRoundedRect(rect, radius));
}
{% endhighlight %}

Please find the **SfButton** with rounded rectangle below,

![](SfButton_images/SfButton_img17.jpeg)

Please refer the below sample shows how to implement the rounded rectangle in **SfButton** control.

[Sample](http://www.syncfusion.com/downloads/support/directtrac/general/SFBUTT~1449710690.ZIP#)

**Note**

When using above implementation to draw the rounded rectangle, the border customization properties like **Border**, **HoverBorder**, **PressedBorder**, **FocusedBorder** and **DisabledBorder** does not work.