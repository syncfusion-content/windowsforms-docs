---
layout: post
title: Navigation-Mode
description: navigation mode
platform: WindowsForms
control: TreeNavigator 
documentation: ug
---

# Navigation Mode

 There are two modes of Navigation in this control.

* Default Mode
* Extended Mode

## Default Mode


In this Default mode, the header of current hierarchy level item is displayed at the top of the TreeNavigator with the back button. This back button is used to navigate towards the root from the current level. 

![](Concept-and-Features_images/Concept-and-Features_img2.png)



The following code examples allow you to choose the navigation mode.

{% highlight c# %}

this.treeNavigator.NavigationMode = NavigationMode.Default;


{% endhighlight %}




{% highlight vbnet %}
Me.treeNavigator1.NavigationMode = NavigationMode.Default

{% endhighlight %}

## Extended Mode

In the Extended mode, header of each level from the root to current level stacked one by one at the top of the TreeNavigator.  When you click on any of that header it take you to the corresponding level. 

![](Concept-and-Features_images/Concept-and-Features_img3.png)



The following code examples allow you to choose the Navigation mode.

{% highlight c# %}

this.treeNavigator.NavigationMode = NavigationMode.Extended;

{% endhighlight %}



{% highlight vbnet %}

Me.TreeNavigator1.NavigationMode = NavigationMode.Extended

{% endhighlight %}