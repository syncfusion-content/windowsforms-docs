---
layout: post
title: Selection Mode | WindowsForms | Syncfusion
description: Selection Mode
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Selection Mode

At run time, the items in the FontListBox can be selected, based on the selection mode specified in SelectionMode property. Selection can be made using mouse as well as using keyboard. 

The options are,

* one, 
* MultiSimple, and 
* MultiExtended.

{% tabs %}
{% highlight c# %}

this.fontListBox1.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended;

{% endhighlight %}

{% highlight vb %}

Me.fontListBox1.SelectionMode = System.Windows.Forms.SelectionMode.MultiExtended

{% endhighlight %}
{% endtabs %}

 ![](Overview_images/Overview_img579.jpeg) 