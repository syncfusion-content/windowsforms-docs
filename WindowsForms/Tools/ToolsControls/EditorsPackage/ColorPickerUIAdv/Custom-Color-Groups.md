---
layout: post
title: Custom Color Groups
description: custom color groups
platform: windowsforms
control: ColorPickerUIAdv 
documentation: ug
---
# Custom Color Groups

Custom Color Groups can be added to ColorPickerUIAdv control using CustomGroups property. This property invokes ColorUIAdvGroup Collection Editor and lets you to add custom user groups.

![](ColorPickerUIAdv_Images/Overview_img257.jpeg) 







{% highlight c# %}

Syncfusion.Windows.Forms.Tools.GroupColorItem groupColorItem1 = new Syncfusion.Windows.Forms.Tools.GroupColorItem(colorUIAdvGroup1, System.Drawing.Color.Crimson);

groupColorItem1.Color = System.Drawing.Color.Crimson;

groupColorItem1.Index = 0;

groupColorItem1.SubItems.Add(new Syncfusion.Windows.Forms.Tools.ColorItem(groupColorItem1, System.Drawing.Color.LightPink));

colorUIAdvGroup1.Items.Add(groupColorItem1);

colorUIAdvGroup1.Name = "Custom User Colors";

colorUIAdvGroup1.SubItemsDepth = 1;

this.colorPickerUIAdv1.CustomGroups.Add(colorUIAdvGroup1);



{% endhighlight  %}
{% highlight vbnet %}



Dim groupColorItem1 As New Syncfusion.Windows.Forms.Tools.GroupColorItem(colorUIAdvGroup1, System.Drawing.Color.Crimson)

groupColorItem1.Color = System.Drawing.Color.Crimson

groupColorItem1.Index = 0

groupColorItem1.SubItems.Add(New Syncfusion.Windows.Forms.Tools.ColorItem(groupColorItem1, System.Drawing.Color.LightPink)) 

colorUIAdvGroup1.Items.Add(groupColorItem1) 

colorUIAdvGroup1.Name = "Custom User Colors" 

colorUIAdvGroup1.SubItemsDepth = 1 

Me.colorPickerUIAdv1.CustomGroups.Add(colorUIAdvGroup1) 

{% endhighlight  %}

![](ColorPickerUIAdv_Images/Overview_img258.jpeg) 



> Note: The properties to customize the color groups are similar to default color groups. See how to Customize the Color Groups in_ Customizing the Color Groups _topic.
