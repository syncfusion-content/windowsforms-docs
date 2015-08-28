---
layout: post
title: How to change the text for already assigned banner text of a control?
description: How to change the text for already assigned banner text of a control?
platform: windowsforms
control: BannerTextProviderComponent
documentation: ug
---


# How to change the text for already assigned banner text of a control?

This is done using the below code. 

{% highlight C# %}

[C#]



BannerTextInfo info = bannerTextProvider1.GetBannerText(comboBoxAutoComplete1); // textbox is the control used for example

info.Text = "New Banner Text";
{% endhighlight %}


{% highlight vbnet %}
[VB.NET]



Dim info As BannerTextInfo = bannerTextProvider1.GetBannerText(comboBoxAutoComplete1) ' textbox is the control used for example



info.Text = "New Banner Text"
{% endhighlight %}

  



> Note: Make sure you clear the default value of the Text property of the controls before setting the banner text.
