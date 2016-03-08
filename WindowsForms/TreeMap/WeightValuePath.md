---
layout: post
title: WeightValuePath | WindowsForms | Syncfusion
description: weightvaluepath
platform: WindowsForms
control: TreeMap 
documentation: ug
---

# WeightValuePath

The WeightValuePath of the TreeMap control is a path to a field on the source object that serves as the "weight" of the object. 

#### Code Sample

{% highlight c# %}

TreeMap TreeMap1 = new TreeMap();

TreeMap1.ItemsSource = data.PopulationDetails;

TreeMap1.WeightValuePath = "Population";

{% endhighlight %}

N> The specified field must be available in every subclass (object) defined in the hierarchical (nested) data collection.