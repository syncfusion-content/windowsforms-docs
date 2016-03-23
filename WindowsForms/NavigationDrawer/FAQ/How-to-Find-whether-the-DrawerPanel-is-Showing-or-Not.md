---
layout: post
title: How-to-Find-whether-the-DrawerPanel-is-Showing-or-Not | WindowsForms | Syncfusion
description: how to find whether the drawerpanel is showing or not?
platform: WindowsForms
control: Frequently Asked Questions
documentation: ug
---

# How to Find whether the DrawerPanel is Showing or Not?

This requirement is achieved by using its function named IsDrawerShowing.

Following code example demonstrates the same. 

{% tabs %}

{% highlight c# %}
//To Define if DrawerPanel is Showing or not

if(this.navigationDrawer1.IsDrawerShowing())

{

// Do necessary settings here

}

{% endhighlight %}

{% highlight vb %}

'To Define if DrawerPanel is Showing or not

If Me.navigationDrawer1.IsDrawerShowing() Then

'Do necessary settings here

End If

{% endhighlight %}

{% endtabs %}