---
layout: post
title: Automatic Control Sizing in Windows Forms MultiColumn TreeView control | Syncfusion
description: Learn about Automatic Control Sizing support in Syncfusion Windows Forms MultiSelectionComboBox control and more details.
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Automatic Control Sizing in Windows Forms MultiSelectionComboBox

## Vertical

The control size is increased with respect to its height upon adding Visual Item, from its dropdown list. 

![Overview_img340](Overview_images/Overview_img340.png) 


The following code sample illustrates you on how to set AutoSizeMode as Vertical.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.AutoSizeMode = AutoSizeModes.Vertical;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.AutoSizeMode = AutoSizeModes.Vertical 

{% endhighlight %}
{% endtabs %}

## Horizontal

The control size is increased with respect to its width upon adding Visual Item, from its dropdown list. 

![Overview_img341](Overview_images/Overview_img341.png) 


The following code sample illustrates you on how to set AutoSizeMode as Horizontal.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.AutoSizeMode = AutoSizeModes.Horizontal;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.AutoSizeMode = AutoSizeModes.Horizontal

{% endhighlight %}
{% endtabs %}

## None

The control size is only increased up to pre-defined size and once VisualItem size exceeds it, Scrollbar is displayed to navigate between its items.

![Overview_img342](Overview_images/Overview_img342.png)


The following code sample illustrates you on how to set AutoSizeMode as None.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.AutoSizeMode = AutoSizeMode.None;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.AutoSizeMode = AutoSizeMode.None

{% endhighlight %}
{% endtabs %}

