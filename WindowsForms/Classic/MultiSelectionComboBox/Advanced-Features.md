---
layout: post
title: Advanced-Features | WindowsForms | Syncfusion
description: advanced features
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Advanced Features

## Auto suggestion

### Begin

Enables to list out the most appropriate match for the current content of the MultiSelectionComboBox based on the initial letter.

The following code sample illustrates you on how to set AutoSuggestMode as Begin.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.AutoSuggestMode = AutoSuggestMode.Begin;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.AutoSuggestMode = AutoSuggestMode.Begin

{% endhighlight %}
{% endtabs %}

### Match

Enables to list out all the possible matches for the current content of the MultiSelectionComboBox.

The following code sample illustrates you on how to set AutoSuggestMode as Match.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.AutoSuggestMode = AutoSuggestMode.Match;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.AutoSuggestMode = AutoSuggestMode.Match

{% endhighlight %}
{% endtabs %}

### Disabled

Disable the AutoComplete functionality of MultiSelectionComboBox by setting AutoSuggestMode as disabled.

The following code sample illustrates you on how to set AutoSuggestMode as Disabled.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.AutoCompleteMatchMode = AutoCompleteMatchMode.Disabled;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.AutoCompleteMatchMode = AutoCompleteMatchMode.Disabled

{% endhighlight %}
{% endtabs %}

## Grouping

MultiSelectionComboBox contains support to group its drop down items based on initial character. You can enable or disable this support using its ShowGroups property.

![](Overview_images/Overview_img343.png) 


The following code sample illustrates you on how to enable Grouping in MultiSelectionComboBox Dropdown.

{% tabs %}
{% highlight c# %}

this.MultiSelectionComboBox1.ShowGroups = true;

{% endhighlight %}

{% highlight vb %}

Me.MultiSelectionComboBox1.ShowGroups = True

{% endhighlight %}
{% endtabs %}
