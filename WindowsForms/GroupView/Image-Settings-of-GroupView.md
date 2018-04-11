---
layout: post
title: Image Settings of GroupView  | WindowsForms | Syncfusion
description: Concepts and Features
platform: WindowsForms
control: GroupView
documentation: ug
---
# Image settings of GroupView

This section describes the image options available for GroupView.

To add images to the GroupView, ImageList control must be added to the form with images. ImageList control containing large or small images can be set using the properties given below.


N> If the application requirements deem that the GroupView will always display the same-sized image, then it is sufficient to assign just one ImageList. For the VS.NET toolbox interface, the GroupView will use only a single 16*16-sized small image list.

<table>
<tr>
<th>
GroupView properties</th><th>
Description</th></tr>
<tr>
<td>
LargeImageList</td><td>
It contains large images (32*32) to associate with the control.</td></tr>
<tr>
<td>
SmallImageView</td><td>
In SmallImageView mode, the GroupView items are displayed using the small 16x16 images and are right-aligned with the text drawn alongside the image. When the SmallImageView property is set to 'False', items are displayed using the larger 32x32 images and will be center-aligned with the text drawn below the image. </td></tr>
<tr>
<td>
SmallImageList</td><td>
It contains small images (16*16) to associate with the control. SmallImageView must be set to 'True' to associate small images with the control.</td></tr>
</table>

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

 ![](Overview_images/Overview_img79.jpeg) 


![](Overview_images/Overview_img80.jpeg)


## Highlighting images

We can highlight the image of the GroupView Item when the mouse is moved over it by setting the HighlightImage property to 'True'.

{% tabs %}

{% highlight C# %} 

this.groupView1.HighLightImage = true;

 {% endhighlight %}



{% highlight VB %}

Me.groupView1.HighLightImage = True

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img81.jpeg)


## Image offset settings

The following properties are used to set the image offset for the GroupView Items.



<table>
<tr>
<th>
GroupView property</th><th>
Description</th></tr>
<tr>
<td>
SelectedImageOffset</td><td>
Gets/sets the image offset for the selected GroupView Item. </td></tr>
<tr>
<td>
SelectingImageOffset</td><td>
Gets/sets the image offset for the GroupView Item being selected. </td></tr>
<tr>
<td>
SelectedHighlightImageOffset</td><td>
Gets/sets the image offset when the mouse is moved over the selected GroupView Item. </td></tr>
<tr>
<td>
HighlightImageOffset</td><td>
Gets/sets the image offset for the highlighted GroupView Item. </td></tr>
</table>

N> HighlightImage property must be set to 'True' in all the cases.

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



<table>
<tr>
<th>
Methods</th><th>
Description</th></tr>
<tr>
<td>
ResetSelectedImageOffset</td><td>
Resets the SelectedImageOffset property to it's default value.</td></tr>
<tr>
<td>
ResetSelectingImageOffset</td><td>
Resets the SelectingImageOffset property to it's default value.</td></tr>
<tr>
<td>
ResetSelectedHighlightImageOffset</td><td>
Resets the SelectedHighlightImageOffset property to it's default value.</td></tr>
<tr>
<td>
ResetHighlightImageOffset</td><td>
Resets the HighlightImageOffset property to it's default value.</td></tr>
</table>

## Image spacing

We can provide spacing between the highlighted edge of a GroupView Item and the image by setting the ImageSpacing property to integer values.

HighlightImage property must be set to 'True'.

{% tabs %}

{% highlight C# %} 

this.groupView1.ImageSpacing = 7;

{% endhighlight %}



{% highlight VB %} 

Me.groupView1.ImageSpacing = 7

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img83.jpeg) 
