---
layout: post
title: Styling and Customization in Windows Forms Radial Menu | Syncfusion
description: Learn about Styling and Customization support in Syncfusion Windows Forms Radial Menu control, its elements and more details.
platform: WindowsForms
control: RadialMenu 
documentation: ug
---

# Styling and Customization in Windows Forms Radial Menu

## Drill region

![Drill region](Styling-and-Customization_images/Styling-and-Customization_img1.png)



### Default state

[OuterArcColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RadialMenu.html#Syncfusion_Windows_Forms_Tools_RadialMenu_OuterArcColor) is used to fill the drill-down region in the normal state.

{% tabs %}

{% highlight C# %}

// DrillDown color 
this.radialMenu1.OuterArcColor= Color.Black; 

{% endhighlight %} 

{% highlight VB %}

' DrillDown color
Me.RadialMenu1.OuterArcColor = Color.Black

{% endhighlight %}

{% endtabs %}

![Default state](Styling-and-Customization_images/Styling-and-Customization_img2.png)


[OuterArcHighLightedColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RadialMenu.html#Syncfusion_Windows_Forms_Tools_RadialMenu_OuterArcHighLightedColor) property is used to fill the drilldown region while hovering.

{% tabs %}

{% highlight C# %}

// DrillDown hover color
this.radialMenu1.OuterArcHighLightedColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));</td></tr>

{% endhighlight %}

{% highlight VB %}

' DrillDown hover color
Me.radialMenu1.OuterArcHighLightedColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))))

{% endhighlight %}

{% endtabs %}

![outer arc color](Styling-and-Customization_images/Styling-and-Customization_img3.png)

## Outer rim (static region)

Outer edge is customized by using the [RimBackground](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RadialMenu.html#Syncfusion_Windows_Forms_Tools_RadialMenu_RimBackground) and [OuterRimThickness](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.RadialMenu.html#Syncfusion_Windows_Forms_Tools_RadialMenu_OuterRimThickness) properties.

### Background

Outer Edge Background is customized using the following code example.

{% tabs %}

{% highlight C# %}

// OuterRim color

this.radialMenu1.RimBackground = Color.Blue;

{% endhighlight %}

{% highlight VB %}


' OuterRim color

 Me.radialMenu1.RimBackground = Color.Blue

{% endhighlight %}

{% endtabs %}


![Outer rim](Styling-and-Customization_images/Styling-and-Customization_img4.png)



## Thickness

The Thickness of the outer edge is set using the following code example.

{% tabs %}

{% highlight C# %}

// Rim thickness

this.radialMenu1.OuterRimThickness = 20;

{% endhighlight %}



{% highlight VB %}

' Rim thickness

Me.RadialMenu1.OuterRimThickness = 20

{% endhighlight %}

{% endtabs %}


![Thickness](Styling-and-Customization_images/Styling-and-Customization_img5.png)



## Arc gap

The gap between highlighted Arc and Drilldown region is defined using the following code example.

{% tabs %}

{% highlight C# %}

//Gap between OuterRim and HoverArc

this.radialMenu1.OuterArcGap = 50;

{% endhighlight %}



{% highlight VB %}

' Gap between OuterRim and HoverArc

Me.RadialMenu1.OuterArcGap = 50

{% endhighlight %}

{% endtabs %}


![Arc gap](Styling-and-Customization_images/Styling-and-Customization_img6.png)



## Display style

The Display style of Radial Menu items is customized using different options. They are

* text above the image
* text below the image
* text or image only

{% tabs %}

{% highlight C# %}

// Display style of the text and image.

  this.radialMenu1.DisplayStyle = Syncfusion.Windows.Forms.Tools.DisplayStyle.ImageAboveText;

{% endhighlight %}

{% highlight VB %}

'Display style of the text and image.

Me.radialMenu1.DisplayStyle = Syncfusion.Windows.Forms.Tools.DisplayStyle. ImageAboveText

{% endhighlight %}

{% endtabs %}


![Display style](Styling-and-Customization_images/Styling-and-Customization_img7.png)



## Image Size

* `RadialMenu` control allows to change the size of the radial menu items images. The `MenuItemImageSize` property is used to change the image size of all radial menu items.

{% tabs %}

{% highlight C# %}

private RadialMenu radialMenu;

RadialMenuItem radialMenuItem1 = new RadialMenuItem();
RadialMenuItem radialMenuItem2 = new RadialMenuItem();
RadialMenuItem radialMenuItem3 = new RadialMenuItem();
RadialMenuItem radialMenuItem4 = new RadialMenuItem();
RadialMenuItem radialMenuItem5 = new RadialMenuItem();
RadialMenuItem radialMenuItem6 = new RadialMenuItem();

this.radialMenu.Style =RadialMenuStyle.Office2016Colorful;
this.radialMenu.DisplayStyle = DisplayStyle.ImageAboveText;
this.radialMenu.WedgeCount = 4;

this.radialMenuItem1.ImageIndex = 7;
this.radialMenuItem1.Text = "Edit";

this.radialMenuItem2.ImageIndex = 2;
this.radialMenuItem2.Text = "Cut";

this.radialMenuItem3.ImageIndex = 1;
this.radialMenuItem3.Text = "Copy";

this.radialMenuItem4.ImageIndex = 4;
this.radialMenuItem4.Text = "Paste";

this.radialMenu.Items.Add(this.radialMenuItem1);
this.radialMenu.Items.Add(this.radialMenuItem2);
this.radialMenu.Items.Add(this.radialMenuItem3);
this.radialMenu.Items.Add(this.radialMenuItem4);
this.radialMenu.Items.Add(this.radialMenuItem5);

// Customize all the image size of radialMenu items
this.radialMenu.MenuItemImageSize = new Size(24, 24);

this.radialMenu.Icon = global::GettingStartedDemo.Properties.Resources.A_Colorful;
this.radialMenu.MenuIcon = global::GettingStartedDemo.Properties.Resources.Arrow_Colorful;
this.radialMenu.Size = new System.Drawing.Size(280, 280);
this.radialMenu.Location = new System.Drawing.Point(339, 97);
this.radialMenu.OuterRimThickness = 28;
this.radialMenu.Visible = true;
this.Controls.Add(this.radialMenu);

{% endhighlight %}

{% endtabs %}

![Image Size](Styling-and-Customization_images/Styling-and-Customization_img8.png)

* The `ImageSize` property is used to change the image size of each radial menu item.

{% tabs %}

{% highlight C# %}

private RadialMenu radialMenu;

RadialMenuItem radialMenuItem1 = new RadialMenuItem();
RadialMenuItem radialMenuItem2 = new RadialMenuItem();
RadialMenuItem radialMenuItem3 = new RadialMenuItem();
RadialMenuItem radialMenuItem4 = new RadialMenuItem();
RadialMenuItem radialMenuItem5 = new RadialMenuItem();
RadialMenuItem radialMenuItem6 = new RadialMenuItem();

this.radialMenu.Style =RadialMenuStyle.Office2016Colorful;
this.radialMenu.DisplayStyle = DisplayStyle.ImageAboveText;
this.radialMenu.WedgeCount = 4;

this.radialMenuItem1.ImageIndex = 7;
this.radialMenuItem1.Text = "Edit";

this.radialMenuItem2.ImageIndex = 2;
this.radialMenuItem2.Text = "Cut";

this.radialMenuItem3.ImageIndex = 1;
this.radialMenuItem3.Text = "Copy";

this.radialMenuItem4.ImageIndex = 4;
this.radialMenuItem4.Text = "Paste";

this.radialMenu.Items.Add(this.radialMenuItem1);
this.radialMenu.Items.Add(this.radialMenuItem2);
this.radialMenu.Items.Add(this.radialMenuItem3);
this.radialMenu.Items.Add(this.radialMenuItem4);
this.radialMenu.Items.Add(this.radialMenuItem5);

// Customize the image size of individual radialMenu item
this.radialMenuItem3.ImageSize = new Size(44, 44);

this.radialMenu.Icon = global::GettingStartedDemo.Properties.Resources.A_Colorful;
this.radialMenu.MenuIcon = global::GettingStartedDemo.Properties.Resources.Arrow_Colorful;
this.radialMenu.Size = new System.Drawing.Size(280, 280);
this.radialMenu.Location = new System.Drawing.Point(339, 97);
this.radialMenu.OuterRimThickness = 28;
this.radialMenu.Visible = true;
this.Controls.Add(this.radialMenu);

{% endhighlight %}

{% endtabs %}

![Image Size](Styling-and-Customization_images/Styling-and-Customization_img9.png)

N> If the `ImageSize` is defined, setting the `MenuItemImageSize` property has no effect for particular radial menu item.

