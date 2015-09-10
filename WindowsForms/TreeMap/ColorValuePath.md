---
layout: post
title: colorvaluepath | WindowsForms | Syncfusion
description: ColorValuePath
platform: WindowsForms
control: TreeMap 
documentation: ug
---

# ColorValuePath

The ColorValuePath of the TreeMap control is a path to a field on the source object that serves as the "color" of the object. 

#### Code Sample

{% highlight c# %}

TreeMap TreeMap1 = new TreeMap();

TreeMap1.ItemsSource = data.PopulationDetails;

TreeMap1.ColorValuePath = "Growth";

{% endhighlight %}

N> The specified field must be available in every subclass (object) defined in the hierarchical (nested) data collection.