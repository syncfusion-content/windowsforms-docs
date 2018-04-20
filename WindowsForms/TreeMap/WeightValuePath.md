---
layout: post
title: WeightValuePath | Windows Forms | Syncfusion
description: weightvaluepath
platform: windowsforms
control: TreeMap 
documentation: ug
---

# Weight value path

The [`WeightValuePath`](https://help.syncfusion.com/cr/cref_files/windowsforms/treemap/Syncfusion.TreeMap.Windows~Syncfusion.Windows.Forms.TreeMap.TreeMap~WeightValuePath.html) of the tree map control is a path to a field on the source object that serves as the "weight" of the object. 

Refer the following code for specifying the weight value path.

{% tabs %}

{% highlight c# %}

TreeMap TreeMap1 = new TreeMap();

TreeMap1.ItemsSource = data.PopulationDetails;

TreeMap1.WeightValuePath = "Population";

{% endhighlight %}

{% endtabs %}

N> The specified field must be available in every subclass (object) defined in the hierarchical (nested) data collection.