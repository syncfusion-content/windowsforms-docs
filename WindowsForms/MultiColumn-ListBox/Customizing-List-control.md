---
layout: post
title: Customizing-List-control in WinForms MultiColumn ListBox | Syncfusion
description: Learn here all about the customizing list control of Syncfusion Windows Forms MultiColumn ListBox (GridListControl) control and more.
platform: windowsforms
control: GridList
documentation: ug
---

# Customizing List control in Windows Forms MultiColumn ListBox

Appearance of the GridList control can be customized by using the following properties:

* TransparentBackground: Sets a transparent background for grid cells. If its value is set to true, no background color will be displayed. If its value is set to false, the background will be filled with the chosen color. The value is false by default. Refer to the BackColor property for setting the required background color. 

{% tabs %}
{% highlight c# %}
this.gridListControl1.TransparentBackground = true;
{% endhighlight  %}
{% highlight vb %}
Me.gridListControl1.TransparentBackground = True
{% endhighlight  %}
{% endtabs %}

![TransparentBackground in Windows Forms MultiColumn ListBox](Customizing-List-control_images/Customizing-List-control_img1.jpeg) 

* DisplayVertLines or DisplayHorzLines: Specifies the display of vertical or horizontal line on the grid. Ensure the display of vertical or horizontal grid line when setting this true.

{% tabs %}
{% highlight c# %}
this.gridListControl1.Properties.DisplayHorzLines = true;
this.gridListControl1.Properties.DisplayVertLines = true;
{% endhighlight  %}
{% highlight vb %}
Me.gridListControl1.Properties.DisplayHorzLines = True
Me.gridListControl1.Properties.DisplayVertLines = True
{% endhighlight  %}
{% endtabs %}

![DisplayVertLines or DisplayHorzLines in WinForms MultiColumn ListBox](Customizing-List-control_images/Customizing-List-control_img2.jpeg) 

![DisplayVertLines or DisplayHorzLines in WinForms MultiColumn ListBox](Customizing-List-control_images/Customizing-List-control_img3.jpeg)

* Buttons3D: Specifies appearance of the row and column headers. Render a three-dimensional header that provides a raised look when setting this property to true. 

{% tabs %}
{% highlight c# %}
this.gridListControl1.Properties.Buttons3D = true;
{% endhighlight  %}
{% highlight vb %}
Me.gridListControl1.Properties.Buttons3D = True
{% endhighlight  %}
{% endtabs %}

![Appearance of row and column headers](Customizing-List-control_images/Customizing-List-control_img4.jpeg) 

* GridLineColor: Allows you to specify a color for grid lines. Its value can be set to the required color.

{% tabs %}
{% highlight c# %}
this.gridListControl1.Grid.Properties.GridLineColor = Color.Blue;
{% endhighlight  %}
{% highlight vb %}
Me.gridListControl1.Grid.Properties.GridLineColor = Color.Blue
{% endhighlight  %}
{% endtabs %}

![Grid Line Color in WinForms MultiColumn ListBox](Customizing-List-control_images/Customizing-List-control_img5.jpeg) 

* BackColor: Allows you to specify the background color for the GridList control. It is mandatory to set the TransparentBackground to false.

{% tabs %}
{% highlight c# %}
this.gridListControl1.BackColor = Color.Beige;
{% endhighlight  %}
{% highlight vb %}
Me.gridListControl1.BackColor = Color.Beige
{% endhighlight  %}
{% endtabs %}

![BackColor in WinForms MultiColumn ListBox](Customizing-List-control_images/Customizing-List-control_img6.jpeg) 

* HeaderBackColor: Allows you to specify the background color of the headers.

{% tabs %}
{% highlight c# %}
this.gridListControl1.HeaderBackColor = Color.Red;
{% endhighlight  %}
{% highlight vb %}
Me.gridListControl1.HeaderBackColor = Color.Red
{% endhighlight  %}
{% endtabs %}

* HeaderTextColor: Allows you to specify the header text color. 

{% tabs %}
{% highlight c# %}
this.gridListControl1.HeaderTextColor = Color.Blue;
{% endhighlight %}
{% highlight vb %}
Me.gridListControl1.HeaderTextColor = Color.Blue;
{% endhighlight  %}
{% endtabs %}

* BackgroundImage: Allows you to specify the background image used for the control.

The following code example illustrates usage of this property to set the required image as background of the control.

{% tabs %}
{% highlight c# %}
this.gridListControl1.BackgroundImage = Image.FromFile("Cloud.jpg");
{% endhighlight  %}
{% highlight vb %}
Me.gridListControl1.BackgroundImage = Image.FromFile("Cloud.jpg")
{% endhighlight  %}
{% endtabs %}

![BackgroundImage in Windows Forms MultiColumn ListBox](Customizing-List-control_images/Customizing-List-control_img7.jpeg)
