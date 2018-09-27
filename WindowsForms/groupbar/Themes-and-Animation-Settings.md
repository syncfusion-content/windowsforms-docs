---
layout: post
title: Themes and Animation Settings | WindowsForms | Syncfusion
description: Themes and Animation Settings
platform: WindowsForms
control: GroupBar
documentation: ug
---
# Themes and animation settings

Themes define the look and feel of the whole GroupBar. It also changes the behavior of the GroupBar completely. Themes can be enabled by setting the ThemesEnabled property of GroupBar to `true`.

{% tabs %}

{% highlight C# %}  

this.groupBar1.ThemesEnabled = true;

{% endhighlight %}


{% highlight VB %}

Me.groupBar1.ThemesEnabled = True

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img37.jpeg)

Themed look of Office 2007 Style GroupBar
{:.caption}

## Animation settings

Switching between the different GroupBar Items can be animated by setting the AnimatedSelection property to `true`.

{% tabs %}

{% highlight C# %}

this.groupBar1.AnimatedSelection = true;

 {% endhighlight %}

 
 
{% highlight VB %}

Me.groupBar1.AnimatedSelection = true

{% endhighlight %}

{% endtabs %}

![](Overview_images/Overview_img38.jpeg)
