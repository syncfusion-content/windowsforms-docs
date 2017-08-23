---
layout: post
title: Floating-Window | WindowsForms | Syncfusion
description: floating window
platform: WindowsForms
control: DockingManager 
documentation: ug
---

# Floating Window

The `FloatControl` method enables the end users to float a particular control. Using this method, we can float a single control even if it is tabbed with many controls.

{% tabs %}

{% highlight C# %}

//To set ListBox state as floating at the desired location.

Rectangle rectangle = this.Bounds;

this.dockingManager.FloatControl(this.listBox1, new Rectangle(rectangle.Right+25,rectangle.Bottom-150,175,200));

{% endhighlight %}


{% highlight VB %}

'To set ListBox state as floating at the desired location.

Dim rectangle As Rectangle = Me.Bounds 

Me.dockingManager.FloatControl(Me.listBox1, New Rectangle(rectangle.Right+25,rectangle.Bottom-150,175,200))

{% endhighlight %}

{% endtabs %}


![](Images/FloatingWindow_img1.jpeg)


## Enabling or Disabling the Float Functionality 

The `DisallowFloating` property helps to enable or disable the floating functionality. By default its value is True, to disable this functionality turn its value to False.

{% tabs %}

{% highlight C# %}

//To enable Floating functionality 

this.dockingManager1.DisallowFloating = true;

{% endhighlight %}


{% highlight VB %}

'To enable Floating functionality 

Me.dockingManager1.DisallowFloating = true

{% endhighlight %}

{% endtabs %}


## Enabling or Disabling the Float Functionality Operation on Double Click

The float window changes to its Dock state when double clicking on its caption by default. To disable this functionality, set `EnableDoubleClickOnCaption` property as false.

{% tabs %}

{% highlight C# %}

//To disable the Redocking the floating window on caption double click.
 
this.dockingManager1.EnableDoubleClickOnCaption = false;

{% endhighlight %}


{% highlight VB %}

'To disable the Redocking the floating window on caption double click.
 
Me.dockingManager1.EnableDoubleClickOnCaption = false

{% endhighlight %}

{% endtabs %}


## Positioning on Desire Location

The FloatWindow can be placed at any desired location. To position the FloatWindow at the desired location with the required rectangle Bounds, call `FloatControl` method of the DockingManager.

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
