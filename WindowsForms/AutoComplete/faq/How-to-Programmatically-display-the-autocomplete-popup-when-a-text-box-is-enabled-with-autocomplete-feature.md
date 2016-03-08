---
layout: post
title: How to display the AutoComplete popup programmatically, when a textbox is enabled with AutoComplete feature | Windows Forms | Syncfusion
description: How to display the AutoComplete popup programmatically, when a textbox is enabled with AutoComplete feature
platform: windowsforms
control: Tools
documentation: ug
---


# How to display the AutoComplete popup programmatically, when a textbox is enabled with AutoComplete feature?

You can show the AutoComplete popup programmatically using the following code.


{% highlight C# %}



this.autoComplete1.AutoCompletePopup.ParentControl = this.textBox1;

this.autoComplete1.AutoCompletePopup.ShowPopup(Point.Empty);

{% endhighlight %}


{% highlight vbnet %}




Me.autoComplete1.AutoCompletePopup.ParentControl = Me.textBox1

Me.autoComplete1.AutoCompletePopup.ShowPopup(Point.Empty)
{% endhighlight %}