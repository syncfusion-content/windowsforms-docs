---
layout: post
title: How to Browse Values in Windows Forms DomainUpdownExt | Syncfusion®
description: Learn how to programmatically browse previous and next values in the Syncfusion Windows Forms DomainUpDownExt control using navigation methods.
platform: windowsforms
control: DomainUpdownExt
documentation: ug
---

# How to Browse Values in WinForms DomainUpDownExt

You can programmatically browse through the previous and next values of the current value by calling the [UpButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DomainUpDownExt.html#Syncfusion_Windows_Forms_Tools_DomainUpDownExt_UpButton) and [DownButton](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DomainUpDownExt.html#Syncfusion_Windows_Forms_Tools_DomainUpDownExt_DownButton) methods.

{% tabs %}
{% highlight c# %}

//Goes to the previous value.
this.domainUpDownExt1.UpButton();

//Goes to the Next value.
this.domainUpDownExt1.DownButton();

{% endhighlight %}

{% highlight vb %}

'Goes to the previous value.
Me.domainUpDownExt1.UpButton()

'Goes to the Next value.
Me.domainUpDownExt1.DownButton()

{% endhighlight %}
{% endtabs %}
