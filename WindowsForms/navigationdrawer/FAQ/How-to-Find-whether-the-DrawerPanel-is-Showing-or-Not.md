---
layout: post
title: How-to-Find-whether-the-DrawerPanel-is-Showing-or-Not | WindowsForms | Syncfusion
description: how-to-find-whether-the-drawerpanel-is-showing-or-not?
platform: WindowsForms
control: Frequently Asked Questions
documentation: ug
---

# How to find whether the DrawerPanel is showing or not?

This requirement is achieved by using its function named IsDrawerShowing.

{% tabs %}

{% highlight C# %}

//To Define if DrawerPanel is Showing or not

if(this.navigationDrawer1.IsDrawerShowing())

{

// Do necessary settings here

}

{% endhighlight %}

{% highlight VB %}

'To Define if DrawerPanel is Showing or not

If Me.navigationDrawer1.IsDrawerShowing() Then

'Do necessary settings here

End If

{% endhighlight %}

{% endtabs %}