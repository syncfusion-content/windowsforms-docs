---
layout: post
title: How to Display the AutoComplete Popup Programmatically in Windows Forms AutoComplete | Syncfusion®
description: Display the AutoComplete popup programmatically in Syncfusion® Windows Forms AutoComplete control using built-in popup APIs and more.
platform: WindowsForms
control: Tools
documentation: ug
---

# How to Display the AutoComplete Popup Programmatically in Windows Forms AutoComplete

[AutoComplete popup](https://help.syncfusion.com/windowsforms/autocomplete/autocomplete-popup) can be displayed programmatically.

The following code demonstrates the same.

{% tabs %}

{% highlight C# %}

this.autoComplete1.AutoCompletePopup.ParentControl = this.textBox1;

this.autoComplete1.AutoCompletePopup.ShowPopup(Point.Empty);

{% endhighlight %}

{% highlight VB %}

Me.autoComplete1.AutoCompletePopup.ParentControl = Me.textBox1

Me.autoComplete1.AutoCompletePopup.ShowPopup(Point.Empty)

{% endhighlight %}

{% endtabs %}

![AutoComplete popup programmatically](FAQ_images/Faq_img1.jpg) 