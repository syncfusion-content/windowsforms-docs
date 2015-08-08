---
layout: post
title: Getting-Started
description: getting started
platform: WindowsForms
control: TreeMap
documentation: ug
---

# Getting Started

TreeMapsare a growing trend in data visualization. It displays hierarchical information in a series of clustered rectangles, which together represent a whole dataset. The size of each box represents a quantity. TreeMapsalso use color to represent any number of values, but it is often used to categorize the various boxes within the tree map.

## Creating TreeMap for WindowsForms App

In order to create a TreeMap you can refer to the following assembly and namespace.

Assembly: Syncfusion.TreeMap.Windows

Namespace: Syncfusion.Windows.Forms.TreeMap

The following code example shows how to add a TreeMap in your application:

### Code Sample:



{% highlight c# %}

public partial class Form1 : Form

    {

      TreeMap TreeMap1 = new TreeMap();

      public Form1()

        {

            InitializeComponent();

        }

   }

{% endhighlight %}