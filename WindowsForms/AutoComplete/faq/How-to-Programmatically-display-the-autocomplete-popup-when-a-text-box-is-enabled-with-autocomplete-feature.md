---
layout: post
title: How to display the AutoComplete popup programmatically, when a textbox is enabled with AutoComplete feature | WindowsForms | Syncfusion
description: How to display the AutoComplete popup programmatically, when a textbox is enabled with AutoComplete feature
platform: WindowsForms
control: Tools
documentation: ug
---

# How to Display the AutoComplete Pop-Up Programmatically, when a TextBox is Enabled with AutoComplete Feature

You can show the AutoComplete popup programmatically using the following code.

{% tabs %}
{% highlight C# %}

this.autoComplete1.AutoCompletePopup.ParentControl = this.textBox1;
this.autoComplete1.AutoCompletePopup.ShowPopup(Point.Empty);

{% endhighlight %}

{% highlight vb %}

Me.autoComplete1.AutoCompletePopup.ParentControl = Me.textBox1
Me.autoComplete1.AutoCompletePopup.ShowPopup(Point.Empty)

{% endhighlight %}
{% endtabs %}
