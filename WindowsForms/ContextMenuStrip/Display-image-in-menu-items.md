---
layout: post
title: Display Image in Menu Items | Windows Forms | Syncfusion
description: Learn here all about Display image in menu items feature in Syncfusion Windows Forms ContextMenuStrip (ContextMenuStripEx) control and more.
platform: WindowsForms
control: ContextMenuStripEx
documentation: ug
---

# Windows Forms ContextMenuStrip Display image in menu items

Displaying an image besides each menu item helps users to easily identify the operation through iconic representation and also to improve the visual appearance of the context menu item. Images can be added directly via the [`Image`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripitem.image?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripItem_Image) property of each menu item. The size of the images can be adjusted by using the [`ImageScalingSize`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstrip.imagescalingsize?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStrip_ImageScalingSize) property.

> NOTE:       
>1. Image can be set only for menu items not for combobox and textbox.              
>2. Image will be displayed only if [`ShowImageMargin`](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.toolstripdropdownmenu.showimagemargin?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_ToolStripDropDownMenu_ShowImageMargin) property of ContextMenuStripEx is set to `true`.


The following code snippet illustrates how to add a image in menu item.

{% tabs %}
{% highlight c# %}

this.contextMenuStripEx.ShowImageMargin = true;
this.contextMenuStripEx.ImageScalingSize = new System.Drawing.Size(24, 24);
this.toolStripMenuItem1.Image = System.Drawing.Image.FromFile(@"..\..\..\new.png");
this.toolStripMenuItem2.Image = System.Drawing.Image.FromFile(@"..\..\..\copy.png");

{% endhighlight %}

{% highlight vb %}

Me.contextMenuStripEx.ShowImageMargin = True
Me.contextMenuStripEx.ImageScalingSize = New System.Drawing.Size(24, 24)
Me.toolStripMenuItem1.Image = System.Drawing.Image.FromFile("..\..\..\new.png")
Me.toolStripMenuItem2.Image = System.Drawing.Image.FromFile("..\..\..\copy.png")

{% endhighlight %}
{% endtabs %}


![Display image in menu items](DisplayImage_Images/Image.png)

