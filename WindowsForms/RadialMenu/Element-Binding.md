---
layout: post
title: Element-Binding | Windows Forms | Syncfusion
description: element binding
platform: windowsforms
control: RadialMenu 
documentation: ug
---

# Element Binding

## Menu Items

Radial Menu Items is populated with the business object collection. This section explains how to create a Radial Menu that shows the list of Application commands.

### Slice Count

Slice Count functionality is used to define the maximum number of menu items (slices) that is made visible by default in the Radial Menu.

{% highlight c# %}

// Allocate space for number of items

this.radialMenu1.WedgeCount = 8; 

{% endhighlight %}

{% highlight vbnet %}



‘ Allocate space for number of items

Me.radialMenu1.WedgeCount = 8

{% endhighlight %}




![](Element-Binding_images/Element-Binding_img1.png)



### Menu View Visibility

Menu View is enabled by default on load using the following code example. 

{% highlight c# %}

// Display Menus initially.
this.radialMenu1.MenuVisibility = true;

{% endhighlight %}

{% highlight vbnet %}

‘Display Menus initially.
Me.RadialMenu1.MenuVisibility = True

{% endhighlight %}

![](Element-Binding_images/Element-Binding_img2.png)
The current state of the menu displayed is maintained and restored back when the menu is initialized back dynamically.

Following code example illustrates the State Persistence.

{% highlight c# %}

// Retain the old state of the Radial Menu while loading.

this.radialMenu1.PersistPreviousState = true;

{% endhighlight %}

{% highlight vbnet %}

‘Retain the old state of the Radial Menu while loading.

Me.radialMenu1.PersistPreviousState = True

{% endhighlight %}


### Custom Images

A custom set of images are configured to the Menu using ImageListAdv in the Radial Menu Control.

Following code example illustrates the Custom Images.

{% highlight c# %}

// Custom images configured to Radial Menu.

  this.radialMenu1.ImageList = this.imageListAdv1;

{% endhighlight %}

{% highlight vbnet %}

‘Custom images configured to Radial Menu.

Me.radialMenu1.ImageList = Me.imageListAdv1

{% endhighlight %}


### Index Based Ordering

Menu items in Radial Menu are arranged based on their respective indices. You can arrange the items in index-based order or in a sequential order by enabling this functionality.

{% highlight c# %}

// Menu Items will be arranged in Index based.

this.radialMenu1.UseIndexBasedOrder= true; 

{% endhighlight %}

{% highlight vbnet %}


‘Menu Items will be arranged in Index based.

Me.radialMenu1.UseIndexBasedOrder= true

{% endhighlight %}




![](Element-Binding_images/Element-Binding_img3.png)



## Populating Color Palette

Radial Color Palette is configured with the set of colors in Radial Menu using the following code example.

{% highlight c# %}

//Creates RadialColorPalette

Syncfusion.Windows.Forms.Tools.RadialColorPalette radialColorPalette1;

this.radialColorPalette1 = new Syncfusion.Windows.Forms.Tools.RadialColorPalette();

//Image index

this.radialColorPalette1.ImageIndex = 0;



this.radialColorPalette1.Text = "Color";



// Image collection configured to Radial Menu.

  this.radialMenu1.ImageList = this.imageListAdv1;

{% endhighlight %}

{% highlight vbnet %}

‘ Creates Radial Color Palette

Dim radialColorPalette1 As Syncfusion.Windows.Forms.Tools.RadialColorPalette

Me.radialColorPalette1 = New Syncfusion.Windows.Forms.Tools.RadialColorPalette

‘Image index

Me.radialColorPalette1.ImageIndex = 0


Me.radialColorPalette1.Text = "Color"  

‘Image collection configured to Radial Menu.

Me.radialMenu1.ImageList = Me.imageListAdv1

{% endhighlight %}






![](Element-Binding_images/Element-Binding_img4.png)



## Populating Font List Box

Radial Font List Box is configured in Radial Menu with installed font family using the following code example.

{% highlight c# %}

// Creates RadialFontListBox

Syncfusion.Windows.Forms.Tools.RadialFontListBox radialFontListBox1;

this.radialFontListBox1 = new Syncfusion.Windows.Forms.Tools.RadialFontListBox();

//Image index

this.radialFontListBox1.ImageIndex = 3;            

this.radialFontListBox1.Text = "Font";

// Image collection configured to Radial Menu.

  this.radialMenu1.ImageList = this.imageListAdv1;

{% endhighlight %}

{% highlight vbnet %}

‘ Creates Radial Font List Box

Dim radialFontListBox1 As Syncfusion.Windows.Forms.Tools.RadialFontListBox

Me.radialFontListBox1 = New Syncfusion.Windows.Forms.Tools.RadialFontListBox



‘Image index



Me.radialFontListBox1.ImageIndex = 3



Me.radialFontListBox1.Text = "Font"

‘Image collection configured to Radial Menu.

Me.radialMenu1.ImageList = Me.imageListAdv1

{% endhighlight %}






![](Element-Binding_images/Element-Binding_img5.png)



## Populating Radial Menu Slider

Radial Menu Slider is configured in Radial Menu with minimum and maximum value. The following code example illustrates the Radial Menu Slider.

{% highlight c# %}

//Creates Radial Menu Slider

Syncfusion.Windows.Forms.Tools.RadialMenuSlider radialMenuSlider1;

this.radialMenuSlider1 = new Syncfusion.Windows.Forms.Tools.RadialMenuSlider();

//Image index

this.radialMenuSlider1.ImageIndex = 5;



this.radialMenuSlider1.MaximumValue = 88;

this.radialMenuSlider1.MinimumValue = 8;

this.radialMenuSlider1.Text = "Size";

// Image collection configured to Radial Menu.

  this.radialMenu1.ImageList = this.imageListAdv1;

{% endhighlight %}

{% highlight vbnet %}

‘Creates Radial Menu Slider

Dim radialMenuSlider1 As Syncfusion.Windows.Forms.Tools.RadialMenuSlider

Me.radialMenuSlider1 = New Syncfusion.Windows.Forms.Tools.RadialMenuSlider



‘Image index



Me.radialMenuSlider1.ImageIndex = 5



Me.radialMenuSlider1.MaximumValue = 88

Me.radialMenuSlider1.MinimumValue = 8

Me.radialMenuSlider1.Text = "Size"

‘Image Collection configured to Radial Menu.

Me.radialMenu1.ImageList = Me.imageListAdv1

{% endhighlight %}




![](Element-Binding_images/Element-Binding_img6.png)



