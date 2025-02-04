---
layout: post
title: Programmatically browse through values | WindowsForms | Syncfusion®
description: How to programmatically browse through values in a DomainUpDownExt control
platform: windowsforms
control: DomainUpdownExt 
documentation: ug
---
# How to Programmatically Browse through Values in a DomainUpDownExt Control

We can programmatically browse through the previous and the next values, of the current value, by calling [UpButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DomainUpDownExt.html#Syncfusion_Windows_Forms_Tools_DomainUpDownExt_UpButton) and [DownButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DomainUpDownExt.html#Syncfusion_Windows_Forms_Tools_DomainUpDownExt_DownButton) methods.

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
