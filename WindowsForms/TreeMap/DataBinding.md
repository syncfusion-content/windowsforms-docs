---
layout: post
title: Data Binding in Windows Forms TreeMap | Syncfusion®
description: Data binding in the Windows Forms TreeMap enables visualization of hierarchical data through grouping, mapping, and interactive data representation.
platform: windowsforms
control: TreeMap
documentation: ug
---

# Data Binding in WinForms TreeMap

TreeMap control supports Data Binding and it can be achieved using ItemsSource property.

The ItemsSource property accepts the collection values as input. For example, you can provide the list of objects as input. The following code illustrates you on how to bind a flat collection as items source for WinForms TreeMap.

{% highlight c# %}

public partial class Form1 : Form

    {

	TreeMap TreeMap1 = new TreeMap();

	public Form1()

        {

            InitializeComponent();



            PopulationViewModel data = new PopulationViewModel();

            TreeMap1.ItemsSource = data.PopulationDetails;

            TreeMap1.ColorValuePath = "Growth";

            This.Controls.Add(TreeMap1);

       }

   }

{% endhighlight %}

Note: The specified field must be available in each and every sub class (object) defined in hierarchical (nested) data collection.

