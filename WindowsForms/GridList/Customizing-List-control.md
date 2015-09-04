---
layout: post
title: Customizing-List-control
description: customizing list control
platform: WindowsForms
control: GridList
documentation: ug
---

# Customizing List control

The appearance Grid List control can be customized by customizing the background color, image, header background color, etc. The following properties can be used for customization:

* TransparentBackground - This property can be used to set a transparent background for grid cells. If its value is set to true, no background color is displayed. If its value is set to false, the background is filled with the chosen color. The value is set to False by default. Refer BackColor property for setting the required background color. 

The following code example illustrates setting of a transparent background for grid cells.



{% highlight c# %}

this.gridListControl1.TransparentBackground = true;



{% endhighlight  %}

{% highlight vbnet %}

Me.gridListControl1.TransparentBackground = True

{% endhighlight  %}

![](Customizing-List-control_images/Customizing-List-control_img1.jpeg) 





* DisplayVertLines/DisplayHorzLines - This property can be used to specify the display of vertical/horizontal lines on the grid. This property when set to true ensures display of vertical/horizontal grid lines.

The following code example illustrates usage of the properties to display grid lines.



{% highlight c# %}

this.gridListControl1.Properties.DisplayHorzLines = true;

this.gridListControl1.Properties.DisplayVertLines = true;

{% endhighlight  %}



{% highlight vbnet %}

Me.gridListControl1.Properties.DisplayHorzLines = True

Me.gridListControl1.Properties.DisplayVertLines = True
{% endhighlight  %}

![](Customizing-List-control_images/Customizing-List-control_img2.jpeg) 





![](Customizing-List-control_images/Customizing-List-control_img3.jpeg)





* Buttons3D - This property can be used to specify the appearance of row and column headers. This property when set to true, renders three-dimensional header providing the header a raised look. 

The following code example illustrates the usage of the property to render a 3D header.



{% highlight c# %}

this.gridListControl1.Properties.Buttons3D = true;

{% endhighlight  %}


{% highlight vbnet %}


Me.gridListControl1.Properties.Buttons3D = True
{% endhighlight  %}
![](Customizing-List-control_images/Customizing-List-control_img4.jpeg) 



* GridLineColor-This property allows the user to specify a color for grid lines. Its value can be set to the required color.

The following code example illustrates the usage of this property to render blue grid lines.


{% highlight c# %}


this.gridListControl1.Grid.Properties.GridLineColor = Color.Blue;

{% endhighlight  %}



{% highlight vbnet %}

Me.gridListControl1.Grid.Properties.GridLineColor = Color.Blue

{% endhighlight  %}

![](Customizing-List-control_images/Customizing-List-control_img5.jpeg) 





* BackColor - This property allows the user to specify background color for Grid List control. It is mandatory to set TransparentBackground to false to set the background color.

The following code example illustrates the usage of this property to render Beige background color.



{% highlight c# %}

this.gridListControl1.BackColor = Color.Beige;

{% endhighlight  %}


{% highlight vbnet %}


Me.gridListControl1.BackColor = Color.Beige

{% endhighlight  %}

![](Customizing-List-control_images/Customizing-List-control_img6.jpeg) 



* HeaderBackColor - This property allows the user to specify the background color of headers.

The following code example illustrates usage of this property to render a red background for the headers.




{% highlight c# %}
this.gridListControl1.HeaderBackColor = Color.Red;

{% endhighlight  %}




{% highlight vbnet %}
Me.gridListControl1.HeaderBackColor = Color.Red

{% endhighlight  %}

* HeaderTextColor - This property allows the user to specify header text color. 

The following code example illustrates usage of this property to render a blue header text color.


{% highlight c# %}


this.gridListControl1.HeaderTextColor = Color.Blue;

{% endhighlight %}



{% highlight vbnet %}

Me.gridListControl1.HeaderTextColor = Color.Blue;

{% endhighlight  %}

* BackgroundImage - This property allows the user to specify the background image used for control.

The following code example illustrates usage of this property to set the required image as background of the control.



{% highlight c# %}

this.gridListControl1.BackgroundImage = Image.FromFile("Colud.jpg");

{% endhighlight  %}


{% highlight vbnet %}


Me.gridListControl1.BackgroundImage = Image.FromFile("Colud.jpg")
{% endhighlight  %}


![](Customizing-List-control_images/Customizing-List-control_img7.jpeg)





