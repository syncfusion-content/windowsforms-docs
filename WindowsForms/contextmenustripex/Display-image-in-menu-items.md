---
layout: post
title: Display Image | Windows Forms | Syncfusion
description: Display Image in the context menu items
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# Display image in menu items

> NOTE:       
>1. Image can be set only for menu items not for combobox and textbox.              
>2. Image will be displayed only if **ContextMenuStripEx.ShowImageMargin** property is set to "true".

## Through Designer

 Once menu items are added, we can set the image by right-clicking on the particular item in the designer and select **Properties** option. Now, in the **Properties** panel, under **Appearance > Image** we need to browse and set the respective image.

![](DisplayImage_Images/ShowImageMargin.png)

![](DisplayImage_Images/Properties.png)

![](DisplayImage_Images/Image1.png)

## Through Code

Images can be added to menu items directly via the **Image** property. The following code snippet illustrates the same.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.ShowImageMargin = true;
this.toolStripMenuItem1.Image = System.Drawing.Image.FromFile(@"..\..\..\new.png");
this.toolStripMenuItem2.Image = System.Drawing.Image.FromFile(@"..\..\..\copy.png");

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.ShowImageMargin = True
Me.toolStripMenuItem1.Image = System.Drawing.Image.FromFile("..\..\..\new.png")
Me.toolStripMenuItem2.Image = System.Drawing.Image.FromFile("..\..\..\copy.png")

{% endhighlight %}
{% endtabs %}

![](DisplayImage_Images/Image2.png)

