---
layout: post
title: How to programmatically browse through values in a DomainUpDownExt control | WindowsForms | Syncfusion
description: How to programmatically browse through values in a DomainUpDownExt control
platform: WindowsForms
control: DomainUpdownExt 
documentation: ug
---
# How to Programmatically Browse through Values in a DomainUpDownExt Control

We can programmatically browse through the previous and the next values, of the current value, by calling UpButton() and DownButton() methods.

{% tabs %}
{% highlight c# %}

//Goes to the previous value.
this.domainUpDownExt1.UpButton();

//Goes to the Next value.
this.domainUpDownExt1.DownButton();

{% endhighlight  %}

{% highlight vb %}

'Goes to the previous value.
Me.domainUpDownExt1.UpButton()

'Goes to the Next value.
Me.domainUpDownExt1.DownButton()

{% endhighlight  %}
{% endtabs %}