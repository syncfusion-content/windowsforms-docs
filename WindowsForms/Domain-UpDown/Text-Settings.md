---
layout: post
title: Text Settings in Windows Forms Domain UpDown control | Syncfusion®
description: Learn about Text Settings support in Syncfusion® Windows Forms Domain UpDown (DomainUpdownExt) control and more details.
platform: windowsforms
control: DomainUpdownExt 
documentation: ug
---
# Text Settings in Windows Forms Domain UpDown (DomainUpdownExt)

The text for the DomainUpDownExt control can be specified in String Collection Editor. This section discusses the properties which deals with this text.

* [Items](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.domainupdown.items?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_DomainUpDown_Items)
* [TextAlign](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.updownbase.textalign?redirectedfrom=MSDN&view=netframework-4.7.2#System_Windows_Forms_UpDownBase_TextAlign)
* [MaxLength](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.DomainUpDownExt.html#Syncfusion_Windows_Forms_Tools_DomainUpDownExt_MaxLength)

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
