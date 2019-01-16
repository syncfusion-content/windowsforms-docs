---
layout: post
title: Appearance Customization | Windows Forms | Syncfusion
description: We can customize the Text, Image Display, Background Color, Font, Foreground Color, etc..
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# Appearance Customization 

## Background Color

The **BackColor** property is to set the background color of ContextMenuStrip control.

### Through Designer

Once ContextMenuStripEx control is added, right-clicking on the control in the designer and select **Properties** option. Now, in the **Properties** panel, under **Appearance > BackColor** we need to choose the color.

![Background Color](Appearance_Images/Properties.png)

![Background Color](Appearance_Images/Properties1.png)

### Through Code

The below code snippet will explain how to set background color of ContextMenuStrip control.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.BackColor = System.Drawing.Color.SkyBlue;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.BackColor = System.Drawing.Color.SkyBlue

{% endhighlight %}
{% endtabs %}

![Background Color](Appearance_Images/BackColor.png)

## Font

The **Font** property is to set the "FontFamily" and "FontStyle" of ContextMenuStrip control.

### Through Designer

We can set the font for menu item in the **Properties** panel, under **Appearance > Font** section.

![Font](Appearance_Images/Properties2.png)

### Through Code

The below code snippet will explain the procedure to set font for menu items.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.Font = new System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Strikeout);

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.Font = New System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Strikeout)

{% endhighlight %}
{% endtabs %}

![Font](Appearance_Images/Font.png)

## Foreground Color

The **ForeColor** property is to set foreground color for menu items.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.ForeColor = System.Drawing.Color.Red;

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.ForeColor = System.Drawing.Color.Red

{% endhighlight %}
{% endtabs %}

![Foreground](Appearance_Images/ForeColor.png)

## Size

The **Size** property is to set the height and width of context menu items.

>**NOTE**:
In-order to set size for context menu, set **AutoSize** property to false.

### Through Designer

We can set the size for menu item in the **Properties** panel, under **Layout > Size** section.

![Size](Appearance_Images/Properties3.png)

### Through Code

The below code snippet is to set the size of context menu.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.AutoSize = false;
this.contextMenuStripEx.Size = new System.Drawing.Size(200, 250);

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.AutoSize = False
Me.contextMenuStripEx.Size = New System.Drawing.Size(200, 250)

{% endhighlight %}
{% endtabs %}

![Size](Appearance_Images/Size.png)

## Text

The **Text** property is used to set the caption of ContextMenuStripEx control.

### Through Designer

We can set the text in the **Properties** panel, under **Appearance > Text** section.

![Text](Appearance_Images/Properties4.png)

### Through Code

The below code snippet will explain how to set text for ContextMenu.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.Text = "Context Menu";

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.Text = "Context Menu"

{% endhighlight %}
{% endtabs %}

![Text](Appearance_Images/Text.png)

## Background Image

The **BackgroundImage** property is to set the background image of ContextMenuStripEx control.

### Through Designer

We can set background image in the **Properties** panel, under **Appearance > BackgroundImage** section.

![Background Image](Appearance_Images/Properties5.png)

### Through Code

The below code snippet is to set the background image of ContextMenu.

{% tabs %}
{% highlight c# %}

 this.contextMenuStripEx.BackgroundImage = System.Drawing.Image.FromFile(@"..\..\..\cut.png");

{% endhighlight %}

{% highlight vb %}

 Me.contextMenuStripEx.BackgroundImage = System.Drawing.Image.FromFile("..\..\..\cut.png")

{% endhighlight %}
{% endtabs %}

![Background Image](Appearance_Images/BackgroundImage.png)



