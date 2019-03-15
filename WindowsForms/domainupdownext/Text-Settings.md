---
layout: post
title: Text Settings | WindowsForms | Syncfusion
description: text settings
platform: WindowsForms
control: DomainUpdownExt 
documentation: ug
---
# Text Settings

The text for the DomainUpDownExt control can be specified in String Collection Editor. This section discusses the properties which deals with this text.

* [Items](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.domainupdown.items?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_DomainUpDown_Items)
* [TextAlign](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.updownbase.textalign?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_UpDownBase_TextAlign)
* [MaxLength](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DomainUpDownExt~MaxLength.html)

{% tabs %}
{% highlight c# %}

this.domainUpDownExt2.Items.Add("Six");
this.domainUpDownExt1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
this.domainUpDownExt2.MaxLength = 32768;

{% endhighlight  %}

{% highlight vb %}

Me.domainUpDownExt2.Items.Add("Six")
Me.domainUpDownExt1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
Me.domainUpDownExt2.MaxLength = 32768

{% endhighlight %}
{% endtabs %}

![Text settings](DomainUpdownExt_images/Overview_img423.png) 
