---
layout: post
title: How to delete the history items persisted by an AutoComplete control | WindowsForms | Syncfusion
description: How to delete the history items persisted by an AutoComplete control
platform: WindowsForms
control: Tools
documentation: ug
---



# How to delete the history items persisted by an AutoComplete control?

We can delete the history items persisted by an AutoCompleteControl by calling AutoComplete.ResetHistory() method.



{% highlight C# %}


this.autoComplete1.ResetHistory();



{% endhighlight %}

{% highlight vbnet %}

Me.autoComplete1.ResetHistory()
{% endhighlight %}