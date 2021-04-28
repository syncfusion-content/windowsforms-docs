---
layout: post
title: Image Settings of GroupView in Windows Forms GroupView control | Syncfusion
description: Learn about Image Settings of GroupView support in Syncfusion Windows Forms GroupView control and more details.
platform: WindowsForms
control: GroupView
documentation: ug
---
# Image Settings of GroupView in Windows Forms GroupView

This section describes the image options available for GroupView.

To add images to the GroupView, ImageList control must be added to the form with images. ImageList control containing large or small images can be set using the properties given below.


N> If the application requirements deem that the GroupView will always display the same-sized image, then it is sufficient to assign just one ImageList. For the VS.NET toolbox interface, the GroupView will use only a single 16*16-sized small image list.

* [LargeImageList](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_LargeImageList)
* [SmallImageView](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_SmallImageView)
* [SmallImageList](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_SmallImageList)

{% tabs %}

{% highlight C# %}

this.groupView1.LargeImageList = this.imageList2;

this.groupView1.SmallImageView = true;

this.groupView1.SmallImageList = this.imageList1;

{% endhighlight %}



{% highlight VB %}

Me.groupView1.LargeImageList = Me.imageList2

Me.groupView1.SmallImageView = True

Me.groupView1.SmallImageList = Me.imageList1

 {% endhighlight %}
 
 {% endtabs %}

N> Setting Image list component to the above properties will not actually associate the images with the GroupView Item. We need to set the ImageIndex of the images to the GroupView Item through the GroupViewItems Collection editor.

 ![Image settings of GroupView](Overview_images/Overview_img79.jpeg) 


![Image settings of GroupView](Overview_images/Overview_img80.jpeg)


## Highlighting images

We can highlight the image of the GroupView Item when the mouse is moved over it by setting the [HighlightImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_HighlightImage) property to `true`.

{% tabs %}

{% highlight C# %} 

this.groupView1.HighLightImage = true;

 {% endhighlight %}



{% highlight VB %}

Me.groupView1.HighLightImage = True

{% endhighlight %}

{% endtabs %}

![Highlighting images](Overview_images/Overview_img81.jpeg)


## Image offset settings

The following properties are used to set the image offset for the GroupView Items.

* [SelectedImageOffset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_SelectedImageOffset)
* [SelectingImageOffset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_SelectingImageOffset)
* [SelectedHighlightImageOffset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_SelectedHighlightImageOffset)
* [HighlightImageOffset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_HighlightImageOffset)

N> [HighlightImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_HighlightImage) property must be set to `true` in all the cases.

{% tabs %}

{% highlight C# %}

this.groupView1.SelectedImageOffset = new System.Drawing.Point(8, 8);

this.groupView1.SelectingImageOffset = new System.Drawing.Point(6, 6);

this.groupView1.HighlightImageOffset = new System.Drawing.Point(5, 5);

this.groupView1.SelectedHighlightImageOffset = new System.Drawing.Point(5, 5);

{% endhighlight %}



{% highlight VB %}

Me.groupView1.SelectedImageOffset = New System.Drawing.Point(8, 8)

Me.groupView1.SelectingImageOffset = New System.Drawing.Point(6, 6)

Me.groupView1.HighlightImageOffset = New System.Drawing.Point(5, 5)

Me.groupView1.SelectedHighlightImageOffset = New System.Drawing.Point(5, 5)

{% endhighlight %}

{% endtabs %}

The following table lists the methods related to the above properties.

* [ResetSelectedImageOffset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_ResetSelectedImageOffset)
* [ResetSelectingImageOffset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_ResetSelectingImageOffset)
* [ResetSelectedHighlightImageOffset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_ResetSelectedHighlightImageOffset)
* [ResetHighlightImageOffset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_ResetHighlightImageOffset)

## Image spacing

We can provide spacing between the highlighted edge of a GroupView Item and the image by setting the [ImageSpacing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_ImageSpacing) property to integer values.

[HighlightImage](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.GroupView.html#Syncfusion_Windows_Forms_Tools_GroupView_HighlightImage) property must be set to `true`.

{% tabs %}

{% highlight C# %} 

this.groupView1.ImageSpacing = 7;

{% endhighlight %}



{% highlight VB %} 

Me.groupView1.ImageSpacing = 7

{% endhighlight %}

{% endtabs %}

![Image spacing](Overview_images/Overview_img83.jpeg)
