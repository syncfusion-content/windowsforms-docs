---
layout: post
title: AutoHideScrollBars
description: This section explains about the Scrollbars support in SfListView.
platform: windowsforms
control: SfListView
documentation: ug
---

# AutoHideScrollBars
SfListView allows to automatically show or hide horizontal and vertical scrollbars using the AutoHideScrollBars property. By default, AutoHideScrollBars will be set as true. This property manages scrollbar visibility based on content overflow. 

{% tabs %}
{% highlight c# %}
sfListView1.AutoHideScrollBars = True;
{% endhighlight %}
{% highlight vb %}
sfListView1.AutoHideScrollBars = True
{% endhighlight %}
{% endtabs %}
         
 ![](AutoHideScrollBars_images/AutoHideScrollBars_img1.png)       
                             
## Customizing the Visibility of ScrollBars
When AutoHideScrollBars is set to false, the horizontal and vertical scrollbar's visibility will depend on the HorizontalScrollbarVisible and VerticalScrollbarVisible properties.

{% tabs %}
{% highlight c# %}
sfListView1.AutoHideScrollBars = False;
sfListView1.HorizontalScrollBarVisible = True;
sfListview1.VerticalScrollBarVisible = True;
{% endhighlight %}
{% highlight vb %}
sfListView1.AutoHideScrollBars = False
sfListView1.HorizontalScrollBarVisible = True
sfListview1.VerticalScrollBarVisible = True
{% endhighlight %}
{% endtabs %}

![](AutoHideScrollBars_images/AutoHideScrollBars_img2.png)

