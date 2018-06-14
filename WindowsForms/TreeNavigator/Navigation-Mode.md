---
layout: post
title: Navigation-Mode | WindowsForms | Syncfusion
description: navigation mode
platform: WindowsForms
control: TreeNavigator 
documentation: ug
---

# Navigation Mode

The Navigation Mode is used to navigate from parent to child items or child to parent items using Back button.

There are two modes of Navigation in TreeNavigator control, they are
*	Default Mode
*	Extended Mode



## Default Mode


In this Default mode, the Selected item is displayed at the top of the TreeNavigator with the back button. This back button is used to navigate to the root from the current level.

![](Concept-and-Features_images/Navigation-Default.png)


The following code examples allow you to choose the navigation mode.

{% highlight c# %}

this.treeNavigator.NavigationMode = NavigationMode.Default;


{% endhighlight %}




{% highlight vbnet %}
Me.treeNavigator1.NavigationMode = NavigationMode.Default

{% endhighlight %}

## Extended Mode

In the Extended mode, header of each level from the root to current level stacked one by one at the top of the TreeNavigator. When you click on any of that header it take you to the corresponding level. 

![](Concept-and-Features_images/Navigation-Extended.png)



The following code examples allow you to choose the Navigation mode.

{% highlight c# %}

this.treeNavigator.NavigationMode = NavigationMode.Extended;

{% endhighlight %}



{% highlight vbnet %}

Me.TreeNavigator1.NavigationMode = NavigationMode.Extended

{% endhighlight %}