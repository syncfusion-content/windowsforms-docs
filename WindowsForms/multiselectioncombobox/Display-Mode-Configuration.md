---
layout: post
title: Display-Mode-Configuration | WindowsForms | Syncfusion
description: display mode configuration
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Display Mode Configuration

## Visual item

Each selected item from its drop down list is displayed like a tag with remove button in text area.

![](Overview_images/Overview_img337.png) 


The following code example illustrates you on how to set Display Mode as Visual Item.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.DisplayMode = DisplayMode.VisualItem;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.DisplayMode = DisplayMode.VisualItem

{% endhighlight %}
{% endtabs %}

## Delimiter mode

Selected items are displayed in text area each separated with delimiter character.

![](Overview_images/Overview_img338.png) 


The following code example illustrates you on how to set Display Mode as Delimiter Mode.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.DisplayMode = DisplayMode.DelimiterMode;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.DisplayMode = DisplayMode.DelimiterMode

{% endhighlight %}
{% endtabs %}

## Normal mode

At a time, only one value can be selected from the drop down list and displayed in text area.

![](Overview_images/Overview_img339.png) 

The following code sample illustrates you on how to set Display Mode as Normal Mode.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.DisplayMode = DisplayMode.NormalMode;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.DisplayMode = DisplayMode.NormalMode

{% endhighlight %}
{% endtabs %}