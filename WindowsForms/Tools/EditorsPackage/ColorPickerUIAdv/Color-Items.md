---
layout: post
title: Color Items
description: color items
platform: windowsforms
control: ColorPickerUIAdv 
documentation: ug
---
# Color Items

## Customizing Color Items

Size of the color items can be set through ColorItemSize property. Default width is 13 and height is 13.

> Note: The colors within the groups are clickable at design time and you can change the color using property grid as in the below image.

![](ColorPickerUIAdv_Images/Overview_img266.jpeg)





{% highlight c# %}

this.colorPickerUIAdv1.ColorItemSize = new System.Drawing.Size(20, 20);

{% endhighlight  %}
{% highlight vbnet %}





Me.colorPickerUIAdv1.ColorItemSize = New System.Drawing.Size(20, 20)

{% endhighlight  %}

![](ColorPickerUIAdv_Images/Overview_img267.jpeg) 



## Spacing Between Color Items

HorizontalItemsSpacing and VerticalItemsSpacing properties of ColorPickerUIAdv control can be used to set the horizontal and vertical spacing between the color items respectively. Default value of these properties are 4 and 0 respectively.


{% highlight c# %}


this.colorPickerUIAdv1.HorizontalItemsSpacing = 15;

this.colorPickerUIAdv1.VerticalItemsSpacing = 15;


{% endhighlight  %}
{% highlight vbnet %}




Me.colorPickerUIAdv1.HorizontalItemsSpacing = 15

Me.colorPickerUIAdv1.VerticalItemsSpacing = 15


{% endhighlight  %}
![](ColorPickerUIAdv_Images/Overview_img268.jpeg) 



See Also

Header Settings
