---
layout: post
title: Navigation Mode in Windows Forms Tree Navigator | Syncfusion®
description: Navigation mode in Windows Forms Tree Navigator enables navigating between parent and child items using default and extended navigation modes.
platform: WindowsForms
control: Tree Navigator 
documentation: ug
---

# Navigation Mode in Windows Forms Tree Navigator

The Navigation Mode is used to navigate from parent to child items or child to parent items using Back button.

There are two modes of Navigation in Tree Navigator control, they are
*	Default Mode
*	Extended Mode



## Default Mode


In this Default mode, the Selected item is displayed at the top of the Tree Navigator with the back button. This back button is used to navigate to the root from the current level.

![Navigation-Default](Concept-and-Features_images/Navigation-Default.png)


The following code examples allow you to choose the navigation mode.

{% tabs %}

{% highlight c# %}

this.treeNavigator.NavigationMode = NavigationMode.Default;

{% endhighlight %}


{% highlight vb %}

Me.treeNavigator1.NavigationMode = NavigationMode.Default

{% endhighlight %}

{% endtabs %}

## Extended Mode

In the Extended mode, header of each level from the root to current level stacked one by one at the top of the Tree Navigator. When you click on any of that header it take you to the corresponding level. 

![Navigation-Extended](Concept-and-Features_images/Navigation-Extended.png)



The following code examples allow you to choose the Navigation mode.

{% tabs %}

{% highlight c# %}

this.treeNavigator.NavigationMode = NavigationMode.Extended;

{% endhighlight %}



{% highlight vb %}

Me.TreeNavigator1.NavigationMode = NavigationMode.Extended

{% endhighlight %}

{% endtabs %}
