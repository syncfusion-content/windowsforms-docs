---
layout: post
title: Advanced-Features | WindowsForms | Syncfusion
description: advanced features
platform: WindowsForms
control: Editors Package
documentation: ug
---

# Advanced Features

## Auto Suggestion

### Begin

Enables to list out the most appropriate match for the current content of the MultiSelectionComboBox based on the initial letter.

The following code sample illustrates you on how to set AutoSuggestMode as Begin.

{% highlight c# %}

this.MultiSelectionComboBox1.AutoSuggestMode = AutoSuggestMode.Begin;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.AutoSuggestMode = AutoSuggestMode.Begin

{% endhighlight %}

### Match

Enables to list out all the possible matches for the current content of the MultiSelectionComboBox.

The following code sample illustrates you on how to set AutoSuggestMode as Match.

{% highlight c# %}

this.MultiSelectionComboBox1.AutoSuggestMode = AutoSuggestMode.Match;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.AutoSuggestMode = AutoSuggestMode.Match

{% endhighlight %}

### Disabled

Disable the AutoComplete functionality of MultiSelectionComboBox by setting AutoSuggestMode as disabled.

The following code sample illustrates you on how to set AutoSuggestMode as Disabled.

{% highlight c# %}

this.MultiSelectionComboBox1.AutoCompleteMatchMode = AutoCompleteMatchMode.Disabled;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.AutoCompleteMatchMode = AutoCompleteMatchMode.Disabled

{% endhighlight %}

## Grouping

MultiSelectionComboBox contains support to group its drop down items based on initial character. You can enable or disable this support using its ShowGroups property.

![](Overview_images/Overview_img343.png) 


The following code sample illustrates you on how to enable Grouping in MultiSelectionComboBox Dropdown.

{% highlight c# %}

this.MultiSelectionComboBox1.ShowGroups = true;

{% endhighlight %}

{% highlight vbnet %}

Me.MultiSelectionComboBox1.ShowGroups = True

{% endhighlight %}