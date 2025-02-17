---
layout: post
title: Features | Windows Forms | Syncfusion®
description: Learn here all about DataBinding of Syncfusion® Essential Studio® Windows Forms TreeMap control, its elements, and more.
platform: windowsforms
control: TreeMap
documentation: ug
---

# DataBinding in Windows Forms TreeMap control

TreeMap control supports Data Binding and it can be achieved using ItemsSource property.

The ItemsSource property accepts the collection values as input. For example, you can provide the list of objects as input. The following code illustrates you on how to bind a flat collection as items source for TreeMap.

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

