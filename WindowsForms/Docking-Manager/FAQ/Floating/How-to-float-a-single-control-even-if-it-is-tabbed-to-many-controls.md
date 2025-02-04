---
layout: post
title: How to float a single control even if it is tabbed to many controls | WindowsForms | Syncfusion®
description: How to float a single control even if it is tabbed to many controls
platform: windowsforms
control: DockingManager
documentation: ug
---



# How to float a single control even if it is tabbed to many controls?

The `FloatControl` method enables the end users to float a particular control. Using this method, we can float a single control even if it is tabbed with many controls.

{% tabs %}

{% highlight C# %}

//To display the ListBox control at the desired location.

Rectangle rectangle = this.Bounds;
 
this.dockingManager.FloatControl(this.listBox1, new Rectangle(rectangle.Right+25,rectangle.Bottom-150,175,200));

{% endhighlight %}


{% highlight VB %}

'To display the ListBox control at the desired location.

Dim rectangle As Rectangle = Me.Bounds 

Me.dockingManager.FloatControl(Me.listBox1, New Rectangle(rectangle.Right+25,rectangle.Bottom-150,175,200))

{% endhighlight %}

{% endtabs %}



