---
layout: post
title: Path Support in Windows Forms Carousel control | Syncfusion
description: Learn about Path Support support in Syncfusion Windows Forms Carousel control and more details.
platform: WindowsForms
control: Carousel
documentation: ug
---


# Path Support in Windows Forms Carousel

The Carousel control supports arranging items in the following paths:

* Default (elliptical)
* Orbital
* Oval
* Linear

## Default


Items will be arranged in a normal elliptical path.

{% tabs %}

{% highlight C# %}



this.carousel1.CarouselPath = CarouselPath.Default;

{% endhighlight %}


{% highlight VB %}


Me.carousel1.CarouselPath = CarouselPath.Default
{% endhighlight %}

{% endtabs %}

## Orbital

Items will be arranged like an orbital curve.

{% tabs %}

{% highlight C# %}


this.carousel1.CarouselPath = CarouselPath.Orbital;
{% endhighlight %}

{% highlight VB %}


Me.carousel1.CarouselPath = CarouselPath.Orbital
{% endhighlight %}

{% endtabs %}

## Oval

Items will be arranged in an oval structure.

{% tabs %}

{% highlight C# %}


this.carousel1.CarouselPath = CarouselPath.Oval;

{% endhighlight %}
{% highlight VB %}


Me.carousel1.CarouselPath = CarouselPath.Oval
{% endhighlight %}

{% endtabs %}

## Linear

Items will be arranged in a linear structure.

{% tabs %}

{% highlight C# %}


this.carousel1.CarouselPath = CarouselPath.Linear;
{% endhighlight %}

{% highlight VB %}


Me.carousel1.CarouselPath = CarouselPath.Linear
{% endhighlight %}

{% endtabs %}
