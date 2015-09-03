---
layout: post
title: Header-Customization
description: header customization
platform: WindowsForms
control: TreeNavigator 
documentation: ug
---

# Header Customization

The height, Text, Back color, and Text color of the header are customized by using the Header property.

The following code example allows you to customize the header.

{% highlight c# %}

//Customizes the Header area

this.treeNavigator1.Header.Height = 200;

this.treenavigator1.Header.HeaderText = "Enterprise ToolKit";

this.treeNavigator1.Header.HeaderBackColor = Color.White;

this.treeNavigator1.Header.HeaderForeColor = Color.Black;



//Show/hide the Header area

this.treeNavigator1.ShowHeader = false;


{% endhighlight %}


{% highlight vbnet %}

'Customizes the Header area

Me.TreeNavigator1.Header.Height = 200

Me.TreeNavigator1.Header.HeaderText = "Enterprise ToolKit"

Me.TreeNavigator1.Header.HeaderBackColor = Color.White

Me.TreeNavigator1.Header.HeaderForeColor = Color.Black



'Show/hide the Header area

Me.TreeNavigator1.ShowHeader = False

{% endhighlight %}