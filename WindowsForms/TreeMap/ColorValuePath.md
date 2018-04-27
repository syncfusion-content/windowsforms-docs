---
layout: post
title: colorvaluepath | Windows Forms | Syncfusion
description: ColorValuePath
platform: windowsforms
control: TreeMap 
documentation: ug
---

# Color value path

The [`ColorValuePath`](https://help.syncfusion.com/cr/cref_files/windowsforms/treemap/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.TreeMap~ColorValuePath.html) of the tree map control is a path to a field on the source object that serves as the "color" of the object. 

Refer to the following code for specifying the color value path.

{% tabs %}

{% highlight c# %}

TreeMap TreeMap1 = new TreeMap();

TreeMap1.ItemsSource = data.PopulationDetails;

TreeMap1.ColorValuePath = "Growth";

{% endhighlight %}

{% endtabs %}

N> The specified field must be available in every subclass (object) defined in the hierarchical (nested) data collection.