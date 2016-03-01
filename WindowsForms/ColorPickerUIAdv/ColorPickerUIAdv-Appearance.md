---
layout: post
title: ColorPickerUIAdv Appearance | Windows Forms | Syncfusion
description: colorpickeruiadv appearance
platform: windowsforms
control: ColorPickerUIAdv 
documentation: ug
---
# ColorPickerUIAdv Appearance

## Border Styles

Border for ColorPickerUIAdv control can be Fixed Single, Fixed3D or None, which is set using BorderStyle property. By default the border style is None.




{% highlight c# %}
this.colorPickerUIAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;


{% endhighlight  %}
{% highlight c# %}




Me.colorPickerUIAdv1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D

{% endhighlight  %}

![](ColorPickerUIAdv_Images/Overview_img270.jpeg)



{% seealso %}
[Style Settings](#style-settings)
{% endseealso %}
 




## Style Settings

The appearance and behavior settings, available for the ColorPickerUIAdv are discussed in this section.

By default ColorPickerUIAdv control has Office2007 look and feel. 


<table>
<tr>
<th>
ColorPickerUIAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
UseOffice2007Style</td><td>
Office 2007 style can be enabled or disabled using this property. By default it is true.</td></tr>
<tr>
<td>
Office2007Theme</td><td>
Sets the color scheme for the Office2007 Style.</td></tr>
</table>




{% highlight c# %}

colorPickerUIAdv1.UseOffice2007Style = true;



//Sets Office2007 Black color Theme

colorPickerUIAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Black;







colorPickerUIAdv1.UseOffice2007Style = True



'Sets Office2007 Black color Theme

Private colorPickerUIAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Black

{% endhighlight  %}

![](ColorPickerUIAdv_Images/Overview_img271.jpeg) 



The Office2007 Visual Styles can be turned off by setting the UseOffice2007Style property to false.

![](ColorPickerUIAdv_Images/Overview_img272.jpeg) 



### Custom Colors

We can also apply custom colors to the ColorPickerUIAdv control by setting Office2007Theme to "Managed" and specifying the custom color through the ApplyManagedColors method as follows.




{% highlight c# %}
this.colorPickerUIAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(this, Color.Orange);


{% endhighlight  %}


{% highlight vbnet  %}

Me.colorPickerUIAdv1.Office2007Theme = Syncfusion.Windows.Forms.Office2007Theme.Managed;

Office2007Colors.ApplyManagedColors(Me, Color.Orange)

{% endhighlight  %}

![](ColorPickerUIAdv_Images/Overview_img273.jpeg) 