---
layout: post
title: Path Support
description: Path Support
platform: windowsforms
control: Carousel
documentation: ug
---


# Path Support 

The Carousel control supports arranging items in the following paths:

* Default (elliptical)
* Orbital
* Oval
* Linear

## Default 


Items will be arranged in a normal elliptical path.
{% highlight C# %}



this.carousel1.CarouselPath = CarouselPath.Default;

{% endhighlight %}


{% highlight vbnet %}


Me.carousel1.CarouselPath = CarouselPath.Default
{% endhighlight %}

## Orbital

Items will be arranged like an orbital curve.
{% highlight C# %}


this.carousel1.CarouselPath = CarouselPath.Orbital;
{% endhighlight %}

{% highlight vbnet %}


Me.carousel1.CarouselPath = CarouselPath.Orbital
{% endhighlight %}
## Oval

Items will be arranged in an oval structure.
{% highlight C# %}


this.carousel1.CarouselPath = CarouselPath.Oval;

{% endhighlight %}
{% highlight vbnet %}


Me.carousel1.CarouselPath = CarouselPath.Oval
{% endhighlight %}
## Linear

Items will be arranged in a linear structure.
{% highlight C# %}


this.carousel1.CarouselPath = CarouselPath.Linear;
{% endhighlight %}

{% highlight vbnet %}


Me.carousel1.CarouselPath = CarouselPath.Linear
{% endhighlight %}


