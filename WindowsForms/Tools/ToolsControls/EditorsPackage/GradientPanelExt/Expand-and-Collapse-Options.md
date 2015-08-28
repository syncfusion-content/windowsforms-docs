---
layout: post
title: Expand and Collapse Options
description: expand and collapse options
platform: windowsforms
control: EditorPackage 
documentation: ug
---
# Expand and Collapse Options

Including the Collapse primitive, provides option to expand and collapse the GradientPanelExt. Performing the following steps will add the Collapse Primitive at design time.

* Open the GradientPanelExt Collection Editor, and choose the Collapse primitive from the ComboBox available and add it. 
* Set the collapse and expand images in the CollapseImage and ExpandImage property respectively. 
* Specify the alignment and position of the primitive using its respective properties. 
* Close the GradientPanelExt Collection Editor. Build and run the application. 
* Now clicking on the Collapse primitive, collapses the control. The control collapses and expands on alternate clicks.



{% highlight c# %}

Syncfusion.Windows.Forms.Tools.CollapsePrimitive collapsePrimitive1;

gradientPanelExt1.Primitives.Add(collapsePrimitive1);

collapsePrimitive1.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Bottom;

collapsePrimitive1.BackColor = System.Drawing.Color.Transparent;

collapsePrimitive1.CollapseImage = ((System.Drawing.Image)(resources.GetObject("collapsePrimitive1.CollapseImage")));

collapsePrimitive1.ExpandImage = ((System.Drawing.Image)(resources.GetObject("collapsePrimitive1.ExpandImage")));

collapsePrimitive1.Position = 130;

collapsePrimitive1.Size = new System.Drawing.Size(40, 40);







Private collapsePrimitive1 As Syncfusion.Windows.Forms.Tools.CollapsePrimitive

gradientPanelExt1.Primitives.Add(collapsePrimitive1)

Private collapsePrimitive1.Alignment = Syncfusion.Windows.Forms.Tools.Alignment.Bottom

Private collapsePrimitive1.BackColor = System.Drawing.Color.Transparent

Private collapsePrimitive1.CollapseImage = (CType(resources.GetObject("collapsePrimitive1.CollapseImage"),                 System.Drawing.Image))

Private collapsePrimitive1.ExpandImage = (CType(resources.GetObject("collapsePrimitive1.ExpandImage"),                     System.Drawing.Image))

Private collapsePrimitive1.Position = 130

Private collapsePrimitive1.Size = New System.Drawing.Size(40, 40)

{% endhighlight  %}

![](Overview_images/Overview_img378.jpeg)



![](Overview_images/Overview_img379.jpeg)



See Also

Image and Text Primitives, Host Primitives