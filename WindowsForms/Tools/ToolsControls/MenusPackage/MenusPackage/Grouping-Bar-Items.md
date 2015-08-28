---
layout: post
title: Grouping Bar Items
description: grouping bar items
platform: windowsforms
control: Menus Package 
documentation: ug
---
# Grouping Bar Items

## Design Time

XPMenus lets you group certain bar items using Begin a Group option in the designer, code and programmatically also. 

![](Overview_images/Overview_img95.jpeg)



Select a bar item in the dropdown from which you want to start a group, right click on it and select "Begin A Group" option from the Context Menu. This inserts a separator from the bar item selected and starts a group.

![](Overview_images/Overview_img96.jpeg) 



![](Overview_images/Overview_img97.jpeg) 



## Programmatically

If you want to draw a separator between the BarItems in a bar, you have to use BeginGroupAt (BarItem) as shown below:



{% highlight c# %}

//This will draw a separator before barItem1

this.bar1.BeginGroupAt(this.BarItem1);    



//to draw a separator between BarItems in a submenu, use the following code 

//This will draw a separator above barItem3  

this.parentBarItem1.BeginGroupAt(this.BarItem3);            

{% endhighlight  %}
{% highlight vbnet %}





'This will draw a separator before barItem1

Me.bar1.BeginGroupAt(Me.BarItem1)



'to draw a separator between barItems in a submenu, use the following code 

'This will draw a separator above barItem3

Me.parentBarItem1.BeginGroupAt(Me.BarItem3)
{% endhighlight  %}

## RunTime

This option is available for the end users at run time also. Right clicking on a bar item at run time, invokes the context menu similar to that in the designer. 

> Note: Context menu will be invoked at run time, only with the customize dialog open.

![](Overview_images/Overview_img99.jpeg)
