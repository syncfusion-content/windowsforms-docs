---
layout: post
title: Text Settings in Windows Forms DomainUpdownExt | Syncfusion®
description: Learn about text settings in Syncfusion Windows Forms DomainUpdownExt control, including Items collection, TextAlign, and MaxLength properties.
platform: windowsforms
control: DomainUpdownExt
documentation: ug
---

# Text Settings in WinForms DomainUpDownExt

The text for the WinForms DomainUpDownExt control can be specified in the String Collection Editor. This section discusses the properties that deal with this text.

* [Items](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.domainupdown.items?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_DomainUpDown_Items)
* [TextAlign](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.updownbase.textalign?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_UpDownBase_TextAlign)
* [MaxLength](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DomainUpDownExt.html#Syncfusion_Windows_Forms_Tools_DomainUpDownExt_MaxLength)

{% tabs %}
{% highlight c# %}

this.domainUpDownExt1.Items.Add("Six");
this.domainUpDownExt1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
this.domainUpDownExt1.MaxLength = 32767;

{% endhighlight %}

{% highlight vb %}

Me.domainUpDownExt1.Items.Add("Six")
Me.domainUpDownExt1.TextAlign = System.Windows.Forms.HorizontalAlignment.Right
Me.domainUpDownExt1.MaxLength = 32767

{% endhighlight %}
{% endtabs %}

![Text settings applied to the WinForms DomainUpDownExt control](DomainUpdownExt_images/Overview_img423.png) 
