---
layout: post
title: Serialization-Support | WindowsForms | Syncfusion
description: serialization support
platform: WindowsForms
control: RibbonControlAdv 
documentation: ug
---

# Serialization Support

RibbonControlAdv comes with serialization support. Using this we can restore the saved state of the ribbon control.

## States which get serialized

*	The items in the QuickAccessToolBar that are added through the “Customize Quick Access ToolBar” can be persisted.
*	Items added through the context menu that appears while clicking the dropdown arrow to the right of the QuickAccessToolBar can be persisted.
*	The collapsed / expanded / floating state of the RibbonPanel can be persisted.
*	The position of the QuickAccessToolBar, either below or above the ribbon panel can be persisted.

## Save state

To save the state of ribbon control, use the below code

{% tabs %}

{% highlight c# %}

//Saves the current state in a Isolated storage
this.ribbonControlAdv1.SaveState();

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.SaveState()

{% endhighlight %}

{% endtabs %}

## Load State

To load the saved ribbon state, use the below code

{% tabs %}

{% highlight c# %}

//Loads the serialized state from the Isolated storage
this.ribbonControlAdv1.LoadState();

{% endhighlight %}

{% highlight vb %}

Me.ribbonControlAdv1.LoadState()

{% endhighlight %}

{% endtabs %}
