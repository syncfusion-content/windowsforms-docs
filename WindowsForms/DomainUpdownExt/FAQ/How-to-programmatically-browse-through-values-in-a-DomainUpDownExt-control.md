---
layout: post
title: How to programmatically browse through values in a DomainUpDownExt control | Windows Forms | Syncfusion
description: How to programmatically browse through values in a DomainUpDownExt control
platform: windowsforms
control: DomainUpdownExt 
documentation: ug
---
# How to programmatically browse through values in a DomainUpDownExt control

We can programmatically browse through the previous and the next values, of the current value, by calling UpButton() and DownButton() methods.



{% highlight c# %}

//Goes to the previous value.

this.domainUpDownExt1.UpButton();

//Goes to the Next value.

this.domainUpDownExt1.DownButton();
{% endhighlight  %}


{% highlight vbnet %}



'Goes to the previous value.

Me.domainUpDownExt1.UpButton()

'Goes to the Next value.

Me.domainUpDownExt1.DownButton()
{% endhighlight  %}