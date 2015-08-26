---
layout: post
title: How to Programmatically display the autocomplete popup when a text box is enabled with autocomplete feature
description: How to Programmatically display the autocomplete popup when a text box is enabled with autocomplete feature
platform: WindowsForms
control: Tools
documentation: ug
---


# How to Programmatically display the autocomplete popup when a text box is enabled with autocomplete feature?

You can show the autocomplete popup programmatically using the following code.


{% highlight C# %}



this.autoComplete1.AutoCompletePopup.ParentControl = this.textBox1;

this.autoComplete1.AutoCompletePopup.ShowPopup(Point.Empty);

{% endhighlight %}


{% highlight vbnet %}




Me.autoComplete1.AutoCompletePopup.ParentControl = Me.textBox1

Me.autoComplete1.AutoCompletePopup.ShowPopup(Point.Empty)
{% endhighlight %}