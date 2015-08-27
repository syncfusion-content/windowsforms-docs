---
layout: post
title: ExpandAll-and-CollapseAll-Methods
description: expandall and collapseall methods
platform: windowsform
control: GridDataBoundGrid
documentation: ug
---

# ExpandAll and CollapseAll Methods

1. ExpandAll
2. Using this method will enable the user to view expanded nodes in DataBound Grid, i.e., the parent, child and subsequent sublevel nodes.

   The following code illustrates how to set this method for DataBound Grid:

   ~~~ cs

		this.gridDataBoundGrid1.ExpandAll();

   ~~~
   {:.prettyprint }

   ~~~ vbnet

		Me.gridDataBoundGrid1.ExpandAll()

   ~~~
   {:.prettyprint }

   ![](DataBound-Grid_images/DataBound-Grid_img23.jpeg)

3. CollapseAll
4. Using this method will enable the user to view collapsed nodes in DataBound Grid, i.e., only the parent node can be viewed with its corresponding expansion icon.

The following code illustrates how to set this method for DataBound Grid:

{% highlight c# %}

this.gridDataBoundGrid1.CollapseAll();

{% endhighlight %}

{% highlight vbnet %}

Me.gridDataBoundGrid1.CollapseAll()

{% endhighlight %}

![](DataBound-Grid_images/DataBound-Grid_img24.jpeg)


